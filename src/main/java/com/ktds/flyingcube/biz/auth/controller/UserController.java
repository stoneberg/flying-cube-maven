package com.ktds.flyingcube.biz.auth.controller;

import com.ktds.flyingcube.biz.auth.service.UserService;
import com.ktds.flyingcube.common.response.ResponseDto;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
@RequestMapping("/api/users")
public class UserController {

    private final UserService userService;

    @GetMapping("/{username}")
    public ResponseDto<?> one(@PathVariable("username") String username) {
        return ResponseDto.of(userService.findUserInfo(username));
    }

}
