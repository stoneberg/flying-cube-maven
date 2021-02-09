package com.ktds.flyingcube.config.security.jwt;

import com.ktds.flyingcube.common.exception.GlobalExType;
import com.ktds.flyingcube.common.utils.JwtUtils;
import com.ktds.flyingcube.config.security.service.UserDetailsServiceImpl;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AuthTokenFilter extends OncePerRequestFilter {
    private final JwtUtils jwtUtils;
    private final UserDetailsServiceImpl userDetailsService;
    private static final Logger log = LoggerFactory.getLogger(AuthTokenFilter.class);

    public AuthTokenFilter(JwtUtils jwtUtils, UserDetailsServiceImpl userDetailsService) {
        this.jwtUtils = jwtUtils;
        this.userDetailsService = userDetailsService;
    }

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {

        try {
            String jwt = parseJwtFromHeader(request);
            log.info("@1jwt=======================>{}", jwt);

            if (jwt != null && !jwtUtils.validateJwt(jwt)) { // token exists but not valid
                log.info("@2jwt=======================>{}", jwt);
                request.setAttribute("exception", GlobalExType.INVALID_JWT.getCode());
                throw new IllegalAccessError(GlobalExType.INVALID_JWT.getMessage());
            }

            /**
             * jwt subject에 저장된 usename으로 DB 재조회
             * 만약 DB를 재조회 하지 않고 authentication을 만들려면
             * jwt 생성 시 payload(claim)안에 authentication 생성 시 필요 정보 추가 필요
             */
            if (jwt != null && jwtUtils.validateJwt(jwt)) {
                log.info("@3jwt=======================>{}", jwt);
                String username = jwtUtils.getUserNameFromJwt(jwt);
                log.info("@username=============>{}", username);
                UserDetails userDetails = userDetailsService.loadUserByUsername(username);
                UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(
                        userDetails, null, userDetails.getAuthorities());
                authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
                SecurityContextHolder.getContext().setAuthentication(authentication);
            }

        } catch (Exception e) {
            log.error(e.getMessage());
        }

        filterChain.doFilter(request, response);
    }

    // get token from request header
    private String parseJwtFromHeader(HttpServletRequest request) {
        String headerAuth = request.getHeader(JwtUtils.TOKEN_HEADER);
        if (StringUtils.isNotBlank(headerAuth) && headerAuth.startsWith(JwtUtils.TOKEN_TYPE + StringUtils.SPACE)) {
            String jwt = headerAuth.substring(7);
            if (StringUtils.equals(jwt, "null") || StringUtils.equals(jwt, "undefined")) {
                return null;
            } else {
                return jwt;
            }
        }
        return null;
    }
}
