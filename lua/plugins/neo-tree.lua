return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = { position = "right" },
  },
  keys = {
    { "<leader>e", "<leader>fe<C-w>=", desc = "Explorer NeoTree (Root Dir)", remap = true },
    { "<leader>E", "<leader>fE<C-w>=", desc = "Explorer NeoTree (cwd)", remap = true },
  },
}
