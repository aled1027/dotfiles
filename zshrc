# Path to your oh-my-zsh installation.
export ZSH=$HOME/dotfiles/oh-my-zsh


#-----------My Additions-----------
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
export LD_LIBRARY_PATH=/home/alex/my_libs/msgpack-c

alias gcc='gcc -std=c99'
alias g++='g++-4.9 -std=c++14 '
alias vimq='env | grep vim'
alias vims='vim -S'
alias vimr='vim -R'
alias m='make'
alias mo='make &> out.out'
alias mc='make clean'
# alias p='python'
alias p='python -W ignore'
alias p3='python3 -W ignore'
alias pd='python -W ignore -m pdb'
alias pi='python -W ignore -i'
alias p3i='python3 -W ignore -i'
export TERM=xterm-256color
export PYTHONSTARTUP="$HOME/.pythonrc"

# Changing things based on OS
if [[ $USER == 'aledger' ]] ; then
    alias open='open'
else
    alias open='gnome-open'
fi


# more additions at end

#--------End my additions----------

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

ZSH_THEME="af-magic"

#PROMPT="alex"
#export PS1="alex"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH="/home/alex/anaconda3/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

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
#
#
##--- MORE MY ADDITIONS ----------------------------------------------
export PATH=~/.cabal/bin:$PATH
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
