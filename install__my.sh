#!/bin/bas

sudo yum install -y httpd
sudo wget https://ko.wordpress.org/wordpress-5.9.7-ko_KR.tar.gz
sudo tar xvfz wordpress-5.9.7-ko_KR.tar.gz
sudo yum install -y httpd
sudo cp -r wordpress/* /var/www/html/
sudo amazon-linux-exras enable php8.0
sudo yum install -y php php-fpm php-pdo php-mysqlnd
sudo cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
sudo sed -i 's/Directoryindex index.html/Directoryindex index.php/g' /etc/httpd/conf/httpd.conf
sudo sed -i 's/databases_name_here/wordpress/g' /var/www/html/wp-config.php
sudo sed -i 's/uesrname_name_here/root/g' /var/www/html/wp-config.php
sudo sed -i 's/password_here/VMware1!/g' /var/www/html/wp-config.php
sudo sed -i 's/localhost/데이터베이스 엔드포인트/g' /var/www/html/wp-config.php
sudo cat > /var/www/html/health.html << eof
    <html>
    <body>
    <h1>
    Hello LoadBalance....
    </h1>
    </body>
    </html>
eof
sudo systemctl enable --now httpd