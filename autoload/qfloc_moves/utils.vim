function! qfloc_moves#utils#is_quickfix_or_location_window() abort
  return &filetype ==# 'qf'
endfunction

function! qfloc_moves#utils#quickfix_list_is_empty() abort
  return len(getqflist()) <= 0
endfunction

function! qfloc_moves#utils#location_list_is_empty() abort
  return len(getloclist(0)) <= 0
endfunction

function! qfloc_moves#utils#warning_message(message) abort
  echohl WarningMsg | echo a:message | echohl None
endfunction

function! qfloc_moves#utils#is_location_window(winid) abort
  let l:infos = getwininfo(a:winid)
  return len(l:infos) > 0 && get(l:infos[0], 'quickfix', 0) && get(l:infos[0], 'loclist', 1)
endfunction
