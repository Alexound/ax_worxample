# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  config.vm.box = "centos/7"
  config.vm.hostname = "docker-wx"
  config.vm.provision "shell", path: "docker-wx.sh"
  config.vm.provision "shell", path: "wrxmpl-srv.sh"	

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    # vb.gui = true
    # Customize the amount of memory on the VM:
    vb.memory = "1024"
    vb.name = "docker-wx"
  end
end
