# st Configuration Guide

## Instructions

1. Clone the Suckless st git repo OR download the latest stable st release tarball. I use the stable tarball right now since a lot of patches are for that.
2. Init it as a git repo if not already with `git init`.
3. Delete the existing `config.h` file.
4. Run the dotfiles `install.sh` script create symlinks to the dotfiles `config.h` and `patches` dir.
5. In the st directory run the patches with `patch patches/*.diff`. Answer `n` or Enter (No) to any questions asking to reverse a patch.
6. Rebuild and install st with `make && sudo make install`
