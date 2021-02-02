package com.ktds.flyingcube.biz.auth.mapper;

import com.ktds.flyingcube.biz.auth.domain.User;
import com.ktds.flyingcube.biz.auth.dto.UserRes.UserDto;
import com.ktds.flyingcube.config.MapStructMapperConfig;
import org.mapstruct.Mapper;

@Mapper(config = MapStructMapperConfig.class)
public interface UserMapper {

    UserDto toDto(User user);

}
