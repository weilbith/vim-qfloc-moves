# Vim Quickfix & Location Movements

This is a minimal plugin that provides a couple of commands to make window
movements around quickfix and location lists easier. Depending on the users
workflow, there could be multiple of those windows open at the same time. And
especially if you are using more complex window layouts, these windows can be
either hard to reach or are just in the way of the movements to the "actual"
windows. Also do the default commands eventually open empty and useless windows,
being just a waste of time.

## Installation

Install the plugin with your favorite manager tool. Here is an example using
[dein.vim](https://github.com/Shougo/dein.vim):

```vim
call dein#add('weilbith/vim-qfloc-moves', {
      \ 'on_cmd': ['Copen', 'Lopen', 'Wincmd']
      \ })
```

## Usage

Just use the provided commands directly or bind them to keys. For example
overwrite the default neighbor window movement bindings: >

```vim
noremap <silent> <C-w>h <cmd>Wincmd h<CR>
noremap <silent> <C-w>j <cmd>Wincmd j<CR>
noremap <silent> <C-w>k <cmd>Wincmd k<CR>
noremap <silent> <C-w>l <cmd>Wincmd l<CR>
```

Note that all commands attempt to re-use the origin names of the native command
they wrap just with the first letter in upper case.

Checkout the
[docs](https://github.com/weilbith/vim-qfloc-moves/blob/master/doc/qfloc_moves.txt)
(`:help qfloc_moves.txt`) for a full list of commands and their details.
