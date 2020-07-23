" === Indentation === "
silent! set cindent expandtab shiftround shiftwidth=0 softtabstop=-1 tabstop=4 textwidth=79 smartindent
" If 0, then uses value of 'tabstop'
" If negative, then uses 'shiftwidth' (which can use 'tabstop')

" For these filetypes set 'tabstop' to 2
execute "autocmd filetype ".
      \   "html,css,xhtml,xml" .",".
      \   "scss,sass"          .",".
      \   "javascript,json"    .",".
      \   "cmake"              .",".
      \   "lua"                .",".
      \   "markdown,md"        .",".
      \   "vim"                .",".
      \   "zsh,sh"             .",".
      \ " setlocal tabstop=2"

" For these filetypes set linebreak
execute "autocmd filetype ".
      \   "markdown,md"       .",".
      \ " setlocal linebreak"
