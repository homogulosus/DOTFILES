function! Diff(mods, spec)
    let mods = a:mods
    if !len(mods) && &diffopt =~ 'vertical'
      let mods = 'vertical'
    endif
    execute mods . ' new'
    setlocal bufhidden=wipe buftype=nofile nobuflisted noswapfile
    let cmd = "++edit #"
    if len(a:spec)
        let cmd = "!git -C " . shellescape(fnamemodify(finddir('.git', '.;'), ':p:h:h')) . " show " . a:spec . ":#"
    endif
    execute "read " . cmd
    silent 0d_
    let &filetype = getbufvar('#', '&filetype')
    augroup Diff
      autocmd!
      autocmd BufWipeout <buffer> diffoff!
    augroup END
    diffthis
    wincmd p
    diffthis
endfunction
command! -nargs=? Diff call Diff(<q-mods>, <q-args>)
