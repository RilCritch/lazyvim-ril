-- local map = vim.keymap.set

-- local function insertTextWithCount(text, count)
--     count = count or 1
--
--     for _ = 1, count do
--         local lines = vim.split(text, "\n", true)
--         vim.api.nvim_put(lines, 'c', true, true)
--     end
-- end

-- Local keymaps for neovim
-- map("n", "<LocalLeader>vc", "<cmd>qa<cr>", { desc = "Quit all spec" })
-- map("n", "<LocalLeader>vs", "<cmd>w<cr><esc>", { desc = "Save file spec" })
-- map('n', '<LocalLeader>t', function()
--     insertTextWithCount("- [ ] tsk", vim.v.count1)
-- end, {silent = true, desc = "Insert Task"})

-- Local vim options
