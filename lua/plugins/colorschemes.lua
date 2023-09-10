return {
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   opts = {
  --     flavour = "mocha", -- latte, frappe, macchiato, mocha
  --     color_overrides = {
  --       mocha = {
  --         base = "#181825"
  --         mantle = "#1e1e2e",
  --       },
  --     },
  --     integrations = {
  --       aerial = true,
  --       markdown = true,
  --       nvimtree = true,
  --       rainbow_delimiters = true,
  --       bufferline = true,
  --     },
  --   },
  -- },
  {
    "ellisonleao/gruvbox.nvim",
    -- priority = 1000,
    init = function()
      -- adding additional highlights
      local hl = vim.api.nvim_set_hl -- set modicator hls with catppuccin colors

      hl(0, "FloatShadow", { bg = "#282828" })
      hl(0, "FloatShadowThrough", { bg = "#282828" })
      hl(0, "NormalFloat", { fg = "#ebdbb2", bg = "#282828" })
      hl(0, "Normal", { fg = "#ebdbb2", bg = "#282828" })
      hl(0, "MsgArea", { fg = "#ebdbb2", bg = "#282828" })
    end,
    opts = {
      transparent_mode = true,
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "tokyonight",
      -- colorscheme = "nordic",
      -- colorscheme = "catppuccin",
      colorscheme = "gruvbox",
    },
  },
}
