" ==== EXPERIMENTAL DARK FEATURES ==== "
" https://www.reddit.com/r/neovim/comments/f04fao/my_biggest_vimneovim_wish_single_width_sign_column/
" set signcolumn=auto:2
set signcolumn=yes
set virtualedit=onemore

" Makes alt key behave like vscode except vimimize with j/k keys.
" Works with visual blocks
" TODO make it work with h/l keys
nnoremap <M-j> :m .+1<CR>==
nnoremap <M-k> :m .-2<CR>==
inoremap <M-j> <Esc>:m .+1<CR>==gi
inoremap <M-k> <Esc>:m .-2<CR>==gi
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv

" Live Substitution
" nosplit: Shows the effects of a command incrementally, as you type.
"	split: Also shows partial off-screen results in a preview window.
set inccommand=split

" highlight MyHighlights ctermfg=blue
" match MyHighlights /FIXIT/

" +++ GRAVEYARD +++ "
"Ack integration
" let g:ackprg = 'ag --nogroup --nocolor --column'
