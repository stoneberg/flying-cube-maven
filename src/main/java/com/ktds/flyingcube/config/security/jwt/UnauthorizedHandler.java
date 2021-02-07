package com.ktds.flyingcube.config.security.jwt;

import com.ktds.flyingcube.common.exception.GlobalExType;
import lombok.SneakyThrows;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.configurationprocessor.json.JSONObject;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Collections;

@Component
public class UnauthorizedHandler implements AuthenticationEntryPoint {

    private static final Logger log = LoggerFactory.getLogger(UnauthorizedHandler.class);

    @SneakyThrows
    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response, AuthenticationException authException) {
        log.error("Unauthenticated error: {}", authException.getMessage());
        String exception = (String)request.getAttribute("exception");
        log.info("log: exception: {} ", exception);
        response.setContentType("application/json; charset=UTF-8");
        response.setStatus(HttpStatus.UNAUTHORIZED.value());
        PrintWriter printout = response.getWriter();

        JSONObject JObject = new JSONObject();
        JObject.put("timestamp", LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
        JObject.put("success", false);

        if (StringUtils.equals(GlobalExType.INVALID_JWT.getCode(), exception)) {
            JObject.put("message", GlobalExType.INVALID_JWT.getMessage());
            JObject.put("code", GlobalExType.INVALID_JWT.getCode());
            JObject.put("errors", Collections.singletonList("user access token has expired!"));
        } else {
            JObject.put("message", GlobalExType.NOT_AUTHORIZED.getMessage());
            JObject.put("code", GlobalExType.NOT_AUTHORIZED.getCode());
            JObject.put("errors", Collections.singletonList(authException.getMessage()));
        }

        JObject.put("path", request.getRequestURL().toString());

        printout.write(JObject.toString());
    }

}
