""""""""""""""""""""""""""""""""""""""""
" => PLUGINS
"
" Manteiner: homogulosus
"
""""""""""""""""""""""""""""""""""""""""

let $MYVIMPLUGINS='$HOME/.vim/.plugs.vim'

call plug#begin('~/.vim/plugged')
Plug 'homogulosus/indispensable', {'branch': 'develop'}
Plug 'junegunn/fzf.vim'
Plug 'chriskempson/base16-vim'
Plug 'itchyny/lightline.vim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim', { 'for': ['markdown', 'md'] } " Focus Reading Goyo
autocmd! User goyo.vim echom 'Goyo is now running!'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-eunuch'
" Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'itchyny/calendar.vim', { 'on': 'Calendar' }
Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'
Plug 'skywind3000/asyncrun.vim', { 'on': 'AsyncRun' } " Exec async commands easily
autocmd! User asyncrun.vim echom 'AsyncRun On :)'
Plug 'vimwiki/vimwiki'
Plug 'homogulosus/vim-win'
Plug 'homogulosus/redir'
call plug#end()

" +++ GRAVEYARD +++ "
" Plug 'mhinz/vim-startify'
" Emmet
" Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'scss'] }
" autocmd! User emmet-vim echom 'emmet is active'
" Tabular
" Plug 'godlygeek/tabular', { 'on': 'Tabularize' }
" Plug 'hardcoreplayers/dashboard-nvim'
" Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" autocmd! User nerdtree echom 'File Tree Opened'
" Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
" Plug 'iberianpig/tig-explorer.vim'
