if has_key(plugs, 'git-messenger.vim')
  let g:git_messenger_include_diff = 'current'
  let g:git_messenger_max_popup_height = 15
  nmap <leader>gm <Plug>(git-messenger)
  nmap <leader>mc <Plug>(git-mesenger-close)
  nmap <leader>i <Plug>(git-messenger-into-popup)
endif
