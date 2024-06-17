-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd [[ let g:neo_tree_remove_legacy_commands = 1 ]]

vim.keymap.set('n', '<leader>n', '<Cmd>Neotree position=current toggle<CR>')
vim.keymap.set('n', '<leader>gs', '<Cmd>Neotree float git_status<CR>')

return {
  'nvim-neo-tree/neo-tree.nvim',

  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      default_component_configs = {
        git_status = {
          symbols = false,
        },
      },
    }
  end,

  vim.schedule(function()
    vim.cmd [[
            highlight! link NeoTreeDirectoryIcon NvimTreeFolderIcon
            highlight! link NeoTreeDirectoryName NvimTreeFolderName
            highlight! link NeoTreeSymbolicLinkTarget NvimTreeSymlink
            highlight! link NeoTreeRootName NvimTreeRootFolder
            highlight! link NeoTreeDirectoryName NvimTreeOpenedFolderName
            highlight! link NeoTreeFileNameOpened NvimTreeOpenedFile
        ]]
  end),
}
