return 
  {'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    --init = function() vim.g.barbar_auto_setup = false end,
    opts = {
        clickable = true, -- Enable / disable clickable tabs
        tabpages = true, -- Enable/disable current/total tabpages indicator (top right corner)
        icons = true,
    },

    options = {
        numbers = "buffer_id",  -- Display buffer number in tabs
    },

    config = function()
        local map = vim.api.nvim_set_keymap
        local opts = { 
           noremap = true,
            silent = true,
        }
        
        -- Colorschemes
        -- Customize barbar highlights for selected and unselected tabs
        vim.api.nvim_set_hl(0, "BufferCurrent",       { fg = "#ffffff", })  -- Selected tab text
        vim.api.nvim_set_hl(0, "BufferCurrentIndex",  { fg = "#ffffff", })  -- Selected tab index
        vim.api.nvim_set_hl(0, "BufferCurrentMod",    { fg = "#e0af68", })  -- Selected tab modified sign
        vim.api.nvim_set_hl(0, "BufferCurrentSign",   { fg = "#ffaf00", })  -- Selected tab sign color
        vim.api.nvim_set_hl(0, "BufferCurrentTarget", { fg = "#ff0000", bold = true })  -- Selected tab close button

        vim.api.nvim_set_hl(0, "BufferVisible",       { fg = "#c0c0c0", bg = "#2c2c2c" })  -- Unselected tab text
        vim.api.nvim_set_hl(0, "BufferVisibleIndex",  { fg = "#c0c0c0", bg = "#2c2c2c" })  -- Unselected tab index
        vim.api.nvim_set_hl(0, "BufferVisibleMod",    { fg = "#e0af68", bg = "#2c2c2c" })  -- Unselected tab modified sign
        vim.api.nvim_set_hl(0, "BufferVisibleSign",   { fg = "#ffaf00", bg = "#2c2c2c" })  -- Unselected tab sign color
        vim.api.nvim_set_hl(0, "BufferVisibleTarget", { fg = "#ff0000", bg = "#2c2c2c", bold = true })  -- Unselected tab close button
        
        -- Keymaps
        -- Move to previous/next
        map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
        map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
        -- Re-order to previous/next
        map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
        map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
        -- Goto buffer in position...
        map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
        map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
        map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
        map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
        map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
        map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
        map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
        map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
        map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
        map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
        -- Pin/unpin buffer
        map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
        -- Close buffer
        map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
    end,
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  }

