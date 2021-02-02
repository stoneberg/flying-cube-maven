package com.ktds.flyingcube.biz.auth.service;

import com.ktds.flyingcube.biz.auth.domain.User;
import com.ktds.flyingcube.biz.auth.dto.UserRes.UserDto;
import com.ktds.flyingcube.biz.auth.mapper.UserMapper;
import com.ktds.flyingcube.biz.auth.repository.UserRepository;
import com.ktds.flyingcube.common.exception.ApplicationExType;
import com.ktds.flyingcube.common.exception.ApplicationException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@RequiredArgsConstructor
@Service
@Transactional(readOnly = true)
public class UserService {

    private final UserRepository userRepository;
    private final UserMapper userMapper;

    public UserDto findUserInfo(String username) {
        User user = userRepository.findByUsername(username)
                .orElseThrow(() -> new ApplicationException(ApplicationExType.USER_NOT_FOUND));

        List<String> roles = user.getRoles().stream()
                .map(role -> role.getName().name())
                .collect(Collectors.toList());

        final UserDto userDto = userMapper.toDto(user);
        userDto.setRoles(roles);

        return userDto;
    }

    public User findUser(String username) {
        return userRepository.findByUsername(username)
                .orElseThrow(() -> new ApplicationException(ApplicationExType.USER_NOT_FOUND));
    }


}
