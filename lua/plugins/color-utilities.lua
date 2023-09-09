-- vim:fileencoding=utf-8:foldmethod=marker
return {
  { -- changes color of current line number to match mode colors
    "mawkler/modicator.nvim",
    init = function()
      -- vim options required by modicator
      local opt = vim.opt
      opt.cursorline = true
      opt.number = true
      opt.termguicolors = true

      -- catppuccin integration {{{
      -- local mocha = require("catppuccin.palettes").get_palette("mocha") -- retrieving catppuccin colors
      -- local hl = vim.api.nvim_set_hl -- set modicator hls with catppuccin colors
      --
      -- hl(0, "NormalMode", { fg = mocha.blue })
      -- hl(0, "InsertMode", { fg = mocha.green })
      -- hl(0, "VisualMode", { fg = mocha.mauve })
      -- hl(0, "CommandMode", { fg = mocha.peach })
      -- hl(0, "ReplaceMode", { fg = mocha.pink })
      -- hl(0, "SelectMode", { fg = mocha.blue })
      -- hl(0, "TerminalMode", { fg = mocha.blue })
      -- hl(0, "TerminalNormalMode", { fg = mocha.blue })

      -- and defualt number for current line
      -- hl(0, "CursorLineNr", { fg = mocha.blue })
      -- }}}

      local hl = vim.api.nvim_set_hl -- set modicator hls with catppuccin colors

      hl(0, "NormalMode", { fg = "#A89984" })
      hl(0, "InsertMode", { fg = "#83A898" })
      hl(0, "VisualMode", { fg = "#fE8019" })
      hl(0, "CommandMode", { fg = "#B8BB26" })
      hl(0, "ReplaceMode", { fg = "#fb4934" })
      hl(0, "SelectMode", { fg = "#A89984" })
      hl(0, "TerminalMode", { fg = "#A89984" })
      hl(0, "TerminalNormalMode", { fg = "#A89984" })

      -- and defualt number for current line
      hl(0, "CursorLineNr", { fg = "#A89984" })
    end,
    config = function()
      require("modicator").setup()
    end,
  },

  { -- making delimiters easier to distinguish
    "HiPhish/rainbow-delimiters.nvim",
    -- extra configuration here if needed
  },

  { -- hightlight color values
    "NvChad/nvim-colorizer.lua",
    -- opts = {
    --
    -- },
    config = function(_, opts)
      require("colorizer").setup(opts)
    end,
  },
}
