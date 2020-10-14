if exists('g:loaded_qfloc_moves')
 finish
endif

let g:loaded_qfloc_moves = 1


command Copen call qfloc_moves#jump_to_or_from_quickfix_window()
command Lopen call qfloc_moves#jump_to_or_from_location_window()
command -nargs=1 Wincmd call qfloc_moves#wincmd_ignoring_location_window_as_target(<f-args>)
