-- filetype plugin indent on  (required)
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.hlsearch = true
vim.opt.clipboard = "unnamedplus"
vim.opt.laststatus=2
--vim.opt.statusline+=%F
vim.opt.cursorcolumn = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
--:hi CursorColumn cterm=NONE ctermbg=red ctermfg=white guibg=red guifg=white
vim.opt.mouse = "a" --for enbling mouse input 
vim.opt.cursorline = true

--"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
--" => Splits and Tabbed Files
--"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vim.opt.splitbelow = true
vim.opt.splitright = true

--
--vim.o.statusline = vim.o.statusline .. "%F"
