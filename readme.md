## About
This was built off of Robby Russell's oh-my-zsh and amix's vimrc.

## Setup
To link up the dotfiles, simply do the following:

### .zshrc:
```
source ~/dotfiles/zshrc
```
### .vimrc
```
source ~/dotfiles/vimrc
```

## Updates

### To update zshrc
TODO

### To update vim
- to update the vim files, simply run `cd vim_runtime; python update_plugins.py`

### Miscellaneous
- Good command line tools:
    - `htop` - a better version of `top`
- git command to git rm all deleted files:
    - `git ls-files --deleted -z | xargs -0 git rm`
- Inside of gdb, `run > out` or run command-line-args > out` will print to a file.

### Anaconda
`source activate data_analysis`
`source deactivate`


