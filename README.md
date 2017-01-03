# dotfiles

Managed with [thoughtbot's rcm](https://github.com/thoughtbot/rcm).

## Requirements
`zsh` must be set as your shell. If it isn't already, do the following:
```sh
chsh -s $(which zsh)
```
Additionally, for [Vundle](https://github.com/VundleVim/Vundle.vim) and [zgen](https://github.com/tarjoilija/zgen) to work, you need to do the following:
```sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tarjoilija/zgen.git ~/.zgen
```

## Installation
Grab the repo:
```sh
git clone git@github.com:tcby45/dotfiles.git ~/.dotfiles # Make sure you have an SSH key added to your account!
# or
hub clone tcby45/dotfiles ~/.dotfiles # if you use hub
```
Install [rcm](https://github.com/thoughtbot/rcm) using [Homebrew](http://brew.sh/) or [Linuxbrew](http://linuxbrew.sh/) (of course, you could also build from source):
```
brew tap thoughtbot/formulae
brew install rcm
```
Install dotfiles:
```sh
env RCRC=~/.dotfiles/rcrc rcup
```
After that, you can run `rcup` without having to set `RCRC` again.


## Updating
When this repo updates and you want to use the updated version, you can run `shrefresh` and the following things will happen:

1. zgen automatically checks for updates in all the sourced repos (see zshrc)
2. git automatically pulls in this repo
3. Vundle automatically checks each plugin (see vimrc) for updates
