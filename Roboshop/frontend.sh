#!/usr/bin/bash
source common.sh
#Roboshop -Frontend Script
echo Installing Nginx
yum install nginx -y
StatusCheck
echo Enabling Nginx
systemctl enable nginx
StatusCheck
echo Starting Nginx
systemctl start nginx
StatusCheck
echo Downloading Frontend
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip" &>>/tmp/frontend.log
StatusCheck
cd /usr/share/nginx/html
rm -rf *
echo Unziping Frontend Files
unzip /tmp/frontend.zip &>>/tmp/frontend.log && mv frontend-main/static/* . && mv frontend-main/localhost.conf /etc/nginx/default.d/roboshop.conf
StatusCheck
echo Restarting Nginx
systemctl restart nginx
StatusCheck
