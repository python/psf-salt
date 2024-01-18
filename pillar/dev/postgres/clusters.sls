postgresql-clusters:
  pg-vagrant-psf-io:
    host: salt-master.vagrant.psf.io
    port: 5432
    sslmode: verify-full
    ca_cert_pillar: 'tls:ca:PSF_CA'
