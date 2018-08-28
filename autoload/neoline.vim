scriptencoding utf-8

if !exists('g:loaded_neoline')
  finish
else
  let g:loaded_neoline = 1
endif

let s:save_cpo = &cpo
set cpo&vim

function! neoline#neoline_init()
  set statusline=
  set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
  set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
  set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
  set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
  set statusline+=%*
  set statusline+=%#Visual# 
  set statusline+=%{&paste?'\ PASTE\ ':''}
  set statusline+=%{&spell?'\ SPELL\ ':''}
  set statusline+=%#CursorIM#
  set statusline+=%R        
  set statusline+=%m                 
  set statusline+=%#Cursor#        
  set statusline+=%#CursorLine#   
  set statusline+=%*
  set statusline+=\ %t\  
  set statusline+=%=
  set statusline+=%#CursorLine#  
  set statusline+=%{&fileencoding}
  set statusline+=
  set statusline+=\ \ \ %Y
  set statusline+=\ %#CursorIM# 
  set statusline+=\ %3l:%-2c
  set statusline+=\ %#Cursor#
  set statusline+=\ %3p%%\ 
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
