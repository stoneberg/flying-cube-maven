package com.ktds.flyingcube.common.exception;

import lombok.Getter;

@Getter
public enum GlobalExType implements BaseExceptionType {
	UNKNOWN_EXCEPTION("GE0000", "알 수 없는 서버 오류가 발생하였습니다."),
	INPUT_VALUE_INVALID("GE0001", "입력 값이 올바르지 않습니다."),
	METHOD_NOT_ALLOWED("GE0002","메서드 요청형식(GET, POST, PUT, DELETE)이 정확하지 않습니다."),
	DATA_ACCESS_FAILED("GE0003", "데이터 조회 시 오류가 발생했습니다."),
	USER_NOT_FOUND("GE0004", "존재하지 않는 사용자입니다."),
	NOT_AUTHENTICATED("GE0005", "토큰이 만료되었거나 인증된 사용자가 아닙니다.");


	private final String code;
    private final String message;

    GlobalExType(String code, String message) {
        this.code = code;
        this.message = message;
    }
}
