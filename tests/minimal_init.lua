-- Minimal Neovim configuration for running SQL tests

vim.opt.runtimepath:append(".")
vim.opt.runtimepath:append("../poste.nvim")

package.path = package.path
  .. ";./tests/?.lua"
  .. ";./tests/?/init.lua"
  .. ";./tests/helpers/?.lua"

vim.api.nvim_buf_set_option(0, "filetype", "poste_sql")