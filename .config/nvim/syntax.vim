" Syntax Complettion
if has("autocmd") && exists("+omnifunc")
	autocmd Filetype *
		    \	if &omnifunc == "" |
		    \		setlocal omnifunc=syntaxcomplete#Complete |
		    \	endif
endif

" ALT(META)-L to fix syntax highlight
nnoremap <silent><expr> <M-L> empty(get(b:, 'current_syntax'))
      \ ? "\<C-l>"
      \ : "\<C-l>:syntax sync fromstart\<CR>"

" Highlighting
" augroup MyCommentHighlights
"   autocmd!
"   autocmd Syntax * syn match MisTodos /\v\c<(fix|change|tweak|note|todo|optimize|issue|bug|author|name|date|time|task|update|license)('|s|es|ed|d)*:/
"         \ containedin=.*Comment,vimCommentTitle
" augroup END
" hi def link MisTodos Todo
