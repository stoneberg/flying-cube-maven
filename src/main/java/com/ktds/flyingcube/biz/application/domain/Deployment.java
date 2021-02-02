package com.ktds.flyingcube.biz.application.domain;


import com.ktds.flyingcube.biz.application.dto.DeploymentReq.DeploymentDto;
import com.ktds.flyingcube.common.jpa.AuditorBaseEntity;
import lombok.*;
import lombok.extern.slf4j.Slf4j;

import javax.persistence.*;

@Slf4j
@Builder
@Getter
@ToString
@EqualsAndHashCode(callSuper = false, of = "id")
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "tb_deployment")
public class Deployment extends AuditorBaseEntity {

    @Id
    @Column(name = "deployment_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(length = 50, nullable = false)
    private String deploymentName;

    @Column(length = 50, nullable = false)
    private String namespace;

    @Column(nullable = false)
    private Integer replicas;

    @Column(length = 25, nullable = false)
    private String triggerStg;

    @Column(length = 25, nullable = false)
    private String updateStg;

    // create PledgeItem
    public static Deployment createDeployment(DeploymentDto createDto) {
        return Deployment.builder()
                .deploymentName(createDto.getDeploymentName())
                .namespace(createDto.getNamespace())
                .replicas(createDto.getReplicas())
                .triggerStg(createDto.getTriggerStg())
                .updateStg(createDto.getUpdateStg())
                .build();
    }

    public void updateDeployment(DeploymentDto updateDto) {
        this.deploymentName = updateDto.getDeploymentName();
        this.namespace = updateDto.getNamespace();
        this.replicas = updateDto.getReplicas();
        this.triggerStg = updateDto.getTriggerStg();
        this.updateStg = updateDto.getUpdateStg();
    }


}

