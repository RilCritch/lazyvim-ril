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

  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   -- priority = 1000,
  --   opts = {
  --     transparent_mode = true,
  --   },
  -- },

  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require("everforest").setup({
        -- Your config here
        -- background = "hard",
      })
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "tokyonight",
      -- colorscheme = "nordic",
      -- colorscheme = "catppuccin",
      -- colorscheme = "gruvbox",
      colorscheme = "everforest",
    },
  },
}
