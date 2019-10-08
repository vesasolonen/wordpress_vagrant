# Asetuksia tekstieditorille
# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|

  # Mikä käyttöjärjestelmä asennetaan Vagrantin pilvestä
  config.vm.box = "ubuntu/bionic64"

  # Virtuaalialustaksi virtualbox ja siihen muutama muokkaus
  config.vm.provider "virtualbox" do |v|
    # Virtuaalikoneen nimeksi virtualboxiin testi
    v.name = "testi"
    # Keskusmuistia virtuaalikoneelle 2048 MB
    v.memory = 2048
    # Prosessorin ytimien määrä virtuaalikoneelle
    v.cpus = 2
  end

  # Porttiohjauksia isäntäkoneesta virtuaalikoneen portteihin
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "forwarded_port", guest: 4100, host: 4100
  config.vm.network "forwarded_port", guest: 80, host: 8080
  # Shelltiedoston ajo virtuaalikoneen sisällä
  config.vm.provision :shell, path: "bootstrap.sh"

end
Vagrant.configure("2") do |config|
  config.vm.synced_folder "C:/Vagrant-projekti/Wp", "/var/www/html/wordpress"
  
  config.vm.synced_folder "C:/Vagrant-projekti/Ap", "/etc/apache2/sites-enabled"
end
