package com.ktds.flyingcube.common.exception;

import lombok.Getter;

@Getter
public enum ApplicationExType implements BaseExceptionType {
    BAD_REQUEST("BAD_REQUEST", "요청이 잘못되었습니다."),
    RESOURCE_NOT_FOUND("RESOURCE_NOT_FOUND", "요청하신 자원이 존재하지 않습니다."),
    USER_NOT_FOUND("USER_NOT_FOUND", "존재하지 않는 사용자입니다.");

	private final String code;
    private final String message;

    ApplicationExType(String code, String message) {
        this.code = code;
        this.message = message;
    }
}
