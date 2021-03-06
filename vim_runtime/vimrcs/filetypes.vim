""""""""""""""""""""""""""""""
" => Markdown section
""""""""""""""""""""""""""""""
" autocmd BufNewFile,BufRead *.md set filetype=markdown
let g:vim_markdown_folding_disabled=0


""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
" let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return 
au FileType python inoremap <buffer> $i import 
au FileType python inoremap <buffer> $p print 
au FileType python inoremap <buffer> $f #--- PH ----------------------------------------------<esc>FP2xi
au FileType python map <buffer> <leader>1 /class 
au FileType python map <buffer> <leader>2 /def 
au FileType python map <buffer> <leader>C ?class 
au FileType python map <buffer> <leader>D ?def 
au FileType python set nosmartindent
au FileType python let g:syntastic_ignore_files = ['\.py$']

au FileType python syn match   pythonDefStatement  /^\s*\%(def\|class\)/
       \ nextgroup=pythonFunction skipwhite

au FileType python syn region  pythonFunctionFold  start="^\z(\s*\)\%(def\|class\)\>"
       \ end="\ze\%(\s*\n\)\+\%(\z1\s\)\@!." fold transparent

hi link pythonDefStatement Statement

set foldmethod=syntax

""""""""""""""""""""""""""""""
" => Java section
"""""""""""""""""""""""""""""""
au Filetype java syntax on

""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <c-t> AJS.log();<esc>hi
au FileType javascript imap <c-a> alert();<esc>hi

au FileType javascript inoremap <buffer> $r return 
au FileType javascript inoremap <buffer> $f //--- PH ----------------------------------------------<esc>FP2xi

function! JavaScriptFold() 
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction


""""""""""""""""""""""""""""""
" => CoffeeScript section
"""""""""""""""""""""""""""""""
function! CoffeeScriptFold()
    setl foldmethod=indent
    setl foldlevelstart=1
endfunction
au FileType coffee call CoffeeScriptFold()

""""""""""""""""""""""""""""""
" => Haskell section
"""""""""""""""""""""""""""""""
au FileType haskell set tabstop=8                   "A tab is 8 spaces
au FileType haskell set expandtab                   "Always uses spaces instead of tabs
au FileType haskell set softtabstop=2               "Insert 4 spaces when tab is pressed
au FileType haskell set shiftwidth=2                "An indent is 4 spaces
au FileType haskell set shiftround                  "Round indent to nearest shiftwidth multiple

au BufEnter *.hs compiler ghc
let g:ghc="/usr/bin/ghc"
let g:haddock_browser="/usr/bin/firefox"

""""""""""""""""""""""""""""""
" => CPlusPlus section
"""""""""""""""""""""""""""""""
au FileType cpp set autoindent
au FileType cpp set smartindent
au FileType cpp set tabstop=2        " tab width is 4 spaces
au FileType cpp set shiftwidth=2     " indent also with 4 spaces
au FileType cpp set expandtab        " expand tabs to spaces
au FileType cpp set textwidth=80
au FileType cpp set showmatch
au FileType cpp set comments=sl:/*,mb:\ *,elx:\ */
au FileType cpp :set makeprg=make\ -C\ build\ -j8
" color 80th column dark grey - the end of a line.

" au FileType cpp :set colorcolumn=80
" au FileType cpp highlight ColorColumn ctermbg=darkgray
" au FileType cpp map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>


""""""""""""""""""""""""""""""
" => C section
"""""""""""""""""""""""""""""""
au FileType c map <F4> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>

augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c
augroup END


""""""""""""""""""""""""""""""
" => FSharp
"""""""""""""""""""""""""""""""
















