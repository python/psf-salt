#!/usr/bin/env ruby


SERVERS = [
  "apt",
  "backup-server",
  "cdn-logs",
  "docs",
  "downloads",
  "hg",
  "jython-web",
  "loadbalancer",
  "planet",
]

SUBNET1 = "192.168.50"
SUBNET2 = "192.168.60"

MASTER1 = "#{SUBNET1}.2"
MASTER2 = "#{SUBNET2}.2"


Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.define "salt-master" do |s_config|
    s_config.vm.hostname = "salt-master.vagrant.psf.io"
    s_config.vm.network "private_network", ip: MASTER1, virtualbox__intnet: "psf1"
    s_config.vm.network "private_network", ip: MASTER2, virtualbox__intnet: "psf2"

    s_config.vm.synced_folder "salt/", "/srv/salt"
    s_config.vm.synced_folder "pillar", "/srv/pillar"

    s_config.vm.provision :salt, install_master: true, master_config: "conf/vagrant/master.conf"
    s_config.vm.provision :shell, inline: "echo 'master: #{MASTER1}\n\ngrains:\n  roles:\n    - salt-master' > /etc/salt/minion.d/local.conf"
    s_config.vm.provision :shell, inline: "salt-call state.highstate", run: "always"
  end

  SERVERS.each_with_index do |server_c, num|
    if server_c.instance_of?(Hash)
      server = server_c[:name]
      roles = server_c.fetch :roles, [server]
    else
      server = server_c
      roles = [server_c]
    end

    config.vm.define server, autostart: false do |s_config|
      s_config.vm.hostname = "#{server}.vagrant.psf.io"
      s_config.vm.network "private_network", ip: "#{SUBNET1}.#{num + 10}", virtualbox__intnet: "psf1"
      s_config.vm.network "private_network", ip: "#{SUBNET2}.#{num + 10}", virtualbox__intnet: "psf2"

      s_config.vm.provision :salt
      s_config.vm.provision :shell, inline: "echo 'master: #{MASTER1}\n\ngrains:\n  roles:\n    - #{roles.join("\n    - ")}' > /etc/salt/minion.d/local.conf"
      s_config.vm.provision :shell, inline: "salt-call state.highstate", run: "always"
    end
  end

end
