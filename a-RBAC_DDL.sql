CREATE TABLE IF NOT EXISTS roles (
id int PRIMARY KEY AUTO_INCREMENT,
name varchar(50) unique NOT NULL,
createdAt TIMESTAMP not null default current_timestamp
);

CREATE TABLE IF NOT EXISTS users (
id int PRIMARY KEY AUTO_INCREMENT,
username varchar(45) NOT NULL,
password varchar(255) NOT NULL,
role_id int NOT NULL,
createdAt TIMESTAMP not null default current_timestamp,
FOREIGN KEY(role_id) REFERENCES roles(id)
);

CREATE TABLE IF NOT EXISTS permissions (
id int PRIMARY KEY AUTO_INCREMENT,
resource_id int not null,
action_id int not null,
createdAt TIMESTAMP not null default current_timestamp,
foreign key (resource_id) references resources(id),
foreign key(action_id) references actions(id),
);

CREATE TABLE IF NOT EXISTS grants (
id int PRIMARY KEY AUTO_INCREMENT,
role_id int NOT NULL,
sub_role_id int default null,
permission_id int NOT NULL,
createdAt TIMESTAMP not null default current_timestamp,
FOREIGN KEY(role_id) REFERENCES roles(id),
FOREIGN KEY(permission_id) REFERENCES permissions(id),
FOREIGN KEY(sub_role_id) REFERENCES roles(id)
);

CREATE TABLE IF NOT EXISTS resources (
id int PRIMARY KEY AUTO_INCREMENT,
name varchar(100) NOT NULL,
createdAt TIMESTAMP not null default current_timestamp
);

create table if not exists actions (
    id int PRIMARY key AUTO_INCREMENT,
    name varchar(100) not null,
    createdAt TIMESTAMP not null default current_timestamp
);

alter table permissions add action_id int not null; 
alter table permissions add foreign key (action_id) references actions(id);

alter table permissions add resource_id int;
alter table permissions modify resource_id int not null;
alter table permissions add foreign key (resource_id) references resources(id);
alter table permissions add constraint UK_PERMISSION unique (resource, action);
alter table permissions drop index UK_PERMISSION;
alter table permissions add constraint UK_PERMISSION unique (action_id, resource_id);
alter table resources add constraint UK_RESOURECE unique (resource_name);



alter table permissions add created_at TIMESTAMP NOT NULL default current_timestamp;
alter table grants add created_at TIMESTAMP not null default current_timestamp;
alter table resources add created_at TIMESTAMP not null default current_timestamp;
alter table roles add created_at TIMESTAMP not null default current_timestamp;
alter table users add created_at TIMESTAMP not null default current_timestamp;

alter table grants add constraint UK_GRANT unique(role_id, sub_role_id, permission_id);
alter table users add constraint UK_USER unique (username);

