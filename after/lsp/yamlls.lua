local sc = require('schema-companion')

return sc.setup_client(
  sc.adapters.yamlls.setup {
    sources = {
      sc.sources.matchers.kubernetes.setup { version = 'master' },
      sc.sources.lsp.setup(),
      sc.sources.schemas.setup {
        require('schemastore').yaml.schemas(),
      },
    },
  },
  {
    settings = {
      yaml = {
        validate = true,
      },
    },
  }
)
