base:
  '*':
    - users
    - sudoers

  'roles:salt-master':
    - match: grain
    - firewall.salt
