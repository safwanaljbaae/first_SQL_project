# This is my first SQL project

1 - Install MySQL Workbench -> https://dev.mysql.com/downloads/workbench/

2 - Create an account on the cloud service that will store the bank ->  https://www.db-clusters.com/plans/MySQL

3 - Connect the Data Base Management System (DBMS or SGBD in portuguese) with the cloud server 


### MySQL Environment Configuration for Linux (Ubuntu 20.04) 


-- Check if MySQL has already been installed: `service mysql status`

-- Start the service: `service mysql start`

-- improve the security of your MariaDB installation in the following ways: `sudo mysql_secure_installation`

- Enter password for root 

- Remove anonymous users? [Y/n] y

- Disallow root login remotely? [Y/n] n

- Remove test database and access to it? [Y/n] y

- Reload privilege tables now? [Y/n] y

-- Modify the authentication from mysql (`sudo mysql`):

- Check the useres/plugin authentication: `mysql> select user, authentication_string, plugin from mysql.user;`

- Change the authentication of the root: ` mysql> alter user 'root'@'localhost' identified with caching_sha2_password by 'NEW_PASSOWRD!';`

- Apply the changes: `mysql> flush privileges;`

-- To login mysql again use: `sudo mysql -u root -p`

