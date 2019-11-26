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
(
