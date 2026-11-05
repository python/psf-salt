# Mitigation for CVE-2026-31431 ("Copy Fail")
#
# Blocks the algif_aead kernel module — the user-space front door used by
# Copy Fail's container-escape primitive — by writing a modprobe.d "install"
# rule and unloading the module if it is currently in memory.
#
# Safe across the full PSF fleet (Ubuntu 12.04 .. 24.04). On kernels that
# never had the buggy algif_aead optimization (pre-2017), the file is inert.
# On kernels where it matters, it removes the attack surface until the host
# is upgraded to a patched kernel containing mainline a664bf3d603d.
#
# Disabling algif_aead does NOT affect dm-crypt/LUKS, kTLS, IPsec/XFRM,
# OpenSSL/GnuTLS/NSS, SSH, or kernel keyring crypto — those use the in-kernel
# crypto API directly and do not traverse AF_ALG.
#
# Refs:
#   https://copy.fail/
#   https://github.com/theori-io/copy-fail-CVE-2026-31431

/etc/modprobe.d/disable-algif.conf:
  file.managed:
    - contents: |
        # Managed by Salt: salt/base/harden/copy-fail.sls
        # Mitigation for CVE-2026-31431 (Copy Fail).
        # Remove this file once the host is on a kernel containing a664bf3d603d.
        install algif_aead /bin/false
    - user: root
    - group: root
    - mode: "0644"

# Unload the module if it is currently loaded. Idempotent: the `unless` check
# makes this a no-op when algif_aead is not in /proc/modules.
copy-fail-unload-algif-aead:
  cmd.run:
    - name: rmmod algif_aead
    - unless: '! grep -q "^algif_aead " /proc/modules'
    - require:
      - file: /etc/modprobe.d/disable-algif.conf
