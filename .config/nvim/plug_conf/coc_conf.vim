" === Coc.nvim === "
if has_key(plugs, 'coc.nvim')
  "   <leader>dd    - Jump to definition of current symbol
  "   <leader>dr    - Jump to references of current symbol
  "   <leader>dj    - Jump to implementation of current symbol
  "   <leader>ds    - Fuzzy search current project symbols
  nmap <silent> <leader>dd <Plug>(coc-definition)
  nmap <silent> <leader>dr <Plug>(coc-references)
  nmap <silent> <leader>dj <Plug>(coc-implementation)
  nnoremap <silent> <leader>ds :<C-u>CocList -I -N --top symbols<CR>

  " Use `[g` and `]g` to navigate diagnostics
  nmap <silent> [g <Plug>(coc-diagnostic-prev)
  nmap <silent> ]g <Plug>(coc-diagnostic-next)

  " GoTo code navigation.
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gl <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

  " use <tab> for trigger completion and navigate to next complete item
  function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~ '\s'
  endfunction

  inoremap <silent><expr> <TAB>
              \ pumvisible() ? "\<C-n>" :
              \ <SID>check_back_space() ? "\<TAB>" :
              \ coc#refresh()

  " Use <c-space> to trigger completion.
  inoremap <silent><expr> <c-space> coc#refresh()

  " Use K to show documentation in preview window.
  nnoremap <silent> K :call <SID>show_documentation()<CR>

  function! s:show_documentation() abort
      if (index(['vim','help'], &filetype) >= 0)
          execute 'h '.expand('<cword>')
      else
          call CocAction('doHover')
      endif
  endfunction

  " Close preview window when completion is done.
  autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

  " Coc Prettier
  command! -nargs=0 Prettier :CocCommand prettier.formatFile

  vmap <leader>f  <Plug>(coc-format-selected)
  nmap <leader>f  <Plug>(coc-format-selected)
  xmap <leader>f  <Plug>(coc-format-selected)
endif
