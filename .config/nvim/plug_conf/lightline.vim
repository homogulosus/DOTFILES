" === Lightline === "
if has_key(plugs, 'lightline.vim')
  let g:lightline = {
              \ 'colorscheme': 'dune',
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'cocstatus', 'currentfunction', 'gitbranch', 'readonly', 'filename', 'modified' ] ]
        \ },
              \ 'inactive': {
              \   'left': [ [ 'filename', 'modified' ] ],
              \   'right': [ [ 'lineinfo' ], [ 'percent' ] ]
              \ },
              \ 'component': {
              \ 'lineinfo': ' %3l:%-2v',
              \ 'filename': '%t'
              \ },
        \ 'component_function': {
              \   'gitbranch': 'LightFugitiveHead',
              \   'filetype': 'MyFiletype',
              \   'fileformat': 'MyFileformat',
              \   'cocstatus': 'coc#status',
              \   'currentfunction': 'CocCurrentFunction',
              \   'readonly': 'LightlineReadonly'
        \ },
        \ }

  function! MyFiletype() abort
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
  endfunction

  function! MyFileformat() abort
    return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
  endfunction

  function! LightlineReadonly() abort
      return &readonly ? '' : ''
  endfunction

  function! StatusDiagnostic() abort
    let info = get(b:, 'coc_diagnostic_info', {})
    if empty(info) | return '' | endif
    let msgs = []
    if get(info, 'error', 0)
      call add(msgs, 'E' . info['error'])
    endif
    if get(info, 'warning', 0)
      call add(msgs, 'W' . info['warning'])
    endif
    return join(msgs, ' '). ' ' . get(g:, 'coc_status', '')
  endfunction

  function! CocCurrentFunction() abort
      return get(b:, 'coc_current_function', '')
  endfunction

  function! LightFugitiveHead() abort
      if exists('*FugitiveHead')
          let l:branch = FugitiveHead()
          return l:branch !=# '' ? ' '. l:branch : ''
      endif
      return ''
  endfunction

  " autocmd! User CocDiagnosticChange call lightline#update()

  " function! FugitiveHead() abort
  "   if exists("*fugitive#head")
  "     let _ = fugitive#head()
  "     return strlen(_) ? ''._ : ''
  "   endif
  "   return ''
  " endfunction

  let g:lightline#bufferline#unicode_symbols = 0
  let g:lightline#bufferline#enable_devicons = 1
  let g:lightline#bufferline#show_number  = 2
  " let g:lightline#bufferline#shorten_path = 1
endif
