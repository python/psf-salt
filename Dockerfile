# Docker image to use with Vagrant
# Aims to be as similar to normal Vagrant usage as possible
# Adds SSH daemon, Systemd
# Adapted from https://github.com/BashtonLtd/docker-vagrant-images/blob/master/ubuntu1404/Dockerfile

FROM ubuntu:20.04
ENV container docker

RUN ln -snf /usr/share/zoneinfo/UTC /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update -y && apt-get dist-upgrade -y

# Install system dependencies, you may not need all of these
RUN apt-get install -y --no-install-recommends ssh sudo libffi-dev systemd openssh-client wget gnupg-utils gnupg apt-utils ca-certificates dbus locales cron dialog rsyslog iproute2 logrotate

RUN locale-gen en_US.UTF-8
COPY ./docker/etc/locale.conf /etc/locale.conf
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

COPY ./docker/etc/ssl/private/dhparams.pem /etc/ssl/private/dhparams.pem

# Needed to run systemd
# VOLUME [ "/sys/fs/cgroup" ]
# Doesn't appear to be necessary? See comments

# Add vagrant user and key for SSH
RUN useradd --create-home -s /bin/bash vagrant
RUN echo -n 'vagrant:vagrant' | chpasswd
RUN echo 'vagrant ALL = NOPASSWD: ALL' > /etc/sudoers.d/vagrant
RUN chmod 440 /etc/sudoers.d/vagrant
RUN mkdir -p /home/vagrant/.ssh
RUN chmod 700 /home/vagrant/.ssh
RUN echo "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA6NF8iallvQVp22WDkTkyrtvp9eWW6A8YVr+kz4TjGYe7gHzIw+niNltGEFHzD8+v1I2YJ6oXevct1YeS0o9HZyN1Q9qgCgzUFtdOKLv6IedplqoPkcmF0aYet2PkEDo3MlTBckFXPITAMzF8dJSIFo9D8HfdOV0IAdx4O7PtixWKn5y2hMNG0zQPyUecp4pzC6kivAIhyfHilFR61RGL+GPXQ2MWZWFYbAGjyiYJnAmCP3NOTd0jMZEnDkbUvxhMmBYSdETk1rRgm+R4LOzFUGaHqHDLKLX+FIPKcF96hrucXzcWyLbIbEgE98OHlnVYCzRdK8jlqm8tehUc9c9WhQ==" > /home/vagrant/.ssh/authorized_keys
RUN chmod 600 /home/vagrant/.ssh/authorized_keys
RUN chown -R vagrant:vagrant /home/vagrant/.ssh
RUN sed -i -e 's/Defaults.*requiretty/#&/' /etc/sudoers
RUN sed -i -e 's/\(UsePAM \)yes/\1 no/' /etc/ssh/sshd_config

# Start SSH
RUN mkdir /var/run/sshd
EXPOSE 22
RUN /usr/sbin/sshd

# Setup Salt Common

RUN wget --quiet -O /usr/share/keyrings/salt-archive-keyring.gpg https://repo.saltproject.io/py3/ubuntu/20.04/$(dpkg --print-architecture)/3004/salt-archive-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/salt-archive-keyring.gpg arch=$(dpkg --print-architecture)] https://repo.saltproject.io/py3/ubuntu/20.04/$(dpkg --print-architecture)/3004 focal main" > /etc/apt/sources.list.d/salt.list
RUN apt-get update -y && apt-get install -y --no-install-recommends salt-minion

# Start Systemd (systemctl)
CMD ["/lib/systemd/systemd"]
