if has('mac') && has('nvim')
  " Make meta keys work in macOS (from vimtips)
  " iterm +esc opction must be turn on
  for i in range(65,90) + range(97,122)
    let c = nr2char(i)
    exec "map \e".c." <M-".c.">"
    exec "map! \e".c." <M-".c.">"
  endfor
endif

" Quick window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Switch panes vertically and horizontally
if has('nvim')
  nnoremap <M-J> <C-w>J
  nnoremap <M-H> <C-w>H
  nnoremap <M-r> <C-w>r
endif
" Move between windows easily
nnoremap <silent><leader>h :wincmd h<CR>
nnoremap <silent><leader>j :wincmd j<CR>
nnoremap <silent><leader>k :wincmd k<CR>
nnoremap <silent><leader>l :wincmd l<CR>

" Buffers | Tabs
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

nnoremap <silent><leader>a :vnew<CR>
" Close the current buffer
nnoremap <leader>bd :bdel<CR>:tabclose<CR>gT
" Close all the buffers
nnoremap <leader>ca :bufdo bd<CR>
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
" Useful mappings for managing tabs
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>to :tabonly<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>tm :tabmove<CR>
nnoremap <leader>t :tabnext<CR>

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
augroup Tab_leave
  autocmd!
  autocmd TabLeave * let g:lasttab = tabpagenr()
augroup END
nnoremap <silent><leader>tl :exe "tabn ".g:lasttab<CR>

" === Search shorcuts === "
" Find and replace
noremap <leader>s :%s///<left><left>
" Claer highlighted search terms while preserving history
nnoremap <silent><leader><leader>/ :nohlsearch<CR>
" Toggle relativenumber, handy with Find and Replace
nnoremap <silent><leader>N :setlocal relativenumber!<CR>

" Allows you to save files you opened without write permissions via sudo
cnoremap w!! w !sudo tee %
" command! SW execute 'w !sudo tee % > /dev/null' <bar> edit!

" Do NOT yank with x/s
nnoremap x "_x
nnoremap s "_s
" Delete current visual selection and dump in black hole buffer before pasting
vnoremap <leader>bh "_dP

" Deletes trailing whitespace
noremap <silent><leader>tt :%s/\s\+$//e<CR>

" Edit NeoVim conf file
nnoremap <silent><leader>v :e $MYVIMRC<CR>
nnoremap <silent><leader>p :e $MYVIMPLUGINS<CR>

" === Scratchpad ===" SWITCH to vim-bujo?
" Quickly open a buffer for sCRibble
noremap <leader>q :e buffer<CR>
" Quickly open a markdown buffer for sCRibble
noremap <leader>x :vnew scratchpad.md<CR>
" Toggle Local Spell with F7
map <F7> :setlocal spell!<CR>
" Vim-Calendar
" map <silent><F11> :Calendar<CR>

" NVim Terminal
" C-q to exit insert mode in terminal
tnoremap <C-q> <C-\><C-n>
" ALT+{h,j,k,l} to anvigate windows from any mode
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" cd command
noremap <leader>cd :cd %:p:h<CR>

" Debugger
" map <F8> :packadd termdebug<CR>:vnew<CR>:Termdebug<CR>
