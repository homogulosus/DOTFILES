"=== python ===="
if has_key(plugs, 'asyncrun.vim')
  augroup MyAsyncRun
    autocmd!
    autocmd User AsyncRunStart call asyncrun#quickfix_toggle(8, 1)
    autocmd FileType python nmap <buffer><F5> :w<CR>:AsyncRun -raw python %<CR>
    autocmd FileType python imap <buffer><F5> <esc>:w<CR>:AsyncRun -raw python %<CR>
    autocmd FileType html,scss,sass nmap <buffer><F5> :w<CR>:AsyncRun -raw sass --watch scss:css<CR>
    autocmd FileType html,scss,sass imap <buffer><F5> <esc>:w<CR>:AsyncRun -raw sass --watch scss:css<CR>
    autocmd FileType html,scss,sass nmap <buffer><F6> :AsyncStop<CR>
    autocmd FileType c,cpp nmap <buffer><F5> :w<CR>:AsyncRun -raw gcc % -o %:t:r && ./%:t:r <CR>
    autocmd FileType c,cpp imap <buffer><F5> <esc>:w<CR>:AsyncRun -raw gcc % -o %:t:r && ./%:t:r <CR>
    autocmd FileType python,c,cpp,html,scss nmap <silent><buffer><F6> :ccl <CR>
    " Debugger
    autocmd FileType c,cpp nmap <buffer><F8> :w<CR>:AsyncRun -raw gcc -g % -o %:t:r <CR>
    autocmd FileType c,cpp imap <buffer><F8> <esc>:w<CR>:AsyncRun -raw gcc -g % -o %:t:r <CR>
  augroup END
  " Fugitive Integration
  command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>
else
  echom "AsyncRun not installed!"
endif
