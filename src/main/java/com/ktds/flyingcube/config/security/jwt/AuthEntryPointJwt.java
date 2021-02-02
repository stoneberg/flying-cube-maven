package com.ktds.flyingcube.config.security.jwt;

import com.ktds.flyingcube.common.exception.GlobalExType;
import lombok.SneakyThrows;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.configurationprocessor.json.JSONObject;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;

@Component
public class AuthEntryPointJwt implements AuthenticationEntryPoint {

    private static final Logger logger = LoggerFactory.getLogger(AuthEntryPointJwt.class);

    @SneakyThrows
    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response,
                         AuthenticationException authException) throws IOException, ServletException {
        logger.error("Unauthorized error: {}", authException.getMessage());
        response.setContentType("application/json; charset=UTF-8");
        PrintWriter printout = response.getWriter();

        JSONObject JObject = new JSONObject();
        JObject.put("timestamp", LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
        JObject.put("success", false);
        JObject.put("message", GlobalExType.NOT_AUTHENTICATED.getMessage());
        JObject.put("code", GlobalExType.NOT_AUTHENTICATED.getCode());
        JObject.put("path", request.getRequestURL().toString());
        JObject.put("errors", Arrays.asList(authException.getMessage()));

        printout.write(JObject.toString());
    }

}
