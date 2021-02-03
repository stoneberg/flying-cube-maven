package com.ktds.flyingcube.biz.application.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.time.LocalDateTime;

public class DeploymentRes {

    @Data
    public static class AllDto {
        private Integer id;
        private String deploymentName;
        private String namespace;
        private Integer replicas;
        private String triggerStg;
        private String updateStg;
        @JsonFormat(pattern = "yyyy-MM-dd")
        private LocalDateTime createdDt;
    }

    @Data
    public static class OneDto {
        private Integer id;
        private String deploymentName;
        private String namespace;
        private Integer replicas;
        private String triggerStg;
        private String updateStg;
        @JsonFormat(pattern = "yyyy-MM-dd")
        private LocalDateTime createdDt;
    }
}
