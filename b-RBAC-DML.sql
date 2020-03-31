
insert into roles(role_name) values('admin');
insert into roles(role_name) values('staff');

insert into users(username, password, role_id) values ('admin', '1', 1);
insert into users(username, password, role_id) values ('thuocnv', '1', 2);

insert into actions(name) values ('read');
insert into actions(name) values ('create');
insert into actions(name) values ('update');
insert into actions(name) values ('delete');
insert into actions(name) values ('view');



insert into resources(name) values ('users');
insert into resources(name) values ('roles');
insert into resources(name) values ('resources');
insert into resources(name) values ('permissions'); 
insert into resources(name) values ('grants');
insert into resources(name) values ('actions');


-- permissions for resource 1
insert into permissions (resource_id, action_id) values (1, 1);
insert into permissions (resource_id, action_id) values (1, 2);
insert into permissions (resource_id, action_id) values (1, 3);
insert into permissions (resource_id, action_id) values (1, 4);
insert into permissions (resource_id, action_id) values (1, 5);

-- permissions for resource 2;
insert into permissions (resource_id, action_id) values (2, 1);
insert into permissions (resource_id, action_id) values (2, 2);
insert into permissions (resource_id, action_id) values (2, 3);
insert into permissions (resource_id, action_id) values (2, 4);
insert into permissions (resource_id, action_id) values (2, 5);

-- permissions for resource 3;
insert into permissions (resource_id, action_id) values (3, 1);
insert into permissions (resource_id, action_id) values (3, 2);
insert into permissions (resource_id, action_id) values (3, 3);
insert into permissions (resource_id, action_id) values (3, 4);
insert into permissions (resource_id, action_id) values (3, 5);

-- permissions for resource 4;
insert into permissions (resource_id, action_id) values (4, 1);
insert into permissions (resource_id, action_id) values (4, 2);
insert into permissions (resource_id, action_id) values (4, 3);
insert into permissions (resource_id, action_id) values (4, 4);
insert into permissions (resource_id, action_id) values (4, 5);

-- permissions for resource 5;
insert into permissions (resource_id, action_id) values (5, 1);
insert into permissions (resource_id, action_id) values (5, 2);
insert into permissions (resource_id, action_id) values (5, 3);
insert into permissions (resource_id, action_id) values (5, 4);
insert into permissions (resource_id, action_id) values (5, 5);

-- permissions for resource 6;
insert into permissions (resource_id, action_id) values (6, 1);
insert into permissions (resource_id, action_id) values (6, 2);
insert into permissions (resource_id, action_id) values (6, 3);
insert into permissions (resource_id, action_id) values (6, 4);
insert into permissions (resource_id, action_id) values (6, 5);


insert into grants (role_id, permission_id) values (2, 25);
insert into grants (role_id, permission_id) values (2, 26);
insert into grants (role_id, permission_id) values (2, 29);
insert into grants (role_id, permission_id) values (2, 30);
insert into grants (role_id, permission_id) values (2, 31);
insert into grants (role_id, permission_id) values (2, 32);

insert into grants (role_id, permission_id) values (1, 1);
insert into grants (role_id, permission_id) values (1, 2);
insert into grants (role_id, permission_id) values (1, 3);
insert into grants (role_id, permission_id) values (1, 4);
insert into grants (role_id, permission_id) values (1, 5);
insert into grants (role_id, permission_id) values (1, 6);
insert into grants (role_id, permission_id) values (1, 7);
insert into grants (role_id, permission_id) values (1, 8);
insert into grants (role_id, permission_id) values (1, 9);
insert into grants (role_id, permission_id) values (1, 10);
insert into grants (role_id, permission_id) values (1, 11);
insert into grants (role_id, permission_id) values (1, 12);
insert into grants (role_id, permission_id) values (1, 13);
insert into grants (role_id, permission_id) values (1, 14);
insert into grants (role_id, permission_id) values (1, 15);
insert into grants (role_id, permission_id) values (1, 16);
insert into grants (role_id, permission_id) values (1, 17);
insert into grants (role_id, permission_id) values (1, 18);
insert into grants (role_id, permission_id) values (1, 19);
insert into grants (role_id, permission_id) values (1, 20);
insert into grants (role_id, permission_id) values (1, 21);
insert into grants (role_id, permission_id) values (1, 22);
insert into grants (role_id, permission_id) values (1, 23);
insert into grants (role_id, permission_id) values (1, 24);




alter table permissions add constraint UK_PERMISSION unique (action_id, resource_id);
alter table grants add constraint UK_GRANT unique (role_id, sub_role_id);