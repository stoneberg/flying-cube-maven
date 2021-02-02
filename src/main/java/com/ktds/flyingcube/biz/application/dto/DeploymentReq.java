package com.ktds.flyingcube.biz.application.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;

public class DeploymentReq {

    @Data
    @JsonIgnoreProperties
    public static class FindDto {
        private String deploymentName;
//        @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
//        private LocalDateTime startDt; // 검색 시작일
//        @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
//        private LocalDateTime endDt; // 검색 종료일
    }

    @Data
    @JsonIgnoreProperties
    public static class DeploymentDto {
        private String deploymentName;
        private String namespace;
        private Integer replicas;
        private String triggerStg;
        private String updateStg;
    }

}
