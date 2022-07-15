postgresql-clusters:
  pg-vagrant-psf-io:
    host: postgresql-primary.vagrant.psf.io
    port: 5432
    sslmode: verify-ca
    ca_cert_pillar: 'tls:ca:PSF_CA'
