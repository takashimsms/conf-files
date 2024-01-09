set number
set relativenumber
set ignorecase
set smartcase
set nobackup
" dont create swap file
set noswapfile
" automatically reread the file being edited when it is changed
set autoread

set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set noshowmode
" set mouse=a

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/cocopon/iceberg.vim'
" scrollbar
Plug 'https://github.com/dstein64/nvim-scrollview'
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
" Plug 'https://github.com/itchyny/lightline.vim' " Status bar
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
" Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
" Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
" Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
" Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
" Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
" git
Plug 'https://github.com/lewis6991/gitsigns.nvim'
" highlight
Plug 'https://github.com/kevinhwang91/nvim-hlslens'
set encoding=UTF-8

call plug#end()
runtime lua/settings.lua

" nnoremap <C-f> :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <silent> <C-t> :NERDTreeToggle<CR>
" nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

" nmap <F8> :TagbarToggle<CR>

set completeopt-=preview " For No Previews

colorscheme iceberg

if (has("termguicolors"))
 set termguicolors
endif
hi CocMenuSel guifg=#cccccc guibg=#2a3d75
hi CocFloating guifg=#c29976 guibg=#001622

let g:scrollview_excluded_filetypes = ['nerdtree']
let g:scrollview_current_only = v:true
" Position the scrollbar at the 80th character of the buffer
" let g:scrollview_base = 'buffer'
" Enable all sign groups (defaults to ['diagnostics', 'search']).
" Set to the empty list to disable all sign groups.
let g:scrollview_signs_on_startup = ['all']
" Show diagnostic signs only for errors.
let g:scrollview_diagnostics_severities =
      \ [luaeval('vim.diagnostic.severity.ERROR')]


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" air-line
let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1

" if !exists('g:airline_symbols')
"     let g:airline_symbols = {}
" endif

" " airline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''
" let g:airline_symbols.maxlinenr = '☰ '
" let g:airline_symbols.dirty='⚡'

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

tnoremap <Esc> <C-\><C-n>

" ターミナル操作系
nnoremap <silent> @@ :split \| wincmd j \| resize 10 \| terminal<CR>
nnoremap <silent> @t :split \| wincmd j \| resize 10 \| bnext<CR>
nnoremap <silent> @v :vsplit \| wincmd l \| terminal<CR>
" ctrl-d2回+enterで今いる場所を閉じる
nnoremap <s-d><s-d> :bd!
" バッファ移動系
nnoremap <silent> <C-j> :bprev<CR>
nnoremap <silent> <C-k> :bnext<CR>
" インサートモードでctrl-cをEscに
inoremap <c-c> <Esc>
" インサートモードでctrl-sをセーブしてノーマルモードに
inoremap <c-s> <Esc>:w<CR>

nnoremap <silent> <Esc><Esc> :noh<CR>
