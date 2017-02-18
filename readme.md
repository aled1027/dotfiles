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

### Miscellaneous
- print both stdout and stderr to file: `./command &> out`

### Git
- git command to git rm all deleted files:
    - `git ls-files --deleted -z | xargs -0 git rm`
- `git d file.py` runs git diff in vimdiff
- after cloning, branch exists on github but not locally
    - see all branches: `git branch -a`
    - recreate branch locally `git branch -t branch origin/branch`
    - goto branch `git checkout branch`

### Networking
- If only able to access (listed below), you might only be able to access ipv6 websites.
    - google, youtube, facebook, example.com, yahoo.com
- dig command
    - used for querying DNS nameservers for information
    - or maybe not.
    - maybe only ipv6?

### Anaconda
`conda env list`
`source activate data_analysis`
`source activate` # activates normal anaconda binary
`source deactivate`

### PDFTK
`pdftk f1.pdf f2.pdf f3.pdf cat out combined.pdf`

### GDB
- open up code on top
    - ctrl-x then a 
    - ctrl-x 1
    - ctrl-x 2
    - ctrl-l to clear
- Inside of gdb, `run > out` or run command-line-args > out` will print to a file.

##  CMAKE
- cmake clean: 
find . -iwholename '*cmake*' -not -name CMakeLists.txt -delete

- To use boost in cmake:
```
# Add boost libraries
find_package( Boost COMPONENTS system REQUIRED )
link_directories( ${Boost_LIBRARY_DIRS} )
include_directories( ${Boost_INCLUDE_DIRS} )
```

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

## NVIM
https://arusahni.net/blog/2015/03/switching-to-neovim-part-1.html


