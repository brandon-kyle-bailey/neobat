-- lsp.lua configuration for Neovim https://github.com/yioneko/vtsls/blob/main/packages/service/configuration.schema.json
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- bashls = {},
      -- docker_compose_language_service = {},
      -- dockerls = {},
      -- dotls = {},
      -- gopls = {},
      -- graphql = {},
      -- html = {},
      -- postgres_lsp = {},
      -- prismals = {},
      -- pyright = {},
      -- rust_analyzer = {},
      -- sqlls = {},
      -- tailwindcss = {},
      jsonls = {
        -- lazy-load schemastore when needed
        on_new_config = function(new_config)
          new_config.settings.json.schemas = new_config.settings.json.schemas or {}
          vim.list_extend(new_config.settings.json.schemas, require("schemastore").json.schemas())
        end,
        settings = {
          json = {
            format = {
              enable = true,
            },
            validate = { enable = true },
          },
        },
      },
      vtsls = {
        settings = {
          typescript = {
            preferences = {
              importModuleSpecifier = "non-relative",
              -- importModuleSpecifier = "relative",
            },
          },
        },
      },
    },
  },
}
