return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    require("nvim-tree").setup ({
        git = {
            ignore = false,
        },
    })
        
    -- keymaps
    vim.keymap.set('n', '<c-n>',      ':NvimTreeFindFileToggle<CR>', {desc = "Opening the file explorer"})
    vim.keymap.set('n', '<leader>er', ':NvimTreeRefresh<CR>',        {desc = "Refresh file explorer"})

    -- Customize nvim-tree colors
    vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = "#F6E96B" })
    vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#F6E96B" })
    vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#00FF00" })
    vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = "#F6E96B" })
    vim.api.nvim_set_hl(0, "NvimTreeGitIgnored", { fg = "#808080" })
    vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "#151515", fg = "#c0c0c0" })   -- color scheme for sidebar
    vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "#151515", fg = "#c0c0c0" }) -- color scheme for sidebar

    -- Customize coding area highlights
    --vim.api.nvim_set_hl(0, "Normal", { bg = "#0C0C2D" })
    vim.api.nvim_set_hl(0, "Normal", { bg = "#1E201E" })   -- color scheme for code area
    vim.api.nvim_set_hl(0, "Comment", { fg = "#FF8A8A" })  -- color scheme for code area
    vim.api.nvim_set_hl(0, "Keyword", { fg = "#00FF00" })  -- color scheme for code area
  end,
}
