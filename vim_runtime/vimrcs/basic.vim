"------------------------------------------
" vimrc By Alex Ledger. Adapted from the ultimate vimrc
"------------------------------------------
"
let mapleader=" "
vmap <silent> <Leader>rs <Plug>SendSelectionToTmux
nmap <silent> <Leader>rs <Plug>NormalModeSendToTmux
nmap <silent> <Leader>rv <Plug>SetTmuxVars

"
"---------------------GENERAL-------------------------
set mouse=
set nocompatible
syntax on
set cursorline
set history=700
filetype plugin on
filetype indent on
" filetype plugin indent on
:imap jj <Esc>

set backspace=eol,start,indent

set background=dark
colorscheme solarized

" auto changes file when it is changed on the outside
set autoread

"  hide buffer when it becomes abandoned
set hid
set nu
set ff=unix 


"---  Moving between splits  ----------------------------------------------
nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-K> <C-W><C-K>

"------------SEARCHING and TABBING-------------
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

set autoindent
set smartindent
set wrap

set ignorecase
set smartcase
set hlsearch
set incsearch

"--------------FOLDING----------------------
" nnoremap <space> za
" vnoremap <space> zf
nnoremap <leader>z za
vnoremap <leader>z zf

"----------EDITING VIMRC on the fly-------------
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" -----------MOVING and TABS -----------------------
" treat long lines as line break
map j gj
map k gk

map 0 ^
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

map bn :bnext<cr>
map bN :bprev<cr>
map bd :bdelete<cr>

" for moving around with buffers, I prefer the class method
" :bn
" :b{number of buffer (starts at 1)}

set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

set nobackup
set nowb
set noswapfile

" --------------Miscellaneous-------------------------

" adds in comments from the line marked t to current line
nnoremap <leader>c :call CommentWithSlashes()<cr>

" add in header comments with $h
" inoremap <buffer> $h #--- PH ----------------------------------------------<esc>FP2xi

function! CommentWithHashtags()
    'c,.s/^/#/
    noh
endfunction

function! CommentWithSlashes()
    'c,.s\^\{//}\
    noh
endfunction

" replaces in visual section, not sure if working
" vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>

function! HasPaste()
    if &paste
        return 'PASTE MODE '
    en
    return ''
endfunction

" delete trailing whitesppae on save
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction
function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"
    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")
    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("Ack \"" . l:pattern . "\" " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif
    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

"------------------------------------------------------
" => Other and/or sophisticated things
"------------------------------------------------------
" Won't automatically switch to markdown
" autocmd BufNewFile, BufRead *.md set filetype=markdown
" Instead, use this command, or set manually within vim
" nnoremap <leader>smd :set filetype=markdown
" Visual mode pressing * or # to search current selection
" vnoremap <silent> * :call VisualSelection('f', '')<CR>
" vnoremap <silent> # :call VisualSelection('b', '')<CR>
" auto remove windows ^M when encodings get messed up
" noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
" can change color of highlighting with something like the following
" :hi Search guibg=LightBlue
" something about moving the cursor
" set so=7
"
