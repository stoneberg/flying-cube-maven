package com.ktds.flyingcube.common.exception;

import lombok.Getter;

@Getter
public enum TransactionExType implements BaseExceptionType {
    PAYMENT_FAIL("TE0001", "비용 지급 처리가 실패되었습니다.");

	private final String code;
    private final String message;

    TransactionExType(String code, String message) {
        this.code = code;
        this.message = message;
    }
}
