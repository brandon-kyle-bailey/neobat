-- lsp.lua configuration for Neovim https://github.com/yioneko/vtsls/blob/main/packages/service/configuration.schema.json
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      vtsls = {
        settings = {
          typescript = {
            preferences = {
              importModuleSpecifier = "relative", -- Use relative import paths
            },
          },
        },
      },
    },
  },
}

