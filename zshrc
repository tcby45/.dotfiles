# Path to your oh-my-zsh installation.
export ZSH=$HOME/.zgen/robbyrussell/oh-my-zsh-master

# Aliases
alias aui="sudo apt-get update; sudo apt-get upgrade; sudo apt-get dist-upgrade"
alias kb="keybase"
alias gpg="gpg2"
alias cls="clear"

# load zgen
source "${HOME}/.zgen/zgen.zsh"
# plugin time
if ! zgen saved; then
	echo "Creating a zgen save"

	zgen oh-my-zsh

	# plugins
	zgen oh-my-zsh plugins/git
	zgen oh-my-zsh plugins/sudo
	zgen oh-my-zsh plugins/brew
	zgen oh-my-zsh plugins/emoji
	zgen oh-my-zsh plugins/common-aliases
	zgen oh-my-zsh plugins/systemd
	if [[ -f /etc/lsb-release ]] || [[ -f /etc/os-release ]] then
		zgen oh-my-zsh plugins/debian
	fi
	if [[ -f /etc/arch-release ]] then
		zgen oh-my-zsh plugins/archlinux
	fi
	if [[ $(uname) == "Darwin" ]] then
		zgen oh-my-zsh plugins/osx
	fi
	zgen load zsh-users/zsh-syntax-highlighting

	# theme(s)
	#zgen oh-my-zsh themes/half-life
	zgen load subnixr/minimal
	# zgen load yous/lime
	# zgen load tobyjamesthomas/pi

	# save all to init script
	zgen save
fi

# Add linuxbrew back to the PATH, and have man and info paths
export PATH=$PATH:$HOME/.linuxbrew/bin
export MANPATH="/home/ubuntu/.linuxbrew/share/man:$MANPATH"
export INFOPATH="/home/ubuntu/.linuxbrew/share/info:$INFOPATH"
### Bashhub.com Installation
if [ -f ~/.bashhub/bashhub.zsh ]; then
	source ~/.bashhub/bashhub.zsh
fi

# Golang support
export GOPATH=$HOME/.linuxbrew/opt/go/libexec/bin/bin
export PATH=$PATH:$GOPATH

# # Java home
# export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64/jre"
# export PATH="$JAVA_HOME/bin:$PATH"

# For a complete refresh of rc files
alias shrefresh="zgen update; git -C ~/.dotfiles pull; vim +PluginInstall +qall; vim +PluginUpdate"

# Gets rid of pain-in-the-butt .zcompdumps
#rm -r .zcompdump*

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


export PATH="$PATH:$HOME/.gnupg"

export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"
export PATH="/home/linuxbrew/.linuxbrew/opt/python/libexec/bin:$PATH"
export PATH=$PATH:/home/linuxbrew/.linuxbrew/opt/go/libexec/bin
export PATH="/home/linuxbrew/.linuxbrew/sbin:$PATH"
export PATH"=/home/linuxbrew/.linuxbrew/Homebrew/Library/Homebrew/vendor/portable-ruby/current/bin:$PATH"

# theme config
MNML_RPROMPT=('mnml_cwd 0' mnml_git)

# If using Microsoft Terminal, default to ~ rather than /mnt/c/Users/[username]
if [[ "$(uname -a)" == *"Microsoft"* ]]; then
	cd ~
fi
