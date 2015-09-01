Data Science Box
================

This virtual machine for performing data science is based on the virtual machine, data, scripts, and custom command-line tools used in the Data Science at the Command Line book, see also the [dsatcl git-repo](https://github.com/jeroenjanssens/data-science-at-the-command-line) and [site](http://datascienceatthecommandline.com).

# Requirements

Installation requires:
* [Vagrant](https://www.vagrantup.com)
* [VirtualBox](https://www.virtualbox.org)
* [Ansible](http://www.ansible.com/home)

# Installation
1. checkout the git repo
2. run `vagrant up`
3. and you are done! 

# Usage

Start the Jupyter notebook server:
* run `vagrant ssh` to log-in;
* then type `start_ipynb_server` to start the notebook server
