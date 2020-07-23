" Abbreviations
augroup Vim_Abbrev
  autocmd!
  autocmd FileType vim inoreabbrev vimplugend1  " vim:set ft=vim sw=2 sts=2:
  autocmd FileType vim inoreabbrev vimplugend2  " vim: set ts=8 sts=4 sw=4 noexpandtab ff=unix fdm=syntax :
augroup END

augroup Scss_Abbrev
  autocmd!
  autocmd FileType scss,css,sass inoreabbrev @m  @mixin
augroup END
