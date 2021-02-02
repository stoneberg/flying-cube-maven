package com.ktds.flyingcube.common.exception;

import lombok.Getter;

@Getter
public enum ApplicationExType implements BaseExceptionType {
    BAD_REQUEST("AE0001", "요청이 잘못되었습니다."),
    NOT_FOUND("AE0002", "요청하신 자원이 존재하지 않습니다."),
    USER_NOT_FOUND("AE0003", "존재하지 않는 사용자입니다."),
    INVALID_TOKEN("AE0004", "토큰이 유효하지 않습니다.");

	private final String code;
    private final String message;

    ApplicationExType(String code, String message) {
        this.code = code;
        this.message = message;
    }
}
