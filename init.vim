set nocompatible 		" be iMproved, required
filetype off

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'ervandew/supertab'

" For Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
call plug#end()

" colorscheme gruvbox
colorscheme jellybeans 
set background=dark

" Find files using Telescope command-line sugar.
" https://codevion.github.io/#!vim/telescope.md
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and Tabbed Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright


filetype plugin indent on  " required
syntax on
set number
set relativenumber
set hlsearch
"set smarttab
set clipboard=unnamedplus
set laststatus=2
set statusline+=%F
set cursorcolumn
set shiftwidth=2 softtabstop=2 tabstop=2 expandtab
set autoindent
":hi CursorColumn cterm=NONE ctermbg=red ctermfg=white guibg=red guifg=white
set mouse=a "for enbling mouse input 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => For Keybindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $HOME/.config/nvim/keybindings/keybindings.vim


