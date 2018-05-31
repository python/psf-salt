https://github.com/dstufft/dotfiles.git:
  git.latest:
    - target: /home/psf-users/dstufft/.dotfiles
    - user: dstufft
    - force_clone: True
    - force_checkout: True
    - require:
      - sls: users

/home/psf-users/dstufft/.zshenv:
  file.symlink:
    - target: /home/psf-users/dstufft/.dotfiles/zsh/.zshenv
    - user: dstufft
    - group: dstufft
    - require:
      - sls: users
      - git: https://github.com/dstufft/dotfiles.git
