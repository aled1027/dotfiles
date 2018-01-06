# oh-my-zsh variables
DISABLE_UPDATE_PROMPT=true 
DISABLE_AUTO_UPDATE=true
ZSH_THEME="af-magic"

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

