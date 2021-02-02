package com.ktds.flyingcube.biz.application.repository;

import com.ktds.flyingcube.biz.application.domain.Deployment;
import com.ktds.flyingcube.biz.application.dto.DeploymentReq.FindDto;
import com.ktds.flyingcube.biz.application.dto.DeploymentRes.AllDto;
import com.ktds.flyingcube.common.querydsl.Querydsl4RepositorySupport;
import com.querydsl.core.types.Projections;
import com.querydsl.core.types.dsl.BooleanExpression;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import static com.ktds.flyingcube.biz.application.domain.QDeployment.deployment;

@Repository
public class DeploymentQueryRepository extends Querydsl4RepositorySupport {

    public DeploymentQueryRepository() {
        super(Deployment.class);
    }

    public Page<AllDto> selectDeployments(FindDto findDto, Pageable pageable) {
        return applyPagination(pageable, contentQuery -> contentQuery
                .select(Projections.fields(AllDto.class,
                        deployment.id,
                        deployment.deploymentName,
                        deployment.namespace,
                        deployment.replicas,
                        deployment.triggerStg,
                        deployment.updateStg,
                        deployment.createdDt
                ))
                .from(deployment)
                .where(
                        equalsDeploymentName(findDto.getDeploymentName())
                )
                .orderBy(
                        deployment.createdDt.desc(),
                        deployment.namespace.asc(),
                        deployment.id.desc()
                )
        );
    }


    private BooleanExpression equalsDeploymentName(String deploymentName) {
        return StringUtils.hasText(deploymentName) ? deployment.deploymentName.eq(deploymentName) : null;
    }

}
