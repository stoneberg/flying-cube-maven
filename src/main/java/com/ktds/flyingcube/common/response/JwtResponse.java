package com.ktds.flyingcube.common.response;

import com.ktds.flyingcube.config.security.service.UserDetailsImpl;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class JwtResponse {
	private String accessToken;
	private String refreshToken;
	private String type;
	private UserDetailsImpl user;

	public JwtResponse(String accessToken, String refreshToken, UserDetailsImpl user) {
		this.accessToken = accessToken;
		this.refreshToken = refreshToken;
		this.user = user;
	}
}
