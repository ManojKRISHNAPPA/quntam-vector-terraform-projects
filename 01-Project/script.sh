#!/bin/bash
sudo yum update
sudo yum install httpd -y
echo "<h1> This is from terraform script </h1>" >> /var/www/html/index.html
sudo systemctl enable httpd
sudo systemctl start httpd
sudo hostname terrafom server
