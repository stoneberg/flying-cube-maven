package com.ktds.flyingcube.common.exception;

import lombok.Getter;

@Getter
public enum GlobalExType implements BaseExceptionType {
	UNKNOWN_EXCEPTION("UNKNOWN_EXCEPTION", "알 수 없는 서버 오류가 발생하였습니다."),
	INPUT_VALUE_INVALID("INPUT_VALUE_INVALID", "입력 값이 올바르지 않습니다."),
	METHOD_NOT_ALLOWED("METHOD_NOT_ALLOWED","메서드 요청형식(GET, POST, PUT, DELETE)이 정확하지 않습니다."),
	DATA_ACCESS_FAILED("DATA_ACCESS_FAILED", "데이터 조회 시 오류가 발생했습니다."),
	USER_NOT_FOUND("USER_NOT_FOUND", "존재하지 않는 사용자입니다."),
	NOT_AUTHORIZED("NOT_AUTHORIZED", "인증된 사용자가 아닙니다."),
	FORBIDDEN_ACCESS("FORBIDDEN_ACCESS", "해당 자원에 대한 접근 권한이 없습니다."),
	INVALID_JWT("INVALID_JWT", "토큰이 유효하지 않거나 기간이 만료된 토큰입니다.");

	private final String code;
    private final String message;

    GlobalExType(String code, String message) {
        this.code = code;
        this.message = message;
    }
}
