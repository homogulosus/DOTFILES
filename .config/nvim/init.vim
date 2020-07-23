""""""""""""""""""""""""""""""""""""""""
" Version: 1.4

" Maintainer: homogulosus
"
" Sections:
"   1 - Make Vim even more usable
"   2 - Files and Backups
"   3 - Status Line | Lightline
"   4 - Mappigns
"   5 - Pluging Configuration
"   6 - Abbreviations
"   7 - Miscelanea
"   8 - ColorSchemes
"   9 - Syntax
"
"""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
scriptencoding utf-8

" FIXIT: load less matchit instances!
" Load matchit.vim, but only if the user hasn't installed a newer version.
" if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
"   runtime! macros/matchit.vim
" endif
source ~/.config/nvim/plugins.vim

"==== 1 ===="
let g:mapleader=','
let g:maplocalleader=';'
silent! set noshowcmd clipboard=unnamed synmaxcol=512 wrap ignorecase
" https://www.reddit.com/r/neovim/comments/f04fao/my_biggest_vimneovim_wish_single_width_sign_column/
silent! set signcolumn=yes virtualedit=onemore inccommand=split

"==== 2 ===="
" NOTE: see /nvim/indent/
source ~/.config/nvim/indent/indentation.vim

"==== 3 ===="
source ~/.config/nvim/plug_conf/lightline.vim

"==== 4 ===="
source ~/.config/nvim/conf/alt_keys.vim
source ~/.config/nvim/mappings.vim

"==== 5 ===="
" source ~/.config/nvim/plug_conf/plug_conf.vim
source ~/.config/nvim/plug_conf/coc_conf.vim
source ~/.config/nvim/plug_conf/fzf.vim
source ~/.config/nvim/plug_conf/asyncrun_conf.vim
source ~/.config/nvim/plug_conf/dirvish_conf.vim
source ~/.config/nvim/plug_conf/GitMessenger.vim
source ~/.config/nvim/plug_conf/quick-scope-conf.vim

"==== 6 ===="
source ~/.config/nvim/conf/abbrev.vim

"==== 7 ===="
" Make Ruby work, or at least not give me a warning
let g:ruby_host_prog = '/usr/local/lib/ruby/gems/2.7.0/bin/neovim-ruby-host'

source ~/.config/nvim/conf/source_script.vim
source ~/.config/nvim/conf/zoom.vim
source ~/.config/nvim/conf/extra_functions.vim

" ==== 8 ==== "
try
  silent! colorscheme base16-homogulosus-dune
catch
  silent! colorscheme industry
endtry

" silent! source ~/.config/nvim/plug_conf/material_colorscheme.vim

" ==== 9 ==== "
source ~/.config/nvim/syntax.vim
source ~/.cache/calendar.vim/credentials.vim

" DEBUGGER
let g:termdebug_wide=1
" Hexokinase
let g:Hexokinase_ftEnabled = ['css', 'html', 'javascript', 'vim']
let g:Hexokinase_highlighters = ['foregroundfull']

set secure

" vim:set ft=vim sw=2 sts=2:
