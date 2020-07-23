function! s:hide_left_columns() abort
    setlocal nonumber
    setlocal norelativenumber
    setlocal signcolumn=no
    setlocal foldcolumn=0
endfunction
command! HideLeftColumns call s:hide_left_columns()

function! s:show_left_columns() abort
  setlocal number
  setlocal relativenumber
  setlocal signcolumn=yes
  setlocal foldcolumn=1
endfunction
command! ShowLeftColumns call s:show_left_columns()

function! s:toggle_relative_number() abort
    let b:relnum = !get(b:, 'relnum', 1)

    if b:relnum
        setlocal relativenumber
    else
        setlocal norelativenumber
    endif

    setlocal number
endfunction
command! ToggleRelativeNumber call s:toggle_relative_number()

" TODO this could be a plugin
" Fit the current window size to the longest line in the window.
" https://stackoverflow.com/questions/9148919
" https://github.com/inkarkat/vim-ingo-library/blob/a4ca05610e14c2bcf715319811d2b7aa20847940/autoload/ingo/window/dimensions.vim#L23-L39
function! s:fit_window_size_to_displayed_content(is_vertical) abort
    let l:left_column_width = &foldcolumn + (&number ? max([&numberwidth, strdisplaywidth(line('$'))]) : 0) + (&signcolumn ==# 'no' ? 0 : 2)
    if a:is_vertical
        execute 'vertical resize' l:left_column_width + max(map(range(0, line('$')), 'virtcol([v:val, "$"])')) - 1
    else
        let l:cnt = 0
        let l:line = 1
        let l:tail = line('$')
        let l:width = winwidth(0) - l:left_column_width
        while l:line <= l:tail
            let l:end = foldclosedend(l:line)
            if l:end == -1
                if &wrap
                    let l:cnt += virtcol([l:line, '$']) / l:width
                endif
                let l:line += 1
            else
                let l:line = l:end + 1
            endif
            let l:cnt += 1
        endwhile
        execute 'resize' l:cnt
    endif
endfunction
command! -nargs=0 -bang FitWindowSize call s:fit_window_size_to_displayed_content(expand('<bang>') != '!')


" Create Vim directories if not found
" command! -nargs=0 CreateVimDirectories call s:create_vim_directories()
" function! s:create_vim_directories() abort
"     let base_dir = fnamemodify($MYVIMRC, ':h') . '/'
"     call mkdir(base_dir . 'sessions', 'p')
"     call mkdir(base_dir . 'undo', 'p')
"     call mkdir(base_dir . 'backup', 'p')
"     call mkdir(base_dir . 'swap', 'p')
"     call mkdir(base_dir . 'swap', 'p')
" endfunction

" TODO FIXIT
" command! -nargs=0 StoreTargetWin let t:target_window = win_getid()
" command! -nargs=0 JumpTargetWin call win_gotoid(t:target_window)
" nnoremap <expr> <Leader>' :<C-U>JumpTargetWin

" Make the current window size adequate.
" command! -nargs=0 ReduceVWinSizeAdequately :execute printf('resize %.0f', winheight(0) * 0.65)
" command! -nargs=0 ReduceHWinSizeAdequately :execute printf('vertical resize %.0f', winwidth(0) * 0.65)
