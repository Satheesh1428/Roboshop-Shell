cp mongo.repo  /etc/yum.repos.d/mongo.repo

dnf install mongodb-org -y
#Update listen address from 127.0.0.1 to 0.0.0.0 in /etc/mongod.conf

systemctl restart mongod
systemctl enable  mongod


