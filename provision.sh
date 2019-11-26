#! /bin/bash
apt-get update

# Instalació apache
apt-get install -y apache2
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password rootpass'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password rootpass'
cp /vagrant/index.php /var/www/html


# Instalació mysql
sudo apt-get -y install mysql-server libapache2-mod-auth-mysql php5-mysql
sudo apt-get -y install php5 libapache2-mod-php5 php5-mcrypt

#Instalació adminer
mkdir /usr/share/adminer
wget "http://www.adminer.org/latest.php" -O /usr/share/adminer/latest.php
ln -s /usr/share/adminer/latest.php /usr/share/adminer/adminer.php
echo "Alias /adminer.php /usr/share/adminer/adminer.php" | sudo tee /etc/apache2/conf-available/adminer.conf
a2enconf adminer.conf
systemctl reload apache2
