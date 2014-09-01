# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "puppetlabs/ubuntu-14.04-64-nocm"

  config.vm.network "forwarded_port", guest: 8888, host: 8889

  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "-vvvv"
    ansible.playbook = "provisioning/dsb.yml"
  end

  config.vm.provider "virtualbox" do |vb|
    #vb.gui = true
    vb.memory = 10240
    vb.cpus = 4
  end
end
