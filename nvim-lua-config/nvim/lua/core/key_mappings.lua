-- For split
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- For Tab
--nnoremap <C-l>h :tabr<cr> (originally in init.vim)
vim.keymap.set('n', '<C-l>h', ':tabr<cr>') -- ('n', 'new key map', 'cmd executing')
vim.keymap.set('n', '<C-l>l', ':tabl<cr>')
vim.keymap.set('n', '<C-t>', ':tabnew<cr>')
vim.keymap.set('n', '<C-x>', ':tabc<cr>')
vim.keymap.set('n', '<C-Left>', ':tabprevious<CR>')
vim.keymap.set('n', '<C-Right>', ':tabnext<CR>')

-- For tagbar: https://github.com/preservim/tagbar
vim.keymap.set('n', '<F8>', ':TagbarToggle<CR>')
