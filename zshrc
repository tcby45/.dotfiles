# Path to your oh-my-zsh installation.
export ZSH=$HOME/.zgen/robbyrussell/oh-my-zsh-master

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="half-life"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"
export EDITOR="vim"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias aui="sudo apt-get update; sudo apt-get upgrade; sudo apt-get dist-upgrade"
#alias agu="sudo apt-get update" # obsoleted by debian plugin
#alias agi="sudo apt-get install" # obsoleted by debian plugin
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
	#zgen load subnixr/minimal
	zgen load yous/lime

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


# Add support for nvbn/thefuck
eval "$(thefuck --alias)"

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
