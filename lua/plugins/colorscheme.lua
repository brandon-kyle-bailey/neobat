-- return {
--   "folke/tokyonight.nvim",
--   style = "night",
--   opts = {
--     transparent = true,
--     styles = { sidebars = "transparent", floats = "transparent" },
--   },
-- }

return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      flavour = "mocha",
    },
  },
}
