vim.g.mapleader = " "
-- Global color scheme for coding area
vim.cmd('colorscheme gruvbox')

require("config.lazy")
require("config.key_mappings")
require("config.basic_config")
