"=== FZF ==="
if has_key(plugs, 'fzf.vim')
  set rtp+=/usr/local/opt/fzf "zfz fuzzy search"
  nnoremap <leader>z :Files<CR>
  nnoremap <leader>b :Buffers<CR>
  nnoremap <leader>g :GFiles<CR>
  nnoremap <leader>H :History<CR>
  nnoremap <leader>M :Maps<CR>
  nnoremap <leader>C :Commands<CR>
  nnoremap <leader>: :History:<CR>
  nnoremap <leader>/ :Ag<Space>
  nnoremap <leader>\ :Rg<Space>
  nnoremap <leader>bl :BLines<CR>
  nnoremap <leader>; :Lines<CR>
endif
