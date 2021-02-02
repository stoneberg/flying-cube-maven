package com.ktds.flyingcube.biz.application.service;

import com.ktds.flyingcube.biz.application.domain.Deployment;
import com.ktds.flyingcube.biz.application.dto.DeploymentReq.DeploymentDto;
import com.ktds.flyingcube.biz.application.dto.DeploymentReq.FindDto;
import com.ktds.flyingcube.biz.application.dto.DeploymentRes.OneDto;
import com.ktds.flyingcube.biz.application.mapper.DeploymentMapper;
import com.ktds.flyingcube.biz.application.repository.DeploymentQueryRepository;
import com.ktds.flyingcube.biz.application.repository.DeploymentRepository;
import com.ktds.flyingcube.common.exception.ApplicationExType;
import com.ktds.flyingcube.common.exception.ApplicationException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import static com.ktds.flyingcube.biz.application.dto.DeploymentRes.AllDto;

@Slf4j
@Transactional(readOnly = true)
@RequiredArgsConstructor
@Service
public class DeploymentService {

    private final DeploymentRepository deploymentRepository;
    private final DeploymentQueryRepository deploymentQueryRepository;
    private final DeploymentMapper deploymentMapper;

    // save one
    @Transactional
    public OneDto createDeployment(DeploymentDto createDto) {
        final Deployment deployment = Deployment.createDeployment(createDto);
        deploymentRepository.save(deployment);
        return deploymentMapper.toDto(deployment);
    }

    // get all
    public Page<AllDto> findDeployments(FindDto findDto, Pageable pageable) {
        return deploymentQueryRepository.selectDeployments(findDto, pageable);
    }

    // get one
    public OneDto findDeployment(Integer deploymentId) {
        Deployment deployment = deploymentRepository.findById(deploymentId)
                .orElseThrow(() -> new ApplicationException(ApplicationExType.NOT_FOUND));
        return deploymentMapper.toDto(deployment);
    }

    // update one
    @Transactional
    public OneDto updateDeployment(Integer deploymentId, DeploymentDto updateDto) {
        Deployment deployment = deploymentRepository.findById(deploymentId)
                .orElseThrow(() -> new ApplicationException(ApplicationExType.NOT_FOUND));
        deployment.updateDeployment(updateDto);
        return deploymentMapper.toDto(deployment);
    }

    // delete one
    @Transactional
    public void deleteDeployment(Integer deploymentId) {
        Deployment deployment = deploymentRepository.findById(deploymentId)
                .orElseThrow(() -> new ApplicationException(ApplicationExType.NOT_FOUND));
        deploymentRepository.deleteById(deploymentId);
    }
}
