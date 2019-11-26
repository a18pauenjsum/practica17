Vagrant.configure("2") do |config|
# Vagrant box amb una versió d'ubutnu 16
  config.vm.box = "ubuntu/xenial64"
   config.vm.provider "virtualbox" do |vb|
#Capacitat de la memoria 2GB
     vb.memory = "2048"
   end
#Script del provisionament.
   config.vm.provision "shell", path: "./provision.sh"
end
