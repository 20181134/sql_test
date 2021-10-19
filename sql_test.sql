drop database if exists test; -- testが存在したら削除
create database test character set utf8 collate utf8_general_ci; -- testをUTF-8で作成
grant all on test.* to 'admin'@'localhost' identified by 'password'; -- adminに権限を付与(パスワード: password)
use test;

create table contents ( -- contents データベースの作成
    id int auto_increment primary key,
    name varchar(50) not null, -- ファイルの最大の大きさを50とする(空のファイルは送信できない)
    test1 int not null -- test1を定義
);

insert into contents values(null, 'テスト', 100); -- contents にデータを入力
