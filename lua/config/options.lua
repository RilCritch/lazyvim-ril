-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- This file is automatically loaded by plugins.core
vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.g.autoformat = false -- globally disable auto format

local opt = vim.opt

opt.autowrite = true -- Enable auto write
opt.breakindent = true -- preserve indentation with line wrapping
opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.completeopt = "menu,menuone,noselect"
opt.conceallevel = 0 -- Hide * markup for bold and italic
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.cursorline = true -- Enable highlighting of the current line
opt.expandtab = true -- Use spaces instead of tabs
opt.foldlevelstart = 99 -- level at which vim will fold when opening buffers
opt.formatoptions = "jcroqlnt" -- tcqj
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.ignorecase = true -- Ignore case
opt.inccommand = "nosplit" -- preview incremental substitute
opt.laststatus = 0
opt.linebreak = true -- word wrapping maintains full words
opt.list = true -- Show some invisible characters (tabs...
-- opt.listchars:append("trail:█")
opt.listchars:append("trail:-")
-- opt.listchars:append("trail:☰")
opt.mouse = "a" -- Enable mouse mode
opt.number = true -- Print line number
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.relativenumber = true -- Relative line numbers
opt.scrolloff = 4 -- Lines of context
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
opt.shiftround = true -- Round indent
opt.shiftwidth = 4 -- Size of an indent
opt.shortmess:append({ W = true, I = true, c = true })
opt.showmode = false -- Dont show mode since we have a statusline
opt.sidescrolloff = 8 -- Columns of context
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.smartcase = true -- Don't ignore case with capitals
opt.smartindent = false -- Insert indents automatically
opt.spelllang = { "en" }
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.tabstop = 4 -- Number of spaces tabs count for
opt.termguicolors = true -- True color support
opt.timeoutlen = 300
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 200 -- Save swap file and trigger CursorHold
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.winminwidth = 5 -- Minimum window width
opt.wrap = true -- enable line wrap

if vim.fn.has("nvim-0.9.0") == 1 then
  opt.splitkeep = "screen"
  opt.shortmess:append({ C = true })
end

-- Markdown settings
vim.g.markdown_folding = 1
vim.g.markdown_recommended_style = 4

-- This for some reason doesn't work. Where is NormalFloat getting set? 
-- ** This doesn't work because its too early in the loading proccess... moved hightlihgts to be set after
-- ** lazy.nvim is completely done so I can override any plugin defaults I dont like in the main init.lua using the highlights.lua file
-- local mocha = require("catppuccin.palettes").get_palette("mocha") -- retrieving catppuccin colors
-- local hl = vim.api.nvim_set_hl
--
-- hl(0, "NormalFloat", { fg = mocha.text, bg = mocha.surface0 }) -- Figure out what it is using for bg
