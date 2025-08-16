return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    ---@diagnostic disable-next-line: missing-parameter
    harpoon:setup()
    require('telescope').load_extension 'harpoon'

    local function map(lhs, rhs, opts)
      vim.keymap.set('n', lhs, rhs, opts or {})
    end

    map('<leader>a', function()
      harpoon:list():add()
    end, { desc = 'Harpoon add to list' })

    map('<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Harpoon toggle menu' })

    map('<leader>q', function()
      harpoon:list():select(1)
    end, { desc = 'Harpoon jump to 1' })

    map('<leader>w', function()
      harpoon:list():select(2)
    end, { desc = 'Harpoon jump to 2' })

    map('<leader>e', function()
      harpoon:list():select(3)
    end, { desc = 'Harpoon jump to 3' })

    map('<leader>r', function()
      harpoon:list():select(4)
    end, { desc = 'Harpoon jump to 4' })
  end,
}
