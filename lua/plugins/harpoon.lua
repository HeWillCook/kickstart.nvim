return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2', -- important, v2 is better
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
      local harpoon = require 'harpoon'

      harpoon:setup()

      -- keymaps (this is where you usually configure behavior too)
      vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end, { desc = 'Add to Harpoon' })
      vim.keymap.set('n', '<leader>e', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Manage Harpoon Files' })

      vim.keymap.set('n', '<leader>1', function() harpoon:list():select(1) end, { desc = 'Switch to harpoon file 1' })
      vim.keymap.set('n', '<leader>2', function() harpoon:list():select(2) end, { desc = 'Switch to harpoon file 2' })
      vim.keymap.set('n', '<leader>3', function() harpoon:list():select(3) end, { desc = 'Switch to harpoon file 3' })
      vim.keymap.set('n', '<leader>4', function() harpoon:list():select(4) end, { desc = 'Switch to harpoon file 4' })
    end,
  }
