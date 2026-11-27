-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<F6>", function()
  vim.cmd("write")

  local file = vim.fn.expand("%:p")
  local output = vim.fn.expand("%:p:r")

  vim.cmd("split")
  vim.cmd("terminal clang++ -std=c++11 -g -O0 " .. vim.fn.shellescape(file) .. " -o " .. vim.fn.shellescape(output))
end, { desc = "Compile C++" })

vim.keymap.set("n", "<F7>", function()
  vim.cmd("write")

  local file = vim.fn.shellescape(vim.fn.expand("%:p"))
  local output = vim.fn.shellescape(vim.fn.expand("%:p:r"))

  vim.cmd("split")
  vim.cmd("terminal clang++ -std=c++11 -g -O0 " .. file .. " -o " .. output .. " && " .. output)
  vim.cmd("startinsert")
end, { desc = "Compile and Run C++" })
