psf:
  pkgrepo.managed:
    {% if grains["oscodename"] == "jammy" %}
    - name: "deb [signed-by=/etc/apt/keyrings/packagecloud.gpg arch={{ grains["osarch"] }}] https://packagecloud.io/psf/infra/ubuntu {{ grains['oscodename'] }} main"
    - aptkey: False
    {% else %}
    - name: "deb https://packagecloud.io/psf/infra/ubuntu {{ grains['oscodename'] }} main"
    {% endif %}
    - file: /etc/apt/sources.list.d/psf.list
    - key_url: salt://base/config/APT-GPG-KEY-PSF

# Make source list globally readable.
/etc/apt/sources.list.d/psf.list:
  file.managed:
    - mode: "0644"
    - replace: False
    - require:
      - pkgrepo: psf
