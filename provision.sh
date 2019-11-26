#! /bin/bash
apt-get update

# Instalació apache
apt-get install -y apache2
cp /vagrant/index.php /var/www/html
apt-get install -y php libapache2-mod-php php-mysql

# Instalació mysql
apt-get install -y mysql-server

#Instalació adminer
mkdir /usr/share/adminer
wget "http://www.adminer.org/latest.php" -O /usr/share/adminer/latest.php
ln -s /usr/share/adminer/latest.php /usr/share/adminer/adminer.php
echo "Alias /adminer.php /usr/share/adminer/adminer.php" | sudo tee /etc/apache2/conf-available/adminer.conf
a2enconf adminer.conf
systemctl reload apache2
