return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- optional, for icons
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree', -- lazy-load when :Neotree is used
  keys = {
    {
      '<leader>n',
      function()
        vim.cmd 'Neotree toggle right'
      end,
      desc = 'Toggle NeoTree',
    },
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        window = {
          mappings = {
            ['\\'] = 'close_window',
          },
        },
      },
    }
  end,
}
