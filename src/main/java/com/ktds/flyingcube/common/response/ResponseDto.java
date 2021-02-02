package com.ktds.flyingcube.common.response;

import org.springframework.http.HttpStatus;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@EqualsAndHashCode(callSuper = false)
@AllArgsConstructor
@NoArgsConstructor
public class ResponseDto<T> extends BaseResponse {

	private T data;

	public static <T> ResponseDto<T> ok() {
		ResponseDto<T> response = new ResponseDto<>();
		response.setMessage("success");
		response.setStatus(HttpStatus.OK);
		return response;
	}

	public static <T> ResponseDto<T> of(T data) {
		ResponseDto<T> response = new ResponseDto<>();
		response.setData(data);
		response.setMessage("success");
		response.setStatus(HttpStatus.OK);
		return response;
	}

	public static <T> ResponseDto<T> of(T data, String message) {
		ResponseDto<T> response = new ResponseDto<>();
		response.setData(data);
		response.setMessage(message);
		response.setStatus(HttpStatus.OK);
		return response;
	}
	
}

