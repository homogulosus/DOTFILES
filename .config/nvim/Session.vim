let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/.config/nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 ~/.config/nvim/experimental/experimental.vim
badd +1 experimental/source_script.vim
badd +0 experimental/trythisout.vim
badd +1 ~/.config/nvim/after/syntax/c.vim
badd +1 ~/.config/nvim/after/indentation.vim
badd +1 ~/.config/nvim/indentation.vim
badd +1 ~/.config/nvim/indentation.vim.bak
argglobal
%argdel
$argadd ~/.config/nvim/
edit experimental/source_script.vim
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 1resize ' . ((&columns * 89 + 89) / 178)
exe '2resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 2resize ' . ((&columns * 89 + 89) / 178)
exe '3resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 3resize ' . ((&columns * 88 + 89) / 178)
exe '4resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 4resize ' . ((&columns * 88 + 89) / 178)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 2 - ((1 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
wincmd w
argglobal
if bufexists("experimental/trythisout.vim") | buffer experimental/trythisout.vim | else | edit experimental/trythisout.vim | endif
if &buftype ==# 'terminal'
  silent file experimental/trythisout.vim
endif
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 19 - ((18 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 0
wincmd w
argglobal
if bufexists("~/.config/nvim/experimental/experimental.vim") | buffer ~/.config/nvim/experimental/experimental.vim | else | edit ~/.config/nvim/experimental/experimental.vim | endif
if &buftype ==# 'terminal'
  silent file ~/.config/nvim/experimental/experimental.vim
endif
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 27 - ((12 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
27
normal! 0
wincmd w
argglobal
if bufexists("~/.config/nvim/indentation.vim") | buffer ~/.config/nvim/indentation.vim | else | edit ~/.config/nvim/indentation.vim | endif
if &buftype ==# 'terminal'
  silent file ~/.config/nvim/indentation.vim
endif
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
4wincmd w
exe '1resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 1resize ' . ((&columns * 89 + 89) / 178)
exe '2resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 2resize ' . ((&columns * 89 + 89) / 178)
exe '3resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 3resize ' . ((&columns * 88 + 89) / 178)
exe '4resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 4resize ' . ((&columns * 88 + 89) / 178)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=atI
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
