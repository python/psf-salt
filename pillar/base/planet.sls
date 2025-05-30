planet:
  subject_alternative_names:
    - planetpython.org
    - www.planetpython.org
  sites:
    planetpython:
      domain: planetpython.org
      cache: /srv/cache/
      output: /srv/planetpython.org/
      image: ghcr.io/python/planetpython:latest
      config: config.ini
    planetpython-3:
      domain: 3.planetpython.org
      cache: /srv/cache3/
      output: /srv/planetpython.org/3/
      image: ghcr.io/python/planetpython-3:latest
      config: config.ini
