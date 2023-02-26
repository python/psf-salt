#!/usr/bin/env ruby


SERVERS = [
  "backup-server",
  {:name => "bugs", :box => "ubuntu/xenial64", :codename => "xenial", :ports => [8080]},
  "buildbot",
  "cdn-logs",
  "codespeed",
  "consul",
  "docs",
  "downloads",
  "hg",
  {:name => "loadbalancer", :ports => [20000, 20001, 20002, 20003, 20004, 20005, 20010]},
  "mail",
  "moin",
  "planet",
  "postgresql",
  "pypy-web",
  "pythontest",
  "web-pypa",
]

SUBNET1 = "192.168.50"
SUBNET2 = "192.168.60"

MASTER1 = "#{SUBNET1}.2"
MASTER2 = "#{SUBNET2}.2"


Vagrant.configure("2") do |config|
  config.vm.provider "vmware" do |config|
    config.vm.box = "hashicorp/bionic64"
  end

  config.vm.provider "docker" do |docker, override|
    override.vm.box = nil
    override.ssh.insert_key = true

    docker.build_dir = '.'
    docker.has_ssh = true
    docker.remains_running = true
    docker.privileged = true
  end

  config.vm.define "salt-master" do |s_config|
    s_config.vm.hostname = "salt-master.vagrant.psf.io"
    s_config.vm.network "private_network", ip: MASTER1
    s_config.vm.network "private_network", ip: MASTER2

    s_config.vm.synced_folder "salt/", "/srv/salt/"
    s_config.vm.synced_folder "pillar/", "/srv/pillar/"

    # Provision the salt-master.
    s_config.vm.provision :shell, :inline => <<-HEREDOC
      apt-get update
      apt-get install -y salt-master python3-openssl
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
      while ! salt-call consul.cluster_ready | grep True; do echo 'waiting for consul'; sleep 1; done
      salt '*' saltutil.sync_all
      salt '*' saltutil.refresh_grains
      salt '*' saltutil.refresh_pillar wait=True timeout=30
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
      codename = server_c.fetch :codename, "bionic"
      ports = server_c.fetch :ports, []
    else
      server = server_c
      roles = [server_c]
      box = nil
      codename = "bionic"
      ports = []
    end

    config.vm.define server, autostart: false do |s_config|
      if box
        s_config.vm.box = box
      end

      s_config.vm.hostname = "#{server}.vagrant.psf.io"
      s_config.vm.network "private_network", ip: "#{SUBNET1}.#{num + 10}"
      s_config.vm.network "private_network", ip: "#{SUBNET2}.#{num + 10}"

      ports.each do |port|
        s_config.vm.network "forwarded_port", guest: port, host: port
      end

      # Provision the salt-minion
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
