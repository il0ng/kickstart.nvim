return {
  {
    'vhyrro/luarocks.nvim',
    priority = 1000,
    config = true,
  },
  {
    'nvim-neorg/neorg',
    dependencies = { 'luarocks.nvim' },
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = '*', -- Pin Neorg to the latest stable release
    config = function()
      require('neorg').setup {
        load = {
          ['core.defaults'] = {}, -- Load all the default modules
          ['core.concealer'] = {
            config = {
              icons = {
                code_block = {
                  conceal = true, -- Enable concealing of code block markers
                },
              },
              -- folds = false,
              -- concealer = {
              -- level = 2, -- Hide @code and @end
              -- },
            },
          }, -- Allows for use of icons
          ['core.dirman'] = { -- Manage your directories with Neorg
            config = {
              workspaces = {
                notebook = '~/neorg/notebook',
                work = '~/neorg/work',
              },
            },
          },
          ['core.completion'] = {
            config = {
              engine = 'nvim-cmp', -- Ensure completion engine is specified
            },
          },
          ['core.integrations.treesitter'] = {},
        },
      }
      -- Set conceal level for Neorg files
      vim.api.nvim_create_autocmd('FileType', {
        pattern = 'norg',
        callback = function()
          vim.opt.conceallevel = 2
          vim.opt.concealcursor = 'nc'
        end,
      })
    end,
  },
}
