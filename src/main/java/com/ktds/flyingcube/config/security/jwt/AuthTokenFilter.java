package com.ktds.flyingcube.config.security.jwt;

import com.ktds.flyingcube.common.utils.JwtUtils;
import com.ktds.flyingcube.config.security.service.UserDetailsServiceImpl;
import io.jsonwebtoken.ExpiredJwtException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.util.StringUtils;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AuthTokenFilter extends OncePerRequestFilter {
	private static final String JWT_HEADER = "Authorization";
	private static final String JWT_PREFIX = "Bearer ";
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

			if (jwt != null && jwtUtils.validateJwt(jwt)) {
				String username = jwtUtils.getUserNameFromJwt(jwt);
				UserDetails userDetails = userDetailsService.loadUserByUsername(username);
				// jwt subject에 저장된 usename으로 DB 재조회
				// 만약 DB를 재조회 하지 않고 authentication을 만들려면 jwt안에 authentication 생성 필요한 모든 정보를 넣어주면 된다.
				UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(
						userDetails, null, userDetails.getAuthorities());
				authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));

				SecurityContextHolder.getContext().setAuthentication(authentication);
			}
		} catch (ExpiredJwtException e) {
			log.info("◆Token has expired!=================>{}", e.getMessage());
			// ############ refresh token #############
		}

		filterChain.doFilter(request, response);
	}

	// get token from request header
	private String parseJwtFromHeader(HttpServletRequest request) {
		String headerAuth = request.getHeader(JWT_HEADER);
		if (StringUtils.hasText(headerAuth) && headerAuth.startsWith(JWT_PREFIX)) {
			return headerAuth.substring(7);
		}
		return null;
	}
}
