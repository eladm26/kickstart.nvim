return {
  -- amongst your other plugins
  {
    'akinsho/toggleterm.nvim',
    -- version = '*',
    config = function()
      require('toggleterm').setup {
        open_mapping = [[<c-\>]], -- or { [[<c-\>]], [[<c-¥>]] } if you also use a Japanese keyboard.
        direction = 'tab',
      }
    end,
  },
}
