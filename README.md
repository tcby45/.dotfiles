# dotfiles

Managed with [thoughtbot's rcm](https://github.com/thoughtbot/rcm).

## Requirements
`zsh` must be set as your shell. If it isn't already, do the following:
```sh
chsh -s $(which zsh)
```
Additionally, for [pathogen](https://github.com/tpope/vim-pathogen) to work, you need to do the following:
```sh
mkdir -p ~/.vim/autoload && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

## Installation
Grab the repo:
```sh
git clone https://github.com/tcby45/dotfiles.git ~/.dotfiles
# or
hub clone tcby45/dotfiles ~/.dotfiles # if you use hub
```
Install [rcm](https://github.com/thoughtbot/rcm):
```
brew tap thoughtbot/formulae
brew install rcm
```
Install dotfiles:
```sh
env RCRC=~/.dotfiles/rcrc rcup
```
After that, you can run `rcup` without having to set `RCRC` again.

When this repo updates and you want to use the updated version, just do the following:

```sh
cd ~/.dotfiles
git pull
cd ~
env RCRC=~/.dotfiles/rcrc rcup # to update the symlinks
```
