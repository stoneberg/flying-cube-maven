package com.ktds.flyingcube.config.security.jwt;

import com.ktds.flyingcube.common.exception.GlobalExType;
import lombok.SneakyThrows;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.configurationprocessor.json.JSONObject;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Collections;

@Component
public class ForbiddenHandler implements AccessDeniedHandler {

    private static final Logger log = LoggerFactory.getLogger(ForbiddenHandler.class);

    @SneakyThrows
    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response, AccessDeniedException deniedException) {
        response.setContentType("application/json; charset=UTF-8");
        response.setStatus(HttpStatus.FORBIDDEN.value());
        PrintWriter printout = response.getWriter();

        JSONObject JObject = new JSONObject();
        JObject.put("timestamp", LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
        JObject.put("success", false);
        JObject.put("message", GlobalExType.FORBIDDEN_ACCESS.getMessage());
        JObject.put("code", GlobalExType.FORBIDDEN_ACCESS.getCode());
        JObject.put("errors", Collections.singletonList(deniedException.getMessage()));
        JObject.put("path", request.getRequestURL().toString());

        printout.write(JObject.toString());

    }

}
