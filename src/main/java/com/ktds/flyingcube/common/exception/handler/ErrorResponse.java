package com.ktds.flyingcube.common.exception.handler;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class ErrorResponse {

	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private LocalDateTime timestamp;
	private Boolean success;
	private String message;
	private String code;
	private String path;
	@Builder.Default
	private List<FieldError> errors = new ArrayList<>();

	@Builder
	public ErrorResponse(LocalDateTime timestamp, Boolean success, String message, String code, String path, List<FieldError> errors) {
		this.timestamp = timestamp;
		this.success = success;
		this.message = message;
		this.code = code;
		this.path = path;
		this.errors = initErrors(errors);
	}

	private List<FieldError> initErrors(List<FieldError> errors) {
		return (errors == null) ? new ArrayList<>() : errors;
	}

	@Getter
	public static class FieldError {
		private String field;
		private String value;
		private String reason;

		@Builder
		public FieldError(String field, String value, String reason) {
			this.field = field;
			this.value = value;
			this.reason = reason;
		}
	}

}
