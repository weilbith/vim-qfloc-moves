function! qfloc_moves#jump_to_or_from_quickfix_window() abort
  if qfloc_moves#utils#is_quickfix_or_location_window()
    wincmd p
  elseif qfloc_moves#utils#quickfix_list_is_empty()
    call qfloc_moves#utils#warning_message('Current quickfix list is empty!')
  else
    copen
  endif
endfunction

function! qfloc_moves#jump_to_or_from_location_window() abort
  if qfloc_moves#utils#is_quickfix_or_location_window()
    wincmd p
  elseif qfloc_moves#utils#location_list_is_empty()
    call utils#messages#warning('Current location list is empty!')
  else
    lopen
  endif
endfunction

function! qfloc_moves#wincmd_ignoring_location_window_as_target(command) abort
  let l:full_command = 'wincmd ' . a:command
  execute l:full_command

  while qfloc_moves#utils#is_location_window(win_getid())
    execute l:full_command
  endwhile
endfunction
