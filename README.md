# dotfiles

Managed with [thoughtbot's rcm](https://github.com/thoughtbot/rcm).

## Requirements
You'll need `zsh` for these dotfiles. I highly recommend it over `bash`.
You'll also need to install [Vundle](https://github.com/VundleVim/Vundle.vim) and [zgen](https://github.com/tarjoilija/zgen):
```sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tarjoilija/zgen.git ~/.zgen
```

## Installation
Grab the repo:
```sh
git clone git@github.com:julian45/dotfiles.git ~/.dotfiles
```
Install [rcm](https://github.com/thoughtbot/rcm) using [Homebrew](http://brew.sh/) (though you can build from source if you prefer not to use Homebrew):
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
These dotfiles come with an alias called `shrefresh` which, when called, will:

1. Use zgen to pull updates from all the repos sourced in `zshrc`
2. `git pull` this repo
3. Use Vundle to install any new Vim plugins, if any, and update existing ones
