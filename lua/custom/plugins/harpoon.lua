vim.keymap.set('n', '<leader>hh', "<Cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ha', "<Cmd>lua require('harpoon.mark').add_file()<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader>hd', '<Cmd>lua require("harpoon.mark").rm_file()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>hs', '<Cmd>Telescope harpoon marks<CR>')
vim.keymap.set('n', '<A-,>', '<Cmd>lua require("harpoon.ui").nav_prev()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-.>', '<Cmd>lua require("harpoon.ui").nav_next()<CR>', { noremap = true, silent = true })

return {
  'ThePrimeagen/harpoon',
}
