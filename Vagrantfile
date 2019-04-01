# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-17.10"

  config.vm.provider :virtualbox do |vbox|
    vbox.name = "vagrant-model-town"
  end

  config.vm.hostname = "model-town"
  config.vm.synced_folder ".", "/home/vagrant/model-town"
  config.vm.synced_folder "./vagrant_scripts", "/home/vagrant/vagrant_scripts"
  config.vm.provision :shell, privileged: false, inline: "/home/vagrant/vagrant_scripts/vagrant.sh"
end
