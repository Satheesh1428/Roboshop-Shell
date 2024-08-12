dnf install nginx -y

cp roboshop.conf  /etc/nginx/default.d/roboshop.conf

rm -rf /usr/share/nginx/html/*
curl -o /temp/forntend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip
cd /usr/share/nginx/html
unzip /temp/forntend.zip

systemctl enable nginx
systemctl restart nginx









