#!/usr/bin/env ruby


SERVERS = [
  "backup-server",
  "cdn-logs",
  "consul",
  "docs",
  "downloads",
  "hg",
  "jython-web",
  {:name => "loadbalancer", :ports => [20000, 20001, 20002, 20003, 20004, 20005, 20100]},
  "monitoring",
  "packages",
  "planet",
  {:name => "postgresql-primary", :roles => ["postgresql", "postgresql-primary"]},
  {:name => "postgresql-replica", :roles => ["postgresql", "postgresql-replica"]},
  "speed-web",
  "tracker",
  "pypa-web",
  "wiki",
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

    s_config.vm.provider "virtualbox" do |v|
      v.memory = 1024
      v.cpus = 2
    end

    s_config.vm.synced_folder "salt/", "/srv/salt/"
    s_config.vm.synced_folder "pillar/", "/srv/pillar/"

    s_config.vm.provision :file, source: "salt/base/config/APT-GPG-KEY-PSF", destination: "~/APT-GPG-KEY-PSF"
    s_config.vm.provision :shell, inline: "apt-key add - < /home/vagrant/APT-GPG-KEY-PSF"
    s_config.vm.provision :shell, inline: "echo 'deb [arch=amd64] https://s3.amazonaws.com/apt.psf.io/psf/ trusty main' > /etc/apt/sources.list.d/psf.list"
    s_config.vm.provision :shell, inline: "apt-get update && apt-get install -y salt"
    s_config.vm.provision :shell, inline: "ln -sf /vagrant/conf/vagrant/master.conf /etc/salt/master.d/local.conf"
    s_config.vm.provision :shell, inline: "echo 'master: #{MASTER1}\n' > /etc/salt/minion.d/local.conf"
    s_config.vm.provision :shell, inline: "echo 'ENABLED=1' > /etc/default/salt-master && service salt-master restart && sleep 10"
    s_config.vm.provision :shell, inline: "echo 'ENABLED=1' > /etc/default/salt-minion && service salt-minion restart && sleep 10"
    s_config.vm.provision :shell, inline: "salt-call state.highstate"  # Call it once to setup the roles
    s_config.vm.provision :shell, inline: "salt-call state.highstate", run: "always"
  end

  SERVERS.each_with_index do |server_c, num|
    if server_c.instance_of?(Hash)
      server = server_c[:name]
      roles = server_c.fetch :roles, [server]
      box = server_c.fetch :box, nil
      codename = server_c.fetch :codename, "trusty"
      ports = server_c.fetch :ports, []
    else
      server = server_c
      roles = [server_c]
      box = nil
      codename = "trusty"
      ports = []
    end

    config.vm.define server, autostart: false do |s_config|
      if box
        s_config.vm.box = box
      end

      s_config.vm.hostname = "#{server}.vagrant.psf.io"
      s_config.vm.network "private_network", ip: "#{SUBNET1}.#{num + 10}", virtualbox__intnet: "psf1"
      s_config.vm.network "private_network", ip: "#{SUBNET2}.#{num + 10}", virtualbox__intnet: "psf2"

      ports.each do |port|
        s_config.vm.network "forwarded_port", guest: port, host: port
      end

      if codename == "precise"
        s_config.vm.provision :shell, inline: "add-apt-repository ppa:chris-lea/zeromq -y"
      end

      s_config.vm.provision :file, source: "salt/base/config/APT-GPG-KEY-PSF", destination: "~/APT-GPG-KEY-PSF"
      s_config.vm.provision :shell, inline: "apt-key add - < /home/vagrant/APT-GPG-KEY-PSF"
      s_config.vm.provision :shell, inline: "echo 'deb [arch=amd64] https://s3.amazonaws.com/apt.psf.io/psf/ #{codename} main' > /etc/apt/sources.list.d/psf.list"
      s_config.vm.provision :shell, inline: "apt-get update && apt-get install -y salt"
      s_config.vm.provision :shell, inline: "echo 'master: #{MASTER1}\n' > /etc/salt/minion.d/local.conf"
      s_config.vm.provision :shell, inline: "echo 'ENABLED=1' > /etc/default/salt-minion && service salt-minion restart"
      s_config.vm.provision :shell, inline: "salt-call state.highstate", run: "always"
    end
  end

end
