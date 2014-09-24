exclude:
  - id: /etc/diamond/collectors/HttpdCollector.conf


/etc/apache2/sites-available/stats.conf:
  file.managed:
    - source: salt://monitoring/client/configs/apache2.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: apache2
    - watch_in:
      - service: apache2


/etc/apache2/sites-enabled/stats.conf:
  cmd.run:
    - name: a2ensite stats
    - unless: ls /etc/apache2/sites-enabled/stats.conf
    - require:
      - file: /etc/apache2/sites-available/stats.conf
    - require:
      - pkg: apache2
    - watch_in:
      - service: apache2


HttpdCollector-Override:
  file.managed:
    - name: /etc/diamond/collectors/HttpdCollector.conf
    - source: salt://monitoring/client/configs/Collector.conf.jinja
    - template: jinja
    - context:
      collector:
        enabled: True
    - use:
      - file: /etc/diamond/diamond.conf
    - watch_in:
      - service: diamond
    - require:
      - file: /etc/apache2/sites-available/stats.conf
      - file: /etc/apache2/sites-enabled/stats.conf
