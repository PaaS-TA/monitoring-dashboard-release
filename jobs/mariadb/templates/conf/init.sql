ALTER USER 'root'@'localhost' IDENTIFIED VIA mysql_native_password USING PASSWORD('<%= p("mariadb.admin_user.password") %>');
ALTER USER 'vcap'@'localhost' IDENTIFIED VIA mysql_native_password USING PASSWORD('<%= p("mariadb.admin_user.password") %>');

GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED VIA mysql_native_password USING PASSWORD('<%= p("mariadb.admin_user.password") %>') WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED VIA mysql_native_password USING PASSWORD('<%= p("mariadb.admin_user.password") %>') WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'vcap'@'%' IDENTIFIED VIA mysql_native_password USING PASSWORD('<%= p("mariadb.admin_user.password") %>') WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'vcap'@'localhost' IDENTIFIED VIA mysql_native_password USING PASSWORD('<%= p("mariadb.admin_user.password") %>') WITH GRANT OPTION;
FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS PaastaMonitoring CHARACTER SET utf8 COLLATE utf8_general_ci;
delete from mysql.user where user='';
set global slow_query_log = ON;

-- For Zabbix
CREATE DATABASE zabbix character SET utf8 COLLATE utf8_bin;
CREATE USER zabbix IDENTIFIED BY 'password';
CREATE USER 'zabbix'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON zabbix.* TO zabbix;
GRANT ALL PRIVILEGES ON zabbix.* TO 'zabbix'@'localhost';
