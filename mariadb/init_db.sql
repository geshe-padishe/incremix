mysql -e CREATE DATABASE IF NOT EXISTS `${DB_NAME}`;
mysql -e GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, ALTER
mysql -e ON `${DB_NAME}`.*
mysql -e TO 'word'@'%'
mysql -e IDENTIFIED BY '${DB_PASSWORD}';
mysql -e FLUSH PRIVILEGES;
