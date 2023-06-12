create table base_app_token_refresh(
 id int not null auto_increment,
 user_id int,
 refresh_token varchar(500),
 primary key(id)
);
