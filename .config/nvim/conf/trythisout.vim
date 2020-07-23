augroup MyAutoCmd
  autocmd!
augroup END

" Grep with <Leader>gg
function! s:grep(bang, query) abort
  let query = empty(a:query) ? input('grep: ') : a:query
  if empty(query)
    redraw
    return
  endif
  execute printf('silent grep%s %s .', a:bang, escape(query, ' '))
endfunction
nnoremap <silent> <Leader>gg :<C-u>call <SID>grep('', '')<CR>
command! -nargs=* -bang Grep call s:grep(<q-bang>, <q-args>)

" Clear Register
function! s:clear_register() abort
  let rs = split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
  for r in rs
    call setreg(r, [])
  endfor
endfunction
command! ClearRegister call s:clear_register()

" Insert UUID by <F2>
function! s:uuid() abort
  let r = system('uuidgen')
  let r = substitute(r, '^[\r\n\s]*\|[\r\n\s]*$', '', 'g')
  return r
endfunction
inoremap <silent> <F2> <C-r>=<SID>uuid()<CR>

" " TODO What is this?
" " Delete view {{{
" function! s:delete_view(bang) abort
"   if &modified && a:bang !=# '!'
"     echohl WarningMsg
"     echo 'Use bang to forcedly remove view file on modified buffer'
"     echohl None
"     return
"   endif
"   let path = substitute(expand('%:p:~'), '=', '==', 'g')
"   let path = substitute(path, '/', '=+', 'g') . '='
"   let path = printf('%s/%s', &viewdir, path)
"   if filewritable(path)
"     call delete(path)
"     silent edit! %
"     echo 'View file has removed: ' . path
"   endif
" endfunction
" command! -bang Delview call s:delete_view(<q-bang>)
" " }}}

"" TODO Check this out!
"" Macros {{{
"augroup MyAutoCmd
"  autocmd!
"augroup END

"function! s:cwindow() abort
"  let winid = win_getid()
"  cwindow
"  if win_getid() != winid
"    call win_gotoid(winid)
"  endif
"endfunction

"function! s:lwindow() abort
"  let winid = win_getid()
"  lwindow
"  if win_getid() != winid
"    call win_gotoid(winid)
"  endif
"endfunction

"autocmd MyAutoCmd QuickFixCmdPost [^l]* nested call s:cwindow()
"autocmd MyAutoCmd QuickFixCmdPost l* nested call s:lwindow()

"" Automatically re-assign filetype {{{
"autocmd MyAutoCmd BufWritePost *
"      \ if &filetype ==# '' && exists('b:ftdetect') |
"      \  unlet! b:ftdetect |
"      \  filetype detect |
"      \ endif

" More +++
" Do NOT rewrite register after paste
" http://baqamore.hatenablog.com/entry/2016/07/07/201856
" xnoremap <expr> p printf('pgv"%sygv<esc>', v:register)

" Automatically change working directory on vim enter
" function! s:workon(dir, bang) abort
"   let dir = (a:dir ==# '' ? expand('%') : a:dir)
"   " convert filename to directory if required
"   if filereadable(dir)
"     let dir = fnamemodify(expand(dir),':p:h')
"   else
"     let dir = fnamemodify(dir, ':p')
"   endif
"   " change directory to specified directory
"   if isdirectory(dir)
"     silent execute 'cd ' . fnameescape(dir)
"     if a:bang ==# ''
"       redraw | echo 'Working on: '.dir
"       doautocmd <nomodeline> MyAutoCmd User my-workon-post
"     endif
"   endif
" endfunction
" autocmd MyAutoCmd VimEnter * call s:workon(expand('<afile>'), 1)
" command! -nargs=? -complete=dir -bang Workon call s:workon('<args>', '<bang>')
