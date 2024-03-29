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

### .spacemacs
```
ln -s ~/dotfiles/spacemacs ~/.spacemacs
```

If behind firewall, can use `emacs --insecure` to install melpa packages without https.

See `notes/spacemacs.md` in notes repository for more information on personal usage and helpful commands.

- Compilation problem notes:
  - `describe-variable` to see the value of a variable and who set it.
  - https://github.com/syl20bnr/spacemacs/issues/9549
- running lisp code:
  - highlight then `C-x C-e`
- YAS Snippet
  - Insert a snippet with `SPC i s` and search for the key or name
  - Use tab to move between pre-defined entries in the snippet
  - Add snippets to dotfiles/snippets
  - These are all included in spacemacs via the command:
    - `(setq yas-snippet-dirs (append yas-snippet-dirs
                                   '("~/dotfiles/snippets")))`
  - See my example for how to write a snippet or the internet.
  - Resources
    - https://github.com/AndreaCrotti/yasnippet-snippets
    - https://jaketrent.com/post/code-snippets-spacemacs/
    - https://gist.github.com/kazu634/290872

### Mac apps

1. Create your shell script (ex command.sh)
2. Give it execution permissions (chmod 755 ./command.sh)
3. Get Info -> Open with: -> (associate the Terminal app)
4. Get Info -> (put the icon you want on it)

### Miscellaneous
- print both stdout and stderr to file: `./command &> out`
- print stdout and stderr to screen and file: `program [arguments...] 2>&1 | tee out`

### Git
- git command to git rm all deleted files:
    - `git ls-files --deleted -z | xargs -0 git rm`
- `git d file.py` runs git diff in vimdiff
- after cloning, branch exists on github but not locally
    - see all branches: `git branch -a`
    - recreate branch locally `git branch -t branch origin/branch`
    - goto branch `git checkout branch`
- searching github:
    - `is:open is:pr org:mpc`

- Workflow
```
1. Get master, make new branch
2. Work on new branch
3. Meanwhile, everyone else works on master
4. Run `git pull --rebase origin master` to put your commits on top of master

```



### Networking
- If only able to access (listed below), you might only be able to access ipv6 websites.
    - google, youtube, facebook, example.com, yahoo.com
- dig command
    - used for querying DNS nameservers for information
    - or maybe not.
    - maybe only ipv6?

### Anaconda
```
conda env list
source activate data_analysis
source activate # activates normal anaconda binary
source deactivate
```

### PDFTK
```
pdftk f1.pdf f2.pdf f3.pdf cat out combined.pdf
```

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

## Touchpad Problems
- Installed `touchpad-indicator` via apt
- Ran it, open up preferences, and set time to disable touchpad after typing.
- I'm currently using 400ms, but I might change it.

```
sudo add-apt-repository ppa:atareao/atareao
sudo apt-get update
sudo apt-get install touchpad-indicator
```

## Coq and Spacemacs
- https://github.com/tchajed/spacemacs-coq
- http://develop.spacemacs.org/layers/+lang/coq/README.html
Followed instructions on github readme: "To install, run git clone https://github.com/tchajed/spacemacs-coq ~/.emacs.d/private/coq and add coq to your dotspacemacs-configuration-layers list."
Buuuut that didn't work

## Replacing strings in files

Verified that this works on macs with OpenBSD (non-Gnu) Sed
```
# replace all "foo/bar.hpp" with "foobar.hpp"
# Saves a backup in filename.cpp.bu
Sed -i.bu 's/foo\/bar.hpp/foobar.hpp/' *.cpp
```

## Reading/Messing with CSV Files

## Setting environment variables optionally:
I added the following to `.zshrc` for setting environmental variables when needed.

```
set_proxies() {
export HTTPS_PROXY=http://llproxy.llan.ll.mit.edu:8080
export http_proxy=http://llproxy.llan.ll.mit.edu:8080
export https_proxy=http://llproxy.llan.ll.mit.edu:8080
export no_proxy="localhost,127.0.0.1,.llan.ll.mit.edu"
}

use_anaconda() {
# added by Anaconda3 4.2.0 installer
export PATH="/Users/gr27141/anaconda3/bin:$PATH"
}
```


## Copy and Paste

You can use `pbcopy` to copy and paste files. pbcopy is only  found on mac; the linux version is `xclip` but given the slightly different usage, I've added an alias so that pbcopy works on linux:

```
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
```

And usage:
```
cat file.txt | pbcopy
# Now go wherever you want and paste
```

## Fish
```
# Add to path, permanently
set -U fish_user_paths ~/anaconda3/bin $fish_user_paths

set -x key value
```

## SSH

Make it so you don't have to type in ssh key everytime
```
$ eval 'ssh-agent'
$ ssh-add ~/.ssh/id_rsa
# good to go
```

## Internet

- `detect.xxxxx`
- `10.2.2.2`
