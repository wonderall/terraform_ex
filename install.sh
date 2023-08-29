#! /bin/bash

yum install -y httpd
amazon-linux-extras enable php8.0
yum install -y php php-cli php-pdo php-fpm php-json php-mysqlnd mariadb php
wget https://ko.wordpress.org/wordpress-5.7.8-ko_KR.tar.gz
tar xvfz wordpress-5.7.8-ko_KR.tar.gz
cp -a ./wordpress/* /var/www/html/
chown apache.apache /var/www/html/*
sed -i 's/DirectoryIndex index.html/DirectoryIndex index.php/g' /etc/httpd/conf/httpd.conf
cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
sed -i 's/database_name_here/wordpress/g' /var/www/html/wp-config.php
sed -i 's/username_here/root/g' /var/www/html/wp-config.php
sed -i 's/password_here/It12345!/g' /var/www/html/wp-config.php
sed -i 's/localhost/mydb.cn6fcv88j4vr.ap-northeast-2.rds.amazonaws.com/g' /var/www/html/wp-config.php

cat > /var/www/html/index.html << eof
<html>
    <body>
        <h1>Terraform-Healthcheck</h1>
    </body>
</html>
eof

systemctl enable httpd
systemctl start httpd
