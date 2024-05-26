-- vim:fileencoding=utf-8:foldmethod=marker

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local del = vim.keymap.del

-- overrides
del('n', '<leader>qq')

-- utility
-- map('n', ';', ':', { desc = 'Quick command mode' })

-- colorizer
map('n', '<leader>cc', '<cmd>ColorizerToggle<cr>', { desc = 'Toggle color highlighting' })
map('n', '<leader>ce', '<cmd>ColorizerAttachToBuffer<cr>', { desc = 'Enable color highlighting' })

-- windows
map('n', '<leader>wo', '<C-W>o', { desc = 'Close all other windows', remap = true })

-- notes/documents
map('n', '<leader>mc', '<cmd>MdEval<cr>', { desc = 'Run code block', silent = true, noremap = true })

-- oil file manager
map('n', '<leader>oo', function() -- toggle oil floating
  require('oil').open(nil)
end, { desc = 'Open oil', silent = true })
map('n', '<leader>oc', function() -- toggle oil floating
  require('oil').close()
end, { desc = 'Close oil', silent = true })
map('n', '<leader>e', function() -- toggle oil floating
  require('oil').toggle_float(nil)
end, { desc = 'Toggle oil floating', silent = true })

-- vim control
map('n', '<leader>vc', '<cmd>qa<cr>', { desc = 'Quit all' })
map('n', '<leader>vs', '<cmd>w<cr><esc>', { desc = 'Save file' })
-- look into making keybinding for wq
