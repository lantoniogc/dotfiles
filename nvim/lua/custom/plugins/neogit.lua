local neogit = require 'neogit'

vim.keymap.set('n', '<leader>gs', neogit.open, { desc = 'Neo[G]it [S]tatus' })

vim.keymap.set('n', '<leader>gp', ':Neogit pull<CR>', { desc = 'Neo[G]it [p]ull' })

vim.keymap.set('n', '<leader>gb', ':Telescope git_branches<CR>', { desc = '[G]it [B]ranches' })

return {}
