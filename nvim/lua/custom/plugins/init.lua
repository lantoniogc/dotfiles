return {
  -- Git integration
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- Diff integration
      'nvim-telescope/telescope.nvim',
    },
    config = true,
  },
  -- Bufferline
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup {
        options = {
          mode = 'buffers',
        },
      }
    end,
  },
  -- Utility to comment/uncomment code
  {
    'numToStr/Comment.nvim',
    opts = {},
  },
}
