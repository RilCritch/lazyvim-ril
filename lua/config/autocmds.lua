-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- utility
local function augroup(name)
  return vim.api.nvim_create_augroup("rc_" .. name, { clear = true })
end

--[[ Filetype Autocommands ]]

-- Markdown Local Keymaps
-- vim.api.nvim_create_autocmd("Filetype", {
--     group   = augroup("markdown"),
--     pattern = "markdown"
--     callback = function ()
--     end
-- })
