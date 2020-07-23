" Web Dev indentation
augroup WebDevIndentation
    autocmd!
    au BufNewFile,BufRead *.js, *.html, *.css, *.scss, *.md
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
augroup END
