-- filetype plugin indent on  (required)
vim.opt.number = true
vim.opt.relativenumber = true     -- set relative numbered lines
vim.opt.hlsearch = true
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.laststatus=2
--vim.opt.statusline+=%F
vim.opt.cursorcolumn = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
--:hi CursorColumn cterm=NONE ctermbg=red ctermfg=white guibg=red guifg=white
vim.opt.mouse = "a"               --for enbling mouse input 
vim.opt.cursorline = true
vim.opt.termguicolors = true      -- set term gui colors (most terminals support this)

--"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
--" => Splits and Tabbed Files
--"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vim.opt.splitbelow = true         -- force all horizontal splits to go below current window
vim.opt.splitright = true         -- force all vertical splits to go to the right of current window

--
--vim.o.statusline = vim.o.statusline .. "%F"
