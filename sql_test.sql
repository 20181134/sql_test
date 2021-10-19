drop database if exists test;
create database test character set utf8 collate utf8_general_ci;
grant all on test.* to 'admin'@'localhost' identified by 'password';
use test;

create table contents (
    id int auto_increment primary key,
    name varchar(50) not null,
    test1 int not null
);

insert into contents values(null, 'テスト', 100);