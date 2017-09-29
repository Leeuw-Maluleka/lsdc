dropp database lsdccoza_lsdcdb;
create database lsdccoza_lsdcdb;
CREATE USER 'lsdccoza_admin'@'localhost' IDENTIFIED BY 'lsdcadmin123';
grant all on lsdccoza_lsdcdb.* to 'lsdccoza_admin'@'localhost';
