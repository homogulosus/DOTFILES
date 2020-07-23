augroup ExtraFunctionality
  autocmd!
augroup END

" Clear Register
function! s:clear_register() abort
  let rs = split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
  for r in rs
    call setreg(r, [])
  endfor
endfunction
command! ClearRegister call s:clear_register()

" Automatically create missing directories
function! s:auto_mkdir(dir, force) abort
  if empty(a:dir) || a:dir =~# '^\w\+://' || isdirectory(a:dir)
      return
  endif
  if !a:force
    echohl Question
    call inputsave()
    try
      let result = input(
            \ printf('"%s" does not exist. Create? (empty to cancel)', a:dir),
            \ '',
            \)
      if empty(result) || result !=? 'y'
        echohl WarningMsg
        echo "\n" 'Canceled'
        return
      endif
    finally
      call inputrestore()
      echohl None
    endtry
  endif
  call mkdir(a:dir, 'p')
endfunction
autocmd ExtraFunctionality BufWritePre *
      \ call s:auto_mkdir(expand('<afile>:p:h'), v:cmdbang)

" Insert UUID with <F12>
function! s:uuid() abort
  let r = system('uuidgen')
  let r = substitute(r, '^[\r\n\s]*\|[\r\n\s]*$', '', 'g')
  return r
endfunction
inoremap <silent> <F12> <C-r>=<SID>uuid()<CR>
