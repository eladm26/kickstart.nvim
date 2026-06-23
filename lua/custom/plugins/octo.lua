return {
  'pwntester/octo.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'folke/snacks.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  cmd = 'Octo',
  keys = {
    { '<leader>O', '<cmd>Octo<CR>', desc = '[O]cto (GitHub)' },
  },
  config = function()
    require('octo').setup {
      enable_builtin = true,
      default_merge_method = 'squash',
      picker = 'snacks',
    }
    vim.treesitter.language.register('markdown', 'octo')
  end,
}
