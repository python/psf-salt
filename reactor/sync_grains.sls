sync_grains:
  local.saltutil.sync_grains:
    - tgt: {{ data["id"] }}
