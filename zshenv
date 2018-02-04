export ZSH=$HOME/dotfiles/oh-my-zsh
export GOPATH=$HOME/Documents/goworkspace
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
#export TERM=xterm-256color
export PATH=~/.cabal/bin:$PATH
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH="$PATH:/home/alex/anaconda3/bin"

alias grep='rg'
alias gpp='git push origin $(current_branch)'
# internal_utils.cmake is a key CMake file in google test. Do not accidentally delete it.
alias cleancmake='find . -iwholename "*cmake*" -not -name CMakeLists.txt -not -name internal_utils.cmake -delete'
alias p='python'
alias pi='python -i'


