base:
  '*':
    - users
    - sudoers
    - psf-ca

  'roles:salt-master':
    - match: grain
    - firewall.salt
