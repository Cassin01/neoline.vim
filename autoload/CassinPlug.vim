scriptencoding utf-8

if !exists('g:loaded_cassinplug')
  finish
else
  let g:loaded_cassinplug = 1
endif

let s:save_cpo = &cpo
set cpo&vim

function! CassinPlug_init()
  echo "Hello World"
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
