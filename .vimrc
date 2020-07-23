""""""""""""""""""""""""""""""""""""""""
" Maintainer: homogulosus
"
" Sections:
"   1 - Make Vim even more usable
"   2 - Files and Backups
"   3 - Text and indentation
"   4 - Status Line | Vim Lightline
"   5 - Mappigns
"   6 - Helper Functions
"   7 - Pluging Configuration
"   8 - Miscelanea
"
"""""""""""""""""""""""""""""""""""""""

scriptencoding utf-8
set encoding=utf8

" Load matchit.vim, but only if the user hasn't installed a newer version.
" if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
"   runtime! macros/matchit.vim
" endif

source ~/.vim/.plugs.vim

" === 1 === "
if &compatible
  set nocompatible
endif

let mapleader = ","
let maplocalleader = ";"
set autoread
autocmd FocusGained,BufEnter * checktime

let $LANG='en'
set langmenu=en

silent! set wildmenu ruler cmdheight=2 hidden ignorecase

" Configure backspace so it acts as it should act
silent! set backspace=eol,start,indent whichwrap+=<,>,h,l smartcase hlsearch incsearch showmatch  noerrorbells novisualbell noshowcmd
silent! set tw=80 mat=2 clipboard=unnamed omnifunc=syntaxcomplete#complete synmaxcol=512 laststatus=2
" More completion with Find command
" set path+=**

" === 2 === "
silent! set ffs=unix,mac,dos undodir=~/.vim/undo dir=~/tmp

" :W sudo saves the file
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
catch
endtry

" === 3 === "
silent! set smarttab lbr ai

source ~/.config/nvim/indent/indentation.vim

" ===  4 === Lightline === "
source ~/.config/nvim/plug_conf/lightline.vim

" === 5 === "
source ~/.config/nvim/mappings.vim

" === 6 === "
source ~/.config/nvim/plug_conf/plug_conf.vim
source ~/.config/nvim/plug_conf/dirvish_conf.vim
source ~/.config/nvim/plug_conf/coc_conf.vim
source ~/.config/nvim/plug_conf/fzf.vim
source ~/.config/nvim/plug_conf/asyncrun_conf.vim

" === 7 === "
source ~/.config/nvim/conf/abbrev.vim
source ~/.config/nvim/conf/source_script.vim
source ~/.config/nvim/conf/zoom.vim
source ~/.config/nvim/conf/extra_functions.vim

" === 8 === "
let base16colorspace=256  " Access colors present in 256 colorspace

try
  colorscheme base16-gruvbox-dark-hard
catch
  colorscheme industry
endtry

source ~/.vim/cursor.vim
source ~/.config/nvim/syntax.vim
source ~/.cache/calendar.vim/credentials.vim

" DEBUGGER
let g:termdebug_wide=1

set secure

" vim:set ft=vim sw=2 sts=2:
