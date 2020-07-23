" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "

" let g:loaded_matchparen = 1
" let g:loaded_matchit = 1
let g:loaded_gzip = 1
let g:loaded_tarPlugin = 1
let g:loaded_zipPlugin = 1
let g:loaded_netrwPlugin = 1
let g:loaded_2html_plugin = 1
let g:loaded_tutor_mode_plugin = 1

let $MYVIMPLUGINS = '~/.config/nvim/plugins.vim'

call plug#begin('~/.config/nvim/plugged')
Plug 'homogulosus/indispensable', {'branch': 'master'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog', { 'on': ['Flog', 'Flogsplit'] }
Plug 'itchyny/lightline.vim' " LightLine much faster than airline
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim', { 'for': ['markdown', 'md'] } " Focus Reading Goyo
autocmd! User goyo.vim echom 'Goyo is now running!'
Plug 'chriskempson/base16-vim'
Plug 'machakann/vim-sandwich' " Surround but better
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-unimpaired'
Plug 'sickill/vim-pasta' " Paste indent concious
Plug 'ntpeters/vim-better-whitespace'
Plug 'godlygeek/tabular', { 'on': 'Tabularize' }
Plug 'rhysd/git-messenger.vim', { 'on': 'GitMessenger' }
Plug 'honza/vim-snippets' " Honza Snippets
Plug 'justinmk/vim-dirvish' " Fastest file manager in town
Plug 'kristijanhusak/vim-dirvish-git'
Plug 'skywind3000/asyncrun.vim', { 'on': 'AsyncRun' }
Plug 'christoomey/vim-system-copy'
Plug 'homogulosus/vim-win'
Plug 'homogulosus/neotermbetter' " A pleasant terminal
Plug 'homogulosus/redir', { 'on': 'Redir' }
Plug 'homogulosus/verysimple-todo', { 'on': 'Todo' } " Find TODOs and FIXMEs
Plug 'homogulosus/vim-diff', { 'on': 'Diff' }
Plug 'unblevable/quick-scope' " f, t, F, T made easy
Plug 'junegunn/vim-peekaboo' " Shows content of registers on a sidebar
Plug 'liuchengxu/vista.vim', { 'on': 'Vista' }
Plug 'psliwka/vim-smoothie' " Smooth Scroll
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' } " Color
Plug 'tweekmonster/django-plus.vim'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'DougBeney/pickachu', { 'on': 'Pick' } " Color Picker, also date and file
Plug 'homogulosus/egne' " Eñe is back in town
Plug 'homogulosus/vim-codepainter'
call plug#end()
" Plug 'tpope/vim-surround'
" Plug 'tpope/vim-commentary'
" Plug 'tyru/caw.vim' " Comments
