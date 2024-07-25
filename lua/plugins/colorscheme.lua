return {
  {
    "sainnhe/sonokai",
    lazy = false,
    -- priority = 1000,
    config = function()
      vim.g.sonokai_transparent_background = true
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "sonokai",
    },
  },
  -- {
  --   "folke/tokyonight.nvim",
  --   opts = {
  --     transparent = true,
  --     styles = {
  --       sidebars = "transparent",
  --       floats = "transparent",
  --     },
  --   },
  -- },
}
