package com.ktds.flyingcube.common.response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class JwtResponse {
	private String accessToken;
	private String refreshToken;
	private String type;
	private Integer id;
	private String username;
	private String email;
	private List<String> roles;

	public JwtResponse(String accessToken, String refreshToken) {
		this.accessToken = accessToken;
		this.refreshToken = refreshToken;
	}
}
