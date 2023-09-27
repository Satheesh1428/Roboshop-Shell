cp Catalouge.service /etc/systemd/system/Catalouge.service
cp Mongo.repo /etc/yum.repos.d/mongo.repo
curl -sL https://rpm.nodesource.com/setup_lts.x | bash
dnf install nodejs -y
useradd roboshop
mkdir /app
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip
cd /app
unzip /tmp/catalogue.zip
cd /app
npm install
yum install mongodb-org-shell -y
mongo --host mongodb.devopsovsn.online </app/schema/catalogue.js
systemctl daemon-reload
systemctl enable Catalouge
systemctl restart Catalouge
dnf install mongodb-org-shell -y

