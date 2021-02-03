package com.ktds.flyingcube.biz.application.mapper;

import com.ktds.flyingcube.biz.application.domain.Deployment;
import com.ktds.flyingcube.biz.application.dto.DeploymentRes.OneDto;
import com.ktds.flyingcube.config.MapStructMapperConfig;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.List;

@Mapper(config = MapStructMapperConfig.class)
public interface DeploymentMapper {
    OneDto toDto(Deployment deployment);
    List<OneDto> toDtoList(List<Deployment> deployments);
}
