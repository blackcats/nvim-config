# This is my neovim configuration

This repository contain my current nvim configuration. 
It's the configuration that I actualy running for my personnal and 
professional use. I use this repository as a backup, and also as a quick 
install.


## Status
The configuration in this repository is fully functional, and in constant 
evolution. So you can use it at your own risk.


## Installation and usage
To use my configuration, you need, at least, nvim v0.9.1. You can install it 
with your package manager or directly from the last release available on the 
[neovim github repository](https://github.com/neovim/neovim).

Once Neovim is installed, clone the repository in a temporary directory:
```
$ cd /tmp/
$ git clone https://github.com/blackcats/nvim-config.git
```
then go into the nvim-config directory, and copy all the content in your 
neovim configuration directory.
```
$ cd /tmp/nvim-config
$ cp -rf * ~/.config/nvim/
```
Now launch neovim and run the Packer Sync command ```PackerSync```. This will 
install the last version of the themes and plugin present in my configuration.


## Author
This configuration was created by [Olivier LE GALL](lgo@black-cats.org).
 

## Licence
This configuration is under the GNU GPLv3 license.
