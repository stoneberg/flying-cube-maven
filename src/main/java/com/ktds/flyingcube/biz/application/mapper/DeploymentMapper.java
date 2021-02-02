package com.ktds.flyingcube.biz.application.mapper;

import com.ktds.flyingcube.biz.application.domain.Deployment;
import com.ktds.flyingcube.biz.application.dto.DeploymentRes.OneDto;
import com.ktds.flyingcube.config.MapStructMapperConfig;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(config = MapStructMapperConfig.class)
public interface DeploymentMapper {

    OneDto toDto(Deployment deployment);

}
