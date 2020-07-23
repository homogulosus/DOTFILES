if has_key(plugs, 'vim-dirvish')
  " Comment out to let dirvish-git do its work
  " call dirvish#add_icon_fn({p -> p[-1:]=='/'?'':''})
  let g:dirvish_mode = ':sort ,^.*[\/],'
  map <F3> <Plug>(dirvish_vsplit_up)

  augroup dirvish_config
    autocmd!

    " Map `t` to open in new tab and `v` to open in a vertical split
    autocmd FileType dirvish
      \  nnoremap <silent><buffer> t :call dirvish#open('tabedit', 0)<CR> |
      \  xnoremap <silent><buffer> t :call dirvish#open('tabedit', 0)<CR> |
      \  nnoremap <silent><buffer> s :call dirvish#open('vsplit', 0)<CR>  |
      \  xnoremap <silent><buffer> s :call dirvish#open('vslipt', 0)<CR>  |
      \  nmap <silent><buffer>q  <Plug>(dirvish_quit)

    " Map `gr` to reload.
    autocmd FileType dirvish nnoremap <silent><buffer>
      \ gr :<C-U>Dirvish %<CR>

    " Map `gh` to hide dot-prefixed files.  Press `R` to "toggle" (reload).
    autocmd FileType dirvish nnoremap <silent><buffer>
      \ gh :silent keeppatterns g@\v/\.[^\/]+/?$@d _<cr>:setl cole=3<cr>

    " cd to cd into that bufer
    autocmd FileType dirvish
      \ nnoremap <buffer> cd :cd %<CR>
  augroup END
endif
