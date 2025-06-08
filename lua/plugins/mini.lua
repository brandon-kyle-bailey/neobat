return {
  "echasnovski/mini.surround",
  version = "*",
  config = function()
    require("mini.surround").setup({
      mappings = {
        add = "gza",
        delete = "gzd",
        replace = "gzr",
        find = "gzf",
        find_left = "gzF",
        highlight = "gzh",
        update_n_lines = "gzn",
      },
    })
  end,
}
