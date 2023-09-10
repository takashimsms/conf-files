:set number
:set relativenumber
:set ignorecase
:set smartcase
:set nobackup
" dont create swap file
:set noswapfile
" automatically reread the file being edited when it is changed
:set autoread

:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
" Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
" Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
" Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

set encoding=UTF-8

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

:colorscheme jellybeans

if (has("termguicolors"))
 set termguicolors
endif
hi CocMenuSel guifg=#cccccc guibg=#2a3d75
hi CocFloating guifg=#c29976 guibg=#001622


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''


inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

tnoremap <Esc> <C-\><C-n>
" ターミナル操作系
" :Tで下にウィンドウを作成しターミナルを表示
command! -nargs=* T split | wincmd j | terminal <args>
" :Tvで左にウィンドウを(ry
command! -nargs=* Tv vsplit | wincmd l | terminal <args>
" ctrl-d2回押してenterで今いる場所を閉じる
nnoremap <c-d><c-d> :bd!
" @@ で:T, @vで:Tv
nnoremap <silent> @@ :T<CR>
nnoremap <silent> @v :Tv<CR>
" バッファ移動系
nnoremap <silent> <C-j> :bprev<CR>
nnoremap <silent> <C-k> :bnext<CR>
" インサートモードでctrl-cをEscに
inoremap <c-c> <Esc>
" インサートモードでctrl-sをセーブしてノーマルモードに
inoremap <c-s> <Esc>:w<CR>

