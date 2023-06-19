-- For split
vim.keymap.set('n', 'H', '<C-w>h')
vim.keymap.set('n', 'J', '<C-w>j')
vim.keymap.set('n', 'K', '<C-w>k')
vim.keymap.set('n', 'L', '<C-w>l')

-- For Tab
--nnoremap <C-l>h :tabr<cr> (originally in init.vim)
vim.keymap.set('n', '<C-l>h', ':tabr<cr>') -- ('n', 'new key map', 'cmd executing')
vim.keymap.set('n', '<C-l>l', ':tabl<cr>')
vim.keymap.set('n', '<C-t>', ':tabnew<cr>')
vim.keymap.set('n', '<C-x>', ':tabc<cr>')
vim.keymap.set('n', '<C-Left>', ':tabprevious<CR>')
vim.keymap.set('n', '<C-Right>', ':tabnext<CR>')

-- For Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- For tagbar: https://github.com/preservim/tagbar
vim.keymap.set('n', '<F8>', ':TagbarToggle<CR>')
