package com.ktds.flyingcube.biz.auth.dto;

import lombok.Data;

import java.util.List;

public class UserRes {

    @Data
    public static class UserDto {
        private String username;
        private String email;
        private String password;
        private List<String> roles;
    }
}
