
return {
  "echasnovski/mini.move",
  event = "VeryLazy",
  opts = {
    -- Custom mappings, replacing problematic <M-?> (Alt) keys
    mappings = {
      -- Visual mode
      left = "<S-h>",
      right = "<S-l>",
      down = "<S-j>",
      up = "<S-k>",

      -- Normal mode line movement
      line_left = "<leader>mh",
      line_right = "<leader>ml",
      line_down = "<leader>mj",
      line_up = "<leader>mk",
    },
  },
}
