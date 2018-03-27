set encoding=utf-8
"Indent settings. Currently disabled because EECE wants tabs not spaces"
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab


" remap keybindings"
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-c> <ESC>
map <TAB> <C-W>

" Basic settings"
set scrolloff=999
set relativenumber
set number
set winminheight=0

" Pathogen is a package manager?"
execute pathogen#infect()

" Doxygen settings"
let g:DoxygenToolkit_briefTag_pre=""

"colorscheme"
syntax enable
colorscheme Tomorrow-Night
let g:solarized_termcolors=256
let g:solarized_termtrans=1

" Syntastic"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 0
let g:syntastic_enable_signs=1

" NERDTree"
map <silent> <C-n> :NERDTreeFocus<CR>

"autocmd VimEnter * NERDTree | wincmd p"
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif"
