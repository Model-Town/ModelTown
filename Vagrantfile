# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'yaml'
environment =
  if FileTest.exist?('.environment.yml')
    open('.environment.yml') { |f| YAML.load f }
  else
    {}
  end

Vagrant.configure("2") do |config|
  config.vm.box = environment['vm_box'] || "bento/ubuntu-17.10"

  config.vm.provider (environment['provider'] || :virtualbox) do |vbox|
    vbox.name = "vagrant-model-town"
  end

  config.vm.hostname = "model-town"
  config.vm.synced_folder ".", "/home/vagrant/model-town"

  if config.vm.box.include? 'ubuntu'
    config.vm.synced_folder "./vagrant_scripts", "/home/vagrant/vagrant_scripts"
    config.vm.provision :shell, privileged: false, inline: "/home/vagrant/vagrant_scripts/vagrant.sh"
  end
end
