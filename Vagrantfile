# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'json'

# Load servers from 'servers.json'
servers = JSON.parse(File.read(File.join(File.dirname(__FILE__), 'servers.json')))

Vagrant.configure("2") do |config|
  servers.each do |server|
	config.vm.define server['name'] do |srv|
		srv.vm.box = server['box']
		srv.vm.hostname = server['hostname']
		srv.vm.network 'private_network', ip: server['ip']
		srv.vm.network :forwarded_port, guest: 8080, host: 8080
		srv.vm.provider :virtualbox do |vb|
			vb.memory = server['ram']
			vb.cpus = server['vcpu']
		end
		srv.vm.provision "shell", inline: server['shell']
	end
  end

  config.vm.provision "shell", inline: %{
  	sudo cp /vagrant/hosts /etc/hosts
  }
end
