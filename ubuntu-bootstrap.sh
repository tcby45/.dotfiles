# Basic server setup, rest is up to you
## Set some colors
importantRed='\e[1;31;47m' # bold, red text, white bg
goodGreen='\e[1;32m' # bold, green text, default bg
endColor='\e[0m' # back to normal colors

## Important!
#set -e # Script exits after first line that fails

## Install the basics
sudo apt-get update
sudo apt-get install build-essential git zsh

## RVM
echo -e "${importantRed}Installing RVM/Ruby${endColor}"; sleep 2
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 # Grabs RVM's GPG key and trusts it
curl -sSL https://get.rvm.io | bash -s stable --ruby # Grabs RVM and installs the latest stable version of Ruby
source ~/.rvm/scripts/rvm
echo -e "${goodGreen}RVM/Ruby installed and sourced! :D${endColor}"; sleep 1

## Antigen
echo -e "${importantRed}Installing Antigen${endColor}"; sleep 2
wget https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh -O .antigen.zsh # Grabs the antigen script and hides it from view
echo -e "${goodGreen}Antigen installed! :D${endColor}"; sleep 1

## Linuxbrew
echo -e "${importantRed}Installing Linuxbrew${endColor}"; sleep 2
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/linuxbrew/go/install)" # Runs install script
export PATH="$PATH:$HOME/.linuxbrew/bin" # Allows use of `brew` during/after this script
echo -e "${goodGreen}Linuxbrew installed!${endColor}"; sleep 1

## RCM
brew update; brew doctor # Makes sure brew is good to go
brew tap thoughtbot/formulae; brew install rcm

## Get repo dependencies
mkdir -p ~/.vim/autoload && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
mkdir -p ~/.vim/colors && wget https://raw.githubusercontent.com/raphamorim/lucario/master/vim/colors/pathogen.vim -O ~/.vim/colors/lucario.vim

## Install this repo
git clone git@github.com:tcby45/dotfiles.git
env RCRC=~/.dotfiles/rcrc rcup

## All done!
chsh -s $(which zsh)
echo -e "${goodGreen}EVERYTHING INSTALLED, HAVE FUN!${endColor}"
