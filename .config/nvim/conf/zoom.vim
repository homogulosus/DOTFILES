" Zoom widnow temporary with <C-w>z
function! s:toggle_window_zoom() abort
    if exists('t:zoom_winrestcmd')
        execute t:zoom_winrestcmd
        unlet t:zoom_winrestcmd
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
    endif
endfunction
nnoremap <silent> <Plug>(zoom-window)
      \ :<C-u>call <SID>toggle_window_zoom()<CR>
nmap <C-w><C-z> <Plug>(zoom-window)
map <F4> <Plug>(zoom-window)
