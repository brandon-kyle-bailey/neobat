-- lsp.lua configuration for Neovim
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
            }
          },
        },
      },
    },
  }
  