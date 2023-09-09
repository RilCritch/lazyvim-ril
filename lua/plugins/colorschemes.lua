return {
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   opts = {
  --     flavour = "mocha", -- latte, frappe, macchiato, mocha
  --     color_overrides = {
  --       mocha = {
  --         base = "#181825",
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
    priority = 1000,
    init = function()
      -- adding additional highlights
      local hl = vim.api.nvim_set_hl -- set modicator hls with catppuccin colors

      hl(0, "NotifyBackground", { fg = "#282828" })
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
