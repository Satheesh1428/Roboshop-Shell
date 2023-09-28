cp Mysql.repo /etc/yum.repos.d/Mysql.repo
yum module disable mysql -y
yum install mysql-community-server -y
mysql_secure_installation --set-root-pass RoboShop@1
mysql -uroot -pRoboShop@1
systemctl enable mysqld
systemctl restart mysqld
