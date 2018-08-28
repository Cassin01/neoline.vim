scriptencoding utf-8

" 二度読み込むことを防ぐ
if exists('g:loaded_CassinPlug.vim')
  finish
else
  let g:loaded_CassinPlug = 1
endif

" ユーザ設定を一時対比
let s:save_cpo = &cpo
set cpo&vim

nmap z:call CassinPlug#Cassin_init()<CR>

" 対比していたユーザ設定を戻す
let &cpo = s:save_cpo
unlet s:save_cpo
