# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "puppetlabs/ubuntu-14.04-64-nocm"
  config.vm.box_check_update = true
  config.vm.network "forwarded_port", guest: 8888, host: 8889
  config.vm.network "forwarded_port", guest: 8998, host: 8998

  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "-v"
    ansible.playbook = "provisioning/dsb.yml"
  end

  config.vm.provider "virtualbox" do |vb|
    # vb.gui = true
    vb.customize ["modifyvm", :id, "--memory", "10240"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]
    vb.customize ["modifyvm", :id, "--ioapic", "on"]

  end
end
