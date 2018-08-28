scriptencoding utf-8

if !exists('g:loaded_neoline')
  finish
else
  let g:loaded_neoline = 1
endif

let s:save_cpo = &cpo
set cpo&vim

function! neoline#neoline_init()
  echo "Hello World"
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
