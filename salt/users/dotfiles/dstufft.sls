dstufft-git:
  pkg.installed

https://github.com/dstufft/dotfiles.git:
  git.latest:
    - target: /home/psf-users/dstufft/.dotfiles
    - user: dstufft
    - force_clone: True
    - force_checkout: True
    - force_reset: True
    - require:
      - pkg: dstufft-git
      - user: dstufft

/home/psf-users/dstufft/.zshenv:
  file.symlink:
    - target: /home/psf-users/dstufft/.dotfiles/zsh/.zshenv
    - user: dstufft
    - group: dstufft
    - require:
      - git: https://github.com/dstufft/dotfiles.git
