return {
  { -- replacing with nvim autopairs
    "echasnovski/mini.pairs",
    event = "VeryLazy",
    enabled = false,
  },
  { -- remove nvim-navic since lualine is too crowded
    "SmiteshP/nvim-navic",
    enabled = false,
  },

  {
    "folke/neodev.nvim",
    enabled = false,
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "LazyFile",
    enabled = false,
    opts = { mode = "cursor" },
  },
}
