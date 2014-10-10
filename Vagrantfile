#!/usr/bin/env ruby


SERVERS = [
  "apt",
  "backup-server",
]

SUBNET = "192.168.50"

MASTER = "#{SUBNET}.2"


Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.define "salt-master" do |s_config|
    s_config.vm.hostname = "salt-master.vagrant.psf.io"
    s_config.vm.network "private_network", ip: MASTER, virtualbox__intnet: "psf"

    s_config.vm.synced_folder "salt/", "/srv/salt"
    s_config.vm.synced_folder "pillar", "/srv/pillar"

    s_config.vm.provision :salt, install_master: true, master_config: "conf/vagrant/master.conf"
    s_config.vm.provision :shell, inline: "echo 'master: #{MASTER}\n\ngrains:\n  roles:\n    - salt-master' > /etc/salt/minion.d/local.conf"
    s_config.vm.provision :shell, inline: "salt-call state.highstate", run: "always"
  end

  SERVERS.each_with_index do |server, num|
    config.vm.define server, autostart: false do |s_config|
      s_config.vm.hostname = "#{server}.vagrant.psf.io"
      s_config.vm.network "private_network", ip: "#{SUBNET}.#{num + 10}", virtualbox__intnet: "psf"

      s_config.vm.provision :salt
      s_config.vm.provision :shell, inline: "echo 'master: #{MASTER}\n\ngrains:\n  roles:\n    - #{server}' > /etc/salt/minion.d/local.conf"
      s_config.vm.provision :shell, inline: "salt-call state.highstate", run: "always"
    end
  end

end
