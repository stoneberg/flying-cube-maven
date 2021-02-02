-- roles example
INSERT INTO tb_roles(name) VALUES('ROLE_USER');
INSERT INTO tb_roles(name) VALUES('ROLE_ADMIN');

-- users example
INSERT INTO tb_users(id, email, password, username) VALUES (1, 'devops1@kt.com', '$2a$10$3ZrU05uOlHJL18J4kEiji.WcxIbB55GeV6.4RFkZAaxK94t23nJ2K', 'devops1');
INSERT INTO tb_users(id, email, password, username) VALUES (2, 'devops2@kt.com', '$2a$10$3f7RS6n9/pFdJcb9BwB2He7mrG9UrCGUdkXoxI41BB.vSuQV3.sia', 'devops2');
INSERT INTO tb_users(id, email, password, username) VALUES (3, 'devops3@kt.com', '$2a$10$TiAxc2Pb68biNn2ftVGqhOzTeLcoER19MJ6lg3.wkuMxiEKugjiwO', 'devops3');

-- user_roles example
INSERT INTO tb_user_roles(user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_roles(user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_roles(user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_roles(user_id, role_id) VALUES (3, 2);

-- deployment example
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jenkins deployment' , 'web-serivce-team1', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nginx deployment' , 'web-serivce-team1', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mariadb deployment' , 'web-serivce-team2', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('redis deployment' , 'web-serivce-team2', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('kafka deployment' , 'web-serivce-team3', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('jboss deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('postgresql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('oracle deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('spark deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('elastic search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());

insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nexus deployment' , 'web-serivce-team3', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mysql deployment' , 'web-serivce-team4', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('mssql deployment' , 'web-serivce-team4', 2, 'Image Change', 'Rolling', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('hadoop deployment' , 'web-serivce-team5', 2, 'Config Change', 'Recreate', now(), now());
insert into tb_deployment (deployment_name, namespace, replicas, trigger_stg, update_stg, created_dt, updated_dt)
values ('nodejs search deployment' , 'web-serivce-team5', 2, 'Image Change', 'Rolling', now(), now());