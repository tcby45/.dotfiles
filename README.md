# dotfiles

Managed with [thoughtbot's rcm](https://github.com/thoughtbot/rcm).

## Requirements
`zsh` must be set as your shell. If it isn't already, do the following:
```sh
chsh -s $(which zsh)
```

## Installation
Grab the repo:
```sh
git clone https://github.com/tcby45/dotfiles.git
# or
hub clone tcby45/dotfiles # if you use hub
```
Install [rcm](https://github.com/thoughtbot/rcm):
```
brew tap thoughtbot/formulae
brew install rcm
```
Install dotfiles:
```sh
env RCRC=/path/to/dotfilesrepo/rcrc rcup
```
After that, you can run `rcup` without having to set `RCRC` again.

When this repo updates and you want to use the updated version, just run the "Install dotfiles" command again.
