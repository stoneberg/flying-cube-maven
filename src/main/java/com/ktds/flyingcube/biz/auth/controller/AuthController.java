package com.ktds.flyingcube.biz.auth.controller;

import com.ktds.flyingcube.biz.auth.dto.AuthReq.LoginDto;
import com.ktds.flyingcube.biz.auth.dto.AuthReq.TokenDto;
import com.ktds.flyingcube.common.exception.ApplicationExType;
import com.ktds.flyingcube.common.exception.ApplicationException;
import com.ktds.flyingcube.common.response.JwtResponse;
import com.ktds.flyingcube.common.utils.JwtUtils;
import com.ktds.flyingcube.common.utils.RedisUtils;
import com.ktds.flyingcube.config.security.service.UserDetailsImpl;
import com.ktds.flyingcube.config.security.service.UserDetailsServiceImpl;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/api/auth")
public class AuthController {
    private final AuthenticationManager authenticationManager;
    private final UserDetailsServiceImpl userDetailsService;
    private final JwtUtils jwtUtils;
    private final RedisUtils redisUtils;

    @Value("${fc2.jwt.expirationDateInMs}")
    public Long jwtExpirationInMs;

    @Value("${fc2.jwt.refreshExpirationDateInMs}")
    public Long refreshExpirationDateInMs;

    @PostMapping("/signin")
    public ResponseEntity<?> signin(@Valid @RequestBody LoginDto loginDto) {
        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(loginDto.getUsername(), loginDto.getPassword()));
        // set userinfo
        SecurityContextHolder.getContext().setAuthentication(authentication);
        UserDetailsImpl userDetails = (UserDetailsImpl) authentication.getPrincipal();
        String accessToken = jwtUtils.generateJwt(userDetails);
        String refreshToken = jwtUtils.generateRefreshJwt(userDetails);
        // set refresh token to redis
        redisUtils.setDataExpire(refreshToken, userDetails.getUsername(), refreshExpirationDateInMs);

        JwtResponse jwtResponse = JwtResponse.builder()
                .type(JwtUtils.TOKEN_TYPE)
                .accessToken(accessToken)
                .refreshToken(refreshToken)
                .user(userDetails)
                .build();

        return ResponseEntity.ok(jwtResponse);
    }

    @PostMapping("/refresh")
    public ResponseEntity<?> refresh(@Valid @RequestBody TokenDto tokenDto) {
        log.info("|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||");
        JwtResponse jwtResponse = new JwtResponse();
        String refreshToken = tokenDto.getRefreshToken();
        // check refresh token is valid
        final boolean isValidJwt = jwtUtils.validateJwt(refreshToken);
        log.info("@isValidJwt========>{}", isValidJwt);

        if (!isValidJwt) {
            throw new ApplicationException(ApplicationExType.INVALID_REFRESH_JWT, HttpStatus.UNAUTHORIZED);
        }

        // get username from redis
        final String username = redisUtils.getData(refreshToken);
        log.info("@username==========>{}", username);
        final UserDetailsImpl userDetails = userDetailsService.loadUserByUsername(username);
        log.info("@userDetails by refresh token==========>{}", userDetails);
        String newAccessToken = jwtUtils.generateJwt(userDetails);
        String newRefreshToken = jwtUtils.generateRefreshJwt(userDetails);
        // delete old refresh token on redis
        redisUtils.deleteData(refreshToken);
        // set new refresh token
        redisUtils.setDataExpire(newRefreshToken, userDetails.getUsername(), refreshExpirationDateInMs);
        jwtResponse.setAccessToken(newAccessToken);
        jwtResponse.setRefreshToken(newRefreshToken);

        log.info("@jwtResponse.newAccessToken======>{}", newAccessToken);
        log.info("@jwtResponse.newRefreshToken=====>{}", newRefreshToken);
        log.info("@jwtResponse.jwtResponse=========>{}", jwtResponse);
        return ResponseEntity.ok(jwtResponse);
    }

}
