# practica17
Vagrant file 
Afegim una línea de aprovisionament config.vm.provision "shell", path: "./provision.sh".
Descomentem la capacitat de la memória i la canviem a 2GB.
vb.memory = “2048”.
El script de aprovisionament contendrá una actualització dels repositoris.
la instal·lació de apache2
 movem el index.php a una ruta especifica
 Instalarem les llibreries necesaries per implementar php a mysql
Instal·lem mysql-server
creem un una ruta per adminer
agafem repositoris de Adminer, en concret el php.
Fem un enllaç fort entre el lastest.php i el adminer.php
Després, farem:
```sh
$ echo "Alias /adminer.php /usr/share/adminer/adminer.php"
```
i ho guardarem en un fitxer de configuracio del adminer.
Configurem el apache2 amb "a2enconf adminer.conf" que modifica certa configuració del fitxer.
Recarregum la configuració d'apache.
```sh
$ Alias /adminer.php /usr/share/adminer/adminer.php
$ npm install -d
$ node app
```
