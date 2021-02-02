package com.ktds.flyingcube.common.exception;

import lombok.Getter;

import java.io.Serializable;

public class ApplicationException extends RuntimeException implements Serializable {
	private static final long serialVersionUID = 4698980797856410517L;

	@Getter
	private final BaseExceptionType exceptionType;

	public ApplicationException(BaseExceptionType exceptionType) {
		super(exceptionType.getMessage());
		this.exceptionType = exceptionType;
	}
}
