# Pràctica17

## Vagrantfile 

 1. Afegim una línea de aprovisionament config.vm.provision "shell", path: "./provision.sh".
```sh
 config.vm.provision "shell", path: "./provision.sh"
```
 2. Descomentem la capacitat de la memória i la canviem a 2GB. 
```sh
 vb.memory = “2048”.
```
## Script
El script de aprovisionament contendrá una actualització dels repositoris.
```sh
 apt-get update
```
la instal·lació de apache2
```sh
 apt-get install -y apache2
```
Movem el index.php a una ruta especifica
```sh
 cp /vagrant/index.php /var/www/html
```
Instalarem les llibreries necesaries per implementar php a mysql
```sh
 apt-get install -y php libapache2-mod-php php-mysql
```
Instal·lem mysql-server
```sh
 apt-get install -y mysql-server
```
creem un una ruta per adminer
```sh
 mkdir /usr/share/adminer
```
Agafem repositoris de Adminer, en concret el php.
```sh
 wget "http://www.adminer.org/latest.php" -O /usr/share/adminer/latest.php
```
Fem un enllaç fort entre el lastest.php  adminer.php 
```sh
 ln -s /usr/share/adminer/latest.php /usr/share/adminer/adminer.php
```
Després ho guardarem en un fitxer de configuracio del adminer:
```sh
 echo "Alias /adminer.php /usr/share/adminer/adminer.php" | sudo tee /etc/apache2/conf-available/adminer.conf
```
Configurem el apache2 amb "a2enconf adminer.conf" que modifica certa configuració del fitxer.
```sh
 a2enconf adminer.conf
```
Recarregum la configuració d'apache.
```sh
 systemctl reload apache2
```

