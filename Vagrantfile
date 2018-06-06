#!/usr/bin/env ruby


SERVERS = [
  "backup-server",
  {:name => "bugs", :box => "ubuntu/xenial64", :codename => "xenial"},
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

    # Provision the salt-master.
    s_config.vm.provision :shell, :inline => <<-HEREDOC
      wget -O - https://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest/SALTSTACK-GPG-KEY.pub | apt-key add -
      echo 'deb http://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest trusty main' > /etc/apt/sources.list.d/saltstack.list
    HEREDOC

    s_config.vm.provision :shell, :inline => <<-HEREDOC
      apt-get update
      apt-get install -y salt-master
      ln -sf /vagrant/conf/vagrant/master.conf /etc/salt/master.d/local.conf
    HEREDOC

    # Run this always to make sure salt-master is running
    s_config.vm.provision :shell, inline: "service salt-master restart", run: "always"

    # Provision the salt-minion
    s_config.vm.provision :shell, :inline => <<-HEREDOC
      apt-get install -y salt-minion
      echo 'master: #{MASTER1}\n' > /etc/salt/minion.d/local.conf
      service salt-minion restart
      salt-call state.highstate
    HEREDOC

    # Run this always, because we need to sync our states.
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

      # Provision the salt-minion
      if codename == "trusty"
        s_config.vm.provision :shell, :inline => <<-HEREDOC
          wget -O - https://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest/SALTSTACK-GPG-KEY.pub | apt-key add -
          echo 'deb http://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest trusty main' > /etc/apt/sources.list.d/saltstack.list
        HEREDOC
      end
      if codename == "xenial"
        s_config.vm.provision :shell, :inline => <<-HEREDOC
          wget -O - https://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest/SALTSTACK-GPG-KEY.pub | apt-key add -
          echo 'deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest xenial main' > /etc/apt/sources.list.d/saltstack.list
        HEREDOC
      end

      s_config.vm.provision :shell, :inline => <<-HEREDOC
        apt-get update
        apt-get install -y salt-minion
        echo 'master: #{MASTER1}\n' > /etc/salt/minion.d/local.conf
        service salt-minion restart
        salt-call state.highstate
      HEREDOC

      # Run this always, because we need to sync our states.
      s_config.vm.provision :shell, inline: "salt-call state.highstate", run: "always"
    end
  end

end
