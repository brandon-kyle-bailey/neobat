-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- move 1/2 screen up/down and center vertically
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "j", "jzz")
vim.keymap.set("n", "k", "kzz")

-- buffer path copying to clipboard
vim.keymap.set("n", "<leader>cp", function()
  vim.fn.setreg("+", vim.fn.expand("%"))
  print("Copied: " .. vim.fn.expand("%"))
end, { desc = "Copy the RELATIVE File path of the in-focus buffer" })

vim.keymap.set("n", "<leader>cP", function()
  vim.fn.setreg("+", vim.fn.expand("%:p"))
  print("Copied: " .. vim.fn.expand("%:p"))
end, { desc = "Copy the ABSOLUTE file path of the in-focus buffer" })
