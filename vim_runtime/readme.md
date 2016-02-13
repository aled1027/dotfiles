### Alex Ledgers vimrc. 
#### Adapted from ultimate vimrc

## TODO
    - update update_plugins.py
    - learn about folding
    - maybe add these plugins:
        - hindent 
            - https://github.com/chrisdone/hindent
        - tagbar
        - taglist
        - YATES
        - vim multiple-cursors
    - vim folds
        - out of the box with haskellmode-vim

## Usage
    - control f for file search
    - control g for tag search
    - <leader> cl: comment single line or multiple lines
    - <leader c <leader>: uncomment line or multiple lines
    - executing commands inside of vim
        - :! echo 'here'
    - reading a file / command into vim buffer
        - :r file_name.py
        - :r ! grep args args
    - folds
        - zi  switch folding on or off
        - za  toggle current fold open/closed
        - zc  close current fold
        - zf  inserts fold markers
        - zR  open all folds
        - zM  close all folds
        - zv  expand folds to reveal cursor
        - mapped space bar to open and close folds
    - save sessions
        - :mksession! today.ses
        - vim -S today.ses
    - use buffers
        - :ls
        - :b ...
        - :b #
    - yank and put
        - :reg to check all registers
        - "ay to yank into a
        - "ap to put from p
    - substitutions
        - :8,10 x/search/replace/g
        - :%s/search/replace/g
        - g replace all (global)
        - v means not match
        - e.g: %s/#dark#/#your_theme_name#/g
    - Syntastic
        - if in passive mode, |:SyntasticCheck| to check things
        - |:Errors| opens a buffer with the errors.
## Plugins
    - ctags
        - ctags -R  *
            - make tags for directory and all subdirectories
        - ctags -R *.c
            - only .c files
        - <Ctrl-]> to go to definition of cursor position
        - <Ctrl-t> to pop back
        - :tags to see list of tags and where you are
        - can use plugin YATES to work with tags and buffers (not currently installed)
    - misc
        - color chart: http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
    - bufexplorer 
        - use \be \bs \bv
    - ctrl-p
        - Press <F5> to purge the cache for the current directory to get new files, remove deleted files and apply new ignore options.
        - Press <c-f> and <c-b> to cycle between modes.
        - Press <c-d> to switch to filename only search instead of full path.
        - Press <c-r> to switch to regexp mode.
        - Use <c-j>, <c-k> or the arrow keys to navigate the result list.
        - Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a new split.
        - Use <c-n>, <c-p> to select the next/previous string in the prompt's history.
        - Use <c-y> to create a new file and its parent directories.
        - Use <c-z> to mark/unmark multiple files and <c-o> to open them.
    - nerdtree
    - tlib is utility for other plugins
    - vim-airline
        - for this to work, need colors for terminal to be 256
        - I added "export TERM=xterm-256color" to my .zshrc
    - vim-commentary
        - gcc - comment out line
        - gc  - comment out more than a line
    - vim-repeat
        - . command now repeats whole mapping
    - vim-surround
    - vimux
        - mapped <leader>r :VimuxPromptCommand<cr>
            - (for "run")
        - mapped <leader>t :VimuxRunLastCommand<cr>
        - opens up a tmux on bottom part of screen
        - work with it as it were another tmux instance
        - note: requires downloading tmux (apt-get tmux)
    - haskellmode-vim
        - nice videos on usage: http://projects.haskell.org/haskellmode-vim/screencasts.html
        - http://robertmassaioli.wordpress.com/2010/06/16/haskellmode-guide-awesome-haskell-with-vim/
        - folds supported, but idk how to use them
        - gf -- go to file
        - _ct generate tags file
        - [I - display lines containing keyword under cursor
## VIMRC
- meta
    - primarily from learnvimscriptthehardway.com/stevelosh.com/
- mappings
    - map
        - mappings in normal mode
    - nmap
        - mappings in normal mode
    - vmap
        - mappings in visual mode
    - imap 
        - mappings in insert mode
        - :imap <c-d> <esc>ddi
        - can press control-d to delete a line while in insert mode
    - watch for infinite recursion
    - can prevent recursion with nnoremap
    - try to always *use* the *non-recursive mappings*
- Leader 
    - default leader is "\"
    - :let mapleader = "-"
- Editing the vimrc file
    - open vimrc
        - :nnoremap <leader>ev :vsplit $MYVIMRC<cr>
    - source vimrc file ie apply changes
        - :nnoremap <leader>sv :source $MYVIMRC<cr>
- Dectecting Filetypes
    - make file called "factorial.pn"
    - get current filetype
        - :set filetype?
    - go to ~/.vim/ftdetect/potion.vim and put in the following:
        - might be ~/.vim/bundle/potion/ftdetect/potion.vim
        - au BufNewFile,BufRead *.pn set filetype=potion
    - helpful things
        - read :help ft
        - read :help setfiletype
- Basic Syntax Highlighting
    - do in ~/.vim/syntax/potion.vim
    - example file
        if exists("b:current_syntax")
            finish
        endif
        
        # define a "chunk of syntax" using syntax keyword
        # define groups piecemeal
        syntax keyword potionKeyword loop times to while
        syntax keyword potionKeyword if elsif else
        syntax keyword potionKeyword class return
        
        # define a new syntax group and link to different highlight group 
        syntax keyword potionFunction print join string
        
        # link chunks into highlightin groups
        highlight link potionKeyword Keyword
        highlight link potionFunction Function

- ~/.vimrc should look like this:
set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim

"source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry




