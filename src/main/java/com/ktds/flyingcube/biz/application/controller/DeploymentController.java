package com.ktds.flyingcube.biz.application.controller;

import com.ktds.flyingcube.biz.application.domain.Deployment;
import com.ktds.flyingcube.biz.application.dto.DeploymentReq;
import com.ktds.flyingcube.biz.application.dto.DeploymentReq.DeploymentDto;
import com.ktds.flyingcube.biz.application.dto.DeploymentReq.FindDto;
import com.ktds.flyingcube.biz.application.dto.DeploymentRes;
import com.ktds.flyingcube.biz.application.service.DeploymentService;
import com.ktds.flyingcube.common.response.ResponseDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/api/application")
public class DeploymentController {

    private final DeploymentService deploymentService;

    @PostMapping("/deployments")
    public ResponseDto<?> one(@RequestBody final DeploymentDto createDto) {
        return ResponseDto.of(deploymentService.createDeployment(createDto));
    }

    @GetMapping("/deployments")
    public ResponseDto<?> all(final FindDto findDto, Pageable pageable) {
        Page<DeploymentRes.AllDto> page = deploymentService.findDeployments(findDto, pageable);
        return ResponseDto.of(page);
    }

    @GetMapping("/deployments/{deploymentId}")
    public ResponseDto<?> one(@PathVariable("deploymentId") final Integer deploymentId) {
        return ResponseDto.of(deploymentService.findDeployment(deploymentId));
    }

    @PutMapping("/deployments/{deploymentId}")
    public ResponseDto<?> one(@PathVariable("deploymentId") final Integer deploymentId, @RequestBody final DeploymentDto updateDto) {
        return ResponseDto.of(deploymentService.updateDeployment(deploymentId, updateDto));
    }

    @DeleteMapping("/deployments/{deploymentId}")
    public ResponseDto<?> delete(@PathVariable("deploymentId") final Integer deploymentId) {
        deploymentService.deleteDeployment(deploymentId);
        return ResponseDto.ok();
    }

}
