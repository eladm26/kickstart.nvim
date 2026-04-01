---@module 'lazy'
---@type LazySpec
return {
  {
    'cenk1cenk2/schema-companion.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'b0o/SchemaStore.nvim',
    },
    config = function()
      require('schema-companion').setup {
        log_level = vim.log.levels.WARN,
      }
    end,
    keys = {
      { '<leader>sy', '<cmd>lua require("schema-companion").select_schema()<cr>', desc = '[S]elect [Y]AML Schema' },
    },
  },

  -- SchemaStore for YAML/JSON schemas (K8s, GitHub Actions, etc.)
  { 'b0o/SchemaStore.nvim', lazy = true },

  -- kubectl integration
  {
    'ramilito/kubectl.nvim',
    cmd = 'Kubectl',
    keys = {
      { '<leader>K', '<cmd>lua require("kubectl").toggle()<cr>', desc = '[K]ubectl' },
    },
    opts = {},
  },
}
