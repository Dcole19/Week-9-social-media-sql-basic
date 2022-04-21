CREATE DATABASE IF NOT EXISTS Week9Social;
USE Week9Social;

DROP TABLE IF EXISTS user_comment;
DROP TABLE IF EXISTS user_post;
DROP TABLE IF EXISTS user_info;



create table user_info (
user_id int NOT NULL auto_increment,
first_name varchar (20),
last_name varchar (20),
username varchar(18) NOT NULL,
email varchar(30) NOT NULL,
user_password varchar(30) NOT NULL,
PRIMARY KEY (user_id)
);

CREATE TABLE user_post(
post_id int NOT NULL auto_increment,
user_id int NOT NULL,
posted_at DATETIME NOT NULL,
post varchar (1200),
PRIMARY KEY (post_id),
FOREIGN KEY (user_id) references user_info(user_id)
 );

CREATE TABLE user_comment(
comment_id int NOT NULL auto_increment,
user_id int NOT NULL,
post_id int NOT NULL,
commented_at DATETIME NOT NULL,
comments varchar (1200),
PRIMARY KEY (comment_id),
FOREIGN KEY (user_id) references user_info(user_id),
FOREIGN KEY (post_id) references user_post(post_id)
);