package com.ktds.flyingcube.common.exception.handler;

import com.ktds.flyingcube.common.exception.ApplicationException;
import com.ktds.flyingcube.common.exception.BaseExceptionType;
import com.ktds.flyingcube.common.exception.GlobalExType;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.exception.ExceptionUtils;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.validation.BindException;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.method.annotation.MethodArgumentTypeMismatchException;

import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import java.time.LocalDateTime;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@RestControllerAdvice
public class CustomGlobalRestExceptionHandler {
	
	// I. Custom Exception ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒

	@ExceptionHandler(ApplicationException.class)
    public ResponseEntity<?> handleTransactionException(ApplicationException ex, WebRequest request) {
        log.error("▒▒▒▒▒▒▒▒ EXCEPTION ▒▒▒▒▒▒▒▒ {}", ExceptionUtils.getMessage(ex));
        log.error("▒▒▒▒▒▒▒▒ EXCEPTION ▒▒▒▒▒▒▒▒ {}", ExceptionUtils.getStackTrace(ex));
        return new ResponseEntity<>(buildError(Error.create(ex.getExceptionType()), request), HttpStatus.BAD_REQUEST);
    }
    
	
	// II. System Exception ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
	
    @ExceptionHandler(BadCredentialsException.class)
    protected ResponseEntity<?> handleBadCredentialsException(BadCredentialsException ex, WebRequest request) {
        log.error("▒▒▒▒▒▒▒▒ EXCEPTION ▒▒▒▒▒▒▒▒ {}", ExceptionUtils.getMessage(ex));
        log.error("▒▒▒▒▒▒▒▒ EXCEPTION ▒▒▒▒▒▒▒▒ {}", ExceptionUtils.getStackTrace(ex));
        return new ResponseEntity<>(buildError(GlobalExType.USER_NOT_FOUND, request), HttpStatus.UNAUTHORIZED);
    }

    @ExceptionHandler(MethodArgumentTypeMismatchException.class)
    protected ResponseEntity<?> handleMethodArgumentNotValidException(MethodArgumentNotValidException ex, WebRequest request) {
        log.error("▒▒▒▒▒▒▒▒ EXCEPTION ▒▒▒▒▒▒▒▒ {}", ExceptionUtils.getMessage(ex));
        log.error("▒▒▒▒▒▒▒▒ EXCEPTION ▒▒▒▒▒▒▒▒ {}", ExceptionUtils.getStackTrace(ex));
        return new ResponseEntity<>(buildError(GlobalExType.INPUT_VALUE_INVALID, request), HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler({BindException.class, MethodArgumentNotValidException.class, })
    protected ResponseEntity<?> handleBindException(BindException ex, WebRequest request) {
        log.error("▒▒▒▒▒▒▒▒ EXCEPTION ▒▒▒▒▒▒▒▒ {}", ExceptionUtils.getMessage(ex));
        log.error("▒▒▒▒▒▒▒▒ EXCEPTION ▒▒▒▒▒▒▒▒ {}", ExceptionUtils.getStackTrace(ex));
        final List<ErrorResponse.FieldError> fieldErrors = getFieldErrors(ex.getBindingResult());
        return new ResponseEntity<>(buildError(GlobalExType.INPUT_VALUE_INVALID, fieldErrors.get(0).getReason(), request), HttpStatus.BAD_REQUEST);
    }
    
    @ExceptionHandler(HttpRequestMethodNotSupportedException.class)
    protected ResponseEntity<?> handleHttpRequestMethodNotSupportedException(HttpRequestMethodNotSupportedException ex, WebRequest request) {
        log.error("▒▒▒▒▒▒▒▒ EXCEPTION ▒▒▒▒▒▒▒▒ {}", ExceptionUtils.getMessage(ex));
        log.error("▒▒▒▒▒▒▒▒ EXCEPTION ▒▒▒▒▒▒▒▒ {}", ExceptionUtils.getStackTrace(ex));
        return new ResponseEntity<>(buildError(GlobalExType.METHOD_NOT_ALLOWED, request), HttpStatus.BAD_REQUEST);
    }
    
    @ExceptionHandler({ConstraintViolationException.class, DataIntegrityViolationException.class})
    protected ResponseEntity<?> handleDataIntegrityViolationException(DataIntegrityViolationException ex, WebRequest request) {
        log.error("▒▒▒▒▒▒▒▒ EXCEPTION ▒▒▒▒▒▒▒▒ {}", ExceptionUtils.getMessage(ex));
        log.error("▒▒▒▒▒▒▒▒ EXCEPTION ▒▒▒▒▒▒▒▒ {}", ExceptionUtils.getStackTrace(ex));
        return new ResponseEntity<>(buildError(GlobalExType.DATA_ACCESS_FAILED, request), HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(Exception.class)
    protected ResponseEntity<?> handleAnyException(Exception ex, WebRequest request) {
        log.error("▒▒▒▒▒▒▒▒ EXCEPTION ▒▒▒▒▒▒▒▒ {}", ExceptionUtils.getMessage(ex));
        log.error("▒▒▒▒▒▒▒▒ EXCEPTION ▒▒▒▒▒▒▒▒ {}", ExceptionUtils.getStackTrace(ex));
        return new ResponseEntity<>(buildError(GlobalExType.UNKNOWN_EXCEPTION, request), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    private ErrorResponse buildError(Error error, WebRequest request) {
        return ErrorResponse.builder()
                .timestamp(LocalDateTime.now())
                .success(Boolean.FALSE)
                .code(error.getCode())
                .path(request.getDescription(false))
                .message(error.getMessage())
                .build();
    }
    
    private ErrorResponse buildError(BaseExceptionType errorCode, WebRequest request) {
        return ErrorResponse.builder()
                .timestamp(LocalDateTime.now())
                .success(Boolean.FALSE)
                .code(errorCode.getCode())
                .path(request.getDescription(false))
                .message(errorCode.getMessage())
                .build();
    }
    
    private ErrorResponse buildError(BaseExceptionType errorCode, String message, WebRequest request) {
        return ErrorResponse.builder()
                .timestamp(LocalDateTime.now())
                .success(Boolean.FALSE)
                .code(errorCode.getCode())
                .path(request.getDescription(false))
                .message(message)
                .build();
    }
    

    /**
     * find MethodArgumentNotValidException message
     *
     * @param bindingResult
     * @return
     */
    private List<ErrorResponse.FieldError> getFieldErrors(BindingResult bindingResult) {
        final List<FieldError> errors = bindingResult.getFieldErrors();
        if (!errors.isEmpty()) {
            return errors.parallelStream()
                    .map(error -> ErrorResponse.FieldError.builder()
                            .reason(error.getDefaultMessage())
                            .field(error.getField())
                            .value(error.getRejectedValue() != null ? error.getRejectedValue().toString() : StringUtils.EMPTY)
                            .build())
                    .collect(Collectors.toList());
        }
        return Collections.emptyList();
    }

    /**
     * find ConstraintViolationException message
     *
     * @param violationIterator
     * @return
     */
    protected String getResultMessage(final Iterator<ConstraintViolation<?>> violationIterator) {
        final StringBuilder resultMessageBuilder = new StringBuilder();
        while (violationIterator.hasNext()) {
            final ConstraintViolation<?> constraintViolation = violationIterator.next();
            resultMessageBuilder
                    .append("['")
                    .append(getPropertyName(constraintViolation.getPropertyPath().toString())) // 유효성 검사가 실패한 속성
                    .append("' is '")
                    .append(constraintViolation.getInvalidValue()) // 유효하지 않은 값
                    .append("'. ")
                    .append(constraintViolation.getMessage()) // 유효성 검사 실패 시 메시지
                    .append("]");

            if (violationIterator.hasNext()) {
                resultMessageBuilder.append(", ");
            }
        }

        return resultMessageBuilder.toString();
    }

    protected String getPropertyName(String propertyPath) {
        return propertyPath.substring(propertyPath.lastIndexOf('.') + 1); // 전체 속성 경로에서 속성 이름만 가져온다.
    }

    @Getter
    @NoArgsConstructor
    @AllArgsConstructor
    static class Error {
        private String message;
        private String code;

        static Error create(BaseExceptionType exception) {
            return new Error(exception.getMessage(), exception.getCode());
        }
    }
    
    
}
