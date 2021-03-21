# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.define "node1", primary: true do |node1|

        node1.vm.box = "ubuntu/bionic64"
		node1.vm.network "forwarded_port", guest: 80, host: 2280
		node1.vm.network "forwarded_port", guest: 22, host: 2222
                node1.vm.synced_folder "app", "/vagrant", disabled: true
                node1.vm.provider "virtualbox" do |v|
		  v.gui = "true"
                  v.name = "ubuntu1 node2"
                  v.cpus = 1
                  v.memory = 2048
                  v.customize [ "modifyvm", :id, "--uartmode1", "disconnected" ]
                end

	config.vm.provision "shell", path: "python-ln.sh"
	config.vm.provision "ansible" do |ansible|
	  ansible.verbose = "v"
	  ansible.playbook = "playbook.yml"
        end
    end
end
