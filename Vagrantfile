# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "puppetlabs/ubuntu-14.04-64-nocm"
  config.vm.box_check_update = true
  config.vm.network "forwarded_port", guest: 8888, host: 8888 #ipynb_server
  config.vm.network "forwarded_port", guest: 5000, host: 5000 #nbviewer
  config.vm.network "forwarded_port", guest: 5432, host: 5432 #postgres
  config.vm.network "forwarded_port", guest: 8787, host: 8787 #RStudio server
  config.vm.synced_folder "~/Projects", "/home/vagrant/Projects"

  # Share SSH locally by default
  config.vm.network "forwarded_port", guest: 22, host: 2200, id: "ssh", auto_correct: true

  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "-vvv"
    ansible.playbook = "provisioning/dsb.yml"

  end


  config.vm.provider "virtualbox" do |vb|
    # vb.gui = true
    vb.customize ["modifyvm", :id, "--memory", "10240"]
    vb.customize ["modifyvm", :id, "--cpus", "4"]
    vb.customize ["modifyvm", :id, "--ioapic", "on"]

  end
end
