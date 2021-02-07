package com.ktds.flyingcube.common.utils;

import com.ktds.flyingcube.config.security.service.UserDetailsImpl;
import io.jsonwebtoken.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Component;

import java.util.*;

@Component
public class JwtUtils {
    private static final Logger log = LoggerFactory.getLogger(JwtUtils.class);
    public static final String TOKEN_HEADER = "Authorization";
    public static final String TOKEN_TYPE = "Bearer";

    private String secretKey;
    private Long expirationDateInMs;
    private Long refreshExpirationDateInMs;

    @Value("${fc2.jwt.secretKey}")
    public void setSecretKey(String secretKey) {
        this.secretKey = secretKey;
    }

    @Value("${fc2.jwt.expirationDateInMs}")
    public void setJwtExpirationInMs(Long expirationDateInMs) {
        this.expirationDateInMs = expirationDateInMs;
    }

    @Value("${fc2.jwt.refreshExpirationDateInMs}")
    public void setRefreshExpirationDateInMs(Long refreshExpirationDateInMs) {
        this.refreshExpirationDateInMs = refreshExpirationDateInMs;
    }

    public String generateJwt(UserDetailsImpl userDetails) {
        Map<String, Object> claims = new HashMap<>();

        List<String> roles = new ArrayList<>();
        for (GrantedAuthority auth : userDetails.getAuthorities()) {
            roles.add(auth.getAuthority());
        }
        claims.put("roles", roles);

        return Jwts.builder()
                .setClaims(claims)
                .setSubject(userDetails.getUsername()) // save username in subject
                .setIssuedAt(new Date(System.currentTimeMillis()))
                .setExpiration(new Date(System.currentTimeMillis() + expirationDateInMs))
                .signWith(SignatureAlgorithm.HS512, secretKey)
                .compact();
    }

    public String generateRefreshJwt(UserDetailsImpl userDetails) {
        return Jwts.builder()
                .setSubject(userDetails.getUsername())
                .setIssuedAt(new Date(System.currentTimeMillis()))
                .setExpiration(new Date(System.currentTimeMillis() + refreshExpirationDateInMs))
                .signWith(SignatureAlgorithm.HS512, secretKey)
                .compact();

    }

    // fetch username(userid) stored in token subject
    public String getUserNameFromJwt(String token) {
        return Jwts.parser().setSigningKey(secretKey).parseClaimsJws(token).getBody().getSubject();
    }

    // Jwt 토큰의 유효성 + 만료일자 확인
    public boolean validateJwt(String jwtToken) {
        try {
            Jws<Claims> claims = Jwts.parser().setSigningKey(secretKey).parseClaimsJws(jwtToken);
            return !claims.getBody().getExpiration().before(new Date());
        } catch (SignatureException e) {
            log.error("Invalid JWT signature: {}", e.getMessage());
        } catch (MalformedJwtException e) {
            log.error("Invalid JWT token: {}", e.getMessage());
        } catch (ExpiredJwtException e) {
            log.error("JWT token is expired: {}", e.getMessage());
        } catch (UnsupportedJwtException e) {
            log.error("JWT token is unsupported: {}", e.getMessage());
        } catch (IllegalArgumentException e) {
            log.error("JWT claims string is empty: {}", e.getMessage());
        }

        return false;
    }
}
