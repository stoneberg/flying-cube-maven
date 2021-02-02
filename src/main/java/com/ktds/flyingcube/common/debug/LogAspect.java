package com.ktds.flyingcube.common.debug;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.apache.commons.lang3.StringUtils;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;


/**
 * LogAspect
 */
@Aspect
@Component
public class LogAspect {

    private static final Logger log = LoggerFactory.getLogger(LogAspect.class);

    /**
     * Stack overflow로 인해 로깅에서 제외되어야할 메서드 Argument 목록
     */
    private static final List<String> SKIP_ARGS = Collections.unmodifiableList(Arrays.asList(
            "HttpServletRequest",
            "HttpServletResponse",
            "RequestBodyWrapper",
            "ResponseBodyWrapper",
            "HeaderWriterRequest",
            "HeaderWriterResponse",
            "XssEscapeServletFilterWrapper",
            "ResourceUrlEncodingResponseWrapper",
            "ResourceUrlEncodingRequestWrapper"
    ));

    /**
     * InLogExclusion 선언 시 로깅에서 제외
     *
     * @param pjp
     * @return
     * @throws Throwable
     */
    @Around("execution(* com.ktds.flyingcube.*.*.controller.*.*(..))")
    public Object controllerLog(ProceedingJoinPoint pjp) throws Throwable {
        log.info("#################################################################################");
        log.info("@[LogAspect : Start] - {}/{}", pjp.getSignature().getDeclaringTypeName(), pjp.getSignature().getName());
        long startTime = System.currentTimeMillis();

        Object[] signatureArgs = pjp.getArgs();
        for (Object signatureArg : signatureArgs) {
            this.printJsonFormatParamLog(pjp, signatureArg);
        }

        Object result = pjp.proceed();
        long endTime = System.currentTimeMillis();
        log.info("@{} took {} seconds", pjp.getSignature().getName(), TimeUnit.MILLISECONDS.toSeconds(endTime - startTime));
        log.info("@[LogAspect : End] - {}/{}", pjp.getSignature().getDeclaringTypeName(), pjp.getSignature().getName());
        log.info("#################################################################################");
        return result;
    }

    /**
     * print controller, service method params in json format
     *
     * @param pjp, arg
     */
    public void printJsonFormatParamLog(ProceedingJoinPoint pjp, Object arg) {
        for (String skipArg : SKIP_ARGS) {
            if (arg.toString().contains(skipArg)) {
                return;
            }
        }
        Gson gson = new GsonBuilder().setPrettyPrinting().create();
        log.info("@EndPoint [{}]'s arguments \r\n=> {} ", pjp.getSignature().getName(),
                !StringUtils.isBlank(gson.toJson(arg)) ? gson.toJson(arg) : "Empty");
    }

    /**
     * success logging
     * OutLogInclusion 선언시 사용가능
     *
     * @param jp
     * @param result
     */
    @AfterReturning(value = "execution(* com.ktds.flyingcube.*.*.controller.*.*(..))", returning = "result")
    public void afterReturning(JoinPoint jp, Object result) {
        log.info("@EndPoint {}]'s result value \r\n=> {}", jp, result);
    }


}
