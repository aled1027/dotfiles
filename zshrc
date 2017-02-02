export ZSH=$HOME/dotfiles/oh-my-zsh
export GOPATH=$HOME/Documents/goworkspace
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
export TERM=xterm-256color
export PATH=~/.cabal/bin:$PATH
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH="$PATH:/home/alex/anaconda3/bin"

# oh-my-zsh variables
DISABLE_UPDATE_PROMPT=true 
DISABLE_AUTO_UPDATE=true
ZSH_THEME="af-magic"

alias gpp='git push origin $(current_branch)'
alias cleancmake='find . -iwholename "*cmake*" -not -name CMakeLists.txt -delete'
alias vims='vim -S'
alias vimr='vim -R'
alias r='./run.sh'
alias m='make'
alias mo='make &> out.out'
alias mc='make clean'
alias mr='make run'
alias p='python'
alias pi='python -i'
alias pd='python setup.py develop'
alias pt='python tests.py'

# Computer specific settings
if [ $(hostname) = alex-ThinkPad-T440s ]; then
    alias open='xdg-open'
    # for keychain
    eval $(keychain --quiet --eval --agents ssh id_rsa)
else
    alias open='open'
fi

plugins=(git)
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi






