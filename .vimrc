set number
set tabstop=2
set shiftwidth=2
set expandtab
set nocompatible              " be iMproved, required
set cursorline
set runtimepath^=~/.vim/bundle/ctrlp.vim
set rtp+=~/.vim/bundle/Vundle.vim
set background=dark

"for CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.class,*.jar,*.html,*.xml
let g:ctrlp_root_markers = ['.acignore', '.gitignore']
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_by_filename = 1


colorscheme ir_black
hi CursorLine term=bold cterm=bold guibg=Grey40 ctermbg=228 ctermfg=NONE



syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" set the runtime path to include Vundle and initialize
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
call vundle#end()            " required

autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
