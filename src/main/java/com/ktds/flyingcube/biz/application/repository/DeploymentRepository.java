package com.ktds.flyingcube.biz.application.repository;

import com.ktds.flyingcube.biz.application.domain.Deployment;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DeploymentRepository extends JpaRepository<Deployment, Integer> {
    List<Deployment> findByDeploymentName(String deploymentName);
}
