-- ERDCloud diagram: https://www.erdcloud.com/d/EYbqxh3Xw8wZuHfwM
-- 루트에서 실행해야함

create database project_easycoding
    default character set utf8mb4
    default collate utf8mb4_unicode_ci;

create user 'edu'@'localhost' identified by 'kh48';

grant all privileges on project_easycoding.* to 'edu'@'localhost';

flush privileges;

