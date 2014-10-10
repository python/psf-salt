#!/usr/bin/env ruby

SERVERS = [
]

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.define "salt-master" do |salt_master|
    config.vm.hostname = "salt-master.vagrant.psf.io"
    config.vm.network "private_network", ip: "192.168.50.2", virtualbox__intnet: "psf"

    salt_master.vm.synced_folder "salt/", "/srv/salt"
    salt_master.vm.synced_folder "pillar", "/srv/pillar"

    salt_master.vm.provision :salt do |salt|
      salt.install_master = true

      salt.master_config = "conf/vagrant/master.conf"
      salt.minion_config = "conf/vagrant/minions/salt-master.conf"
    end

    # We use a shell provisioner here instead of the run_highstate of the
    # salt provisioner because it's attempting to use --retcode passthrough
    # which doesn't yet exist.
    salt_master.vm.provision "shell", inline: "salt-call state.highstate"
  end

  SERVERS.each_with_index do |server, num|
    config.vm.define server, autostart: false do |s_config|
      s_config.vm.hostname = "#{server}.vagrant.psf.io"
      s_config.vm.network "private_network", ip: "192.168.50.#{num + 10}", virtualbox__intnet: "psf"

      s_config.vm.provision :salt do |salt|
        salt.minion_config = "conf/vagrant/minions/#{server}.conf"
        salt.run_highstate = true
      end
    end
  end

end
