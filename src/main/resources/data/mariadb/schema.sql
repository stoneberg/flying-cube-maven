drop table if exists tb_roles CASCADE;
create table tb_roles
(
    id integer AUTO_INCREMENT,
    name varchar(20),
    primary key (id)
);

drop table if exists tb_users CASCADE;
create table tb_users
(
    id integer AUTO_INCREMENT,
    username varchar(20),
    `password` varchar(120),
    email varchar(50),
    primary key (id)
);

drop table if exists tb_user_roles CASCADE;
create table tb_user_roles
(
    user_id integer not null,
    role_id integer not null,
    foreign key (user_id) REFERENCES tb_users(id),
    foreign key (role_id) REFERENCES tb_roles(id),
    primary key (user_id, role_id)
);

alter table tb_users
    add constraint uk_tb_user_username unique (username);

alter table tb_users
    add constraint uk_tb_user_email unique (email);


drop table if exists tb_deployment CASCADE;

create table tb_deployment
(
    deployment_id   integer AUTO_INCREMENT,
    deployment_name varchar(50) not null,
    namespace       varchar(50) not null,
    replicas        integer     not null default 1,
    trigger_stg     varchar(25) not null,
    update_stg      varchar(25) not null,
    created_dt      timestamp,
    updated_dt      timestamp,
    primary key (deployment_id)
);
