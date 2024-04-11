{% if grains["oscodename"] == "jammy" %}
psfkey:
  file.managed:
    - name: /etc/apt/keyrings/packagecloud.asc
    - mode: "0644"
    - source: salt://base/config/APT-GPG-KEY-PSF

psf:
  pkgrepo.managed:
    - name: "deb [signed-by=/etc/apt/keyrings/packagecloud.asc arch={{ grains["osarch"] }}] https://packagecloud.io/psf/infra/ubuntu {{ grains['oscodename'] }} main"
    - aptkey: False
    - file: /etc/apt/sources.list.d/psf.list
    - require:
      - file: psfkey
{% else %}
psf:
  pkgrepo.managed:
    - name: "deb https://packagecloud.io/psf/infra/ubuntu {{ grains['oscodename'] }} main"
    - file: /etc/apt/sources.list.d/psf.list
    - key_url: salt://base/config/APT-GPG-KEY-PSF
{% endif %}

# Make source list globally readable.
/etc/apt/sources.list.d/psf.list:
  file.managed:
    - mode: "0644"
    - replace: False
    - require:
      - pkgrepo: psf
