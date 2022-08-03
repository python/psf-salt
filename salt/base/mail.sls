{% set smtp = salt["pillar.get"]("system-mail") %}

{% if smtp %}
mail-pkgs:
  pkg.installed:
    - pkgs:
      - ssmtp
      - bsd-mailx


/etc/ssmtp/ssmtp.conf:
  file.managed:
    - source: salt://base/config/ssmtp.conf.jinja
    - template: jinja
    - context:
        smtp: {{ smtp }}
    - user: root
    - group: root
    - mode: "0640"
    - show_diff: False
    - require:
      - pkg: mail-pkgs
{% endif %}
