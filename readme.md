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
- `git d file.py` runs git diff in vimdiff

### Networking
- If only able to access (listed below), you might only be able to access ipv6 websites.
    - google, youtube, facebook, example.com, yahoo.com
- dig command
    - used for querying DNS nameservers for information
    - or maybe not.
    - maybe only ipv6?


### Anaconda
`source activate data_analysis`
`source deactivate`

### PDFTK
`pdftk f1.pdf f2.pdf f3.pdf cat out combined.pdf`

### GDB
- open up code on top
    - ctrl-x then a 
    - ctrl-x 1
    - ctrl-x 2
    - ctrl-l to clear

### Autoconf
- Input files are `configure.am` and `Makefile.am`

```
aclocal
autoconf
./configure
```

- If you see the error, `configure: error: cannot find install-sh, install.sh, or shtool in build/autoconf "."/build/autoconf`, then:

```
libtoolize --force
aclocal
autoheader
automake --force-missing --add-missing
autoconf
./configure
```

- reference: http://askubuntu.com/questions/27677/cannot-find-install-sh-install-sh-or-shtool-in-ac-aux



