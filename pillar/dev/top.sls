base:
  '*':
    - networking
    - users
    - sudoers
    - psf-ca

  'roles:apt':
    - match: grain
    - firewall.http
    - secrets.aptly

  'roles:salt-master':
    - match: grain
    - firewall.salt
