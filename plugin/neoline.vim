scriptencoding utf-8

" 二度読み込むことを防ぐ
if exists('g:loaded_neoline')
  finish
else
  let g:loaded_neoline = 1
endif

" ユーザ設定を一時対比
let s:save_cpo = &cpo
set cpo&vim

nmap z :call neoline.vim()<cr>

" 対比していたユーザ設定を戻す
let &cpo = s:save_cpo
unlet s:save_cpo
