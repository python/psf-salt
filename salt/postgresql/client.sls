{% set servers = salt["mine.get"]("roles:postgresql", "minealiases.psf_internal", expr_form="grain") %}

postgresql:
  pkg.installed:
    - pkgs:
      - postgresql-client-9.3
      - pgbouncer
