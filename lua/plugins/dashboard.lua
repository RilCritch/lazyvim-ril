-- vim:fileencoding=utf-8:foldmethod=marker:
-- vim: ts=2 sts=2 sw=2 et
return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function()
      -- local logo = [[
      --    ██╗      █████╗ ███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗          Z
      --    ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║      Z
      --    ██║     ███████║  ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║   z
      --    ██║     ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║ z
      --    ███████╗██║  ██║███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║
      --    ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝
      -- ]]

--       local logo = [[
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--       ]]

--       local logo = [[
-- ██████╗ ██╗██╗         ███████╗██████╗ ██╗████████╗███████╗██╗  ██╗
-- ██╔══██╗██║██║         ██╔════╝██╔══██╗██║╚══██╔══╝██╔════╝██║  ██║
-- ██████╔╝██║██║         ██║     ██████╔╝██║   ██║   ██║     ███████║
-- ██╔══██╗██║██║         ██║     ██╔══██╗██║   ██║   ██║     ██╔══██║
-- ██║  ██║██║███████╗    ███████╗██║  ██║██║   ██║   ███████╗██║  ██║
-- ╚═╝  ╚═╝╚═╝╚══════╝    ╚══════╝╚═╝  ╚═╝╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝
--       ]]

--       local logo = [[
-- ██████╗ ███████╗██████╗ ██╗ █████╗ ███╗   ██╗
-- ██╔══██╗██╔════╝██╔══██╗██║██╔══██╗████╗  ██║
-- ██║  ██║█████╗  ██████╔╝██║███████║██╔██╗ ██║
-- ██║  ██║██╔══╝  ██╔══██╗██║██╔══██║██║╚██╗██║
-- ██████╔╝███████╗██████╔╝██║██║  ██║██║ ╚████║
-- ╚═════╝ ╚══════╝╚═════╝ ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝
--       ]]

--       local logo = [[
-- ╭──────────────────────────────────────────────────────────╮
-- │╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱│
-- │╱╱╱╱█▀▀█ ▀█▀╱╱█╱╱╱╱╱╱╱█▀▀█╱╱█▀▀█╱▀█▀╱▀▀█▀▀╱╱█▀▀█╱╱█╱╱█╱╱╱╱│
-- │╱╱╱╱█▄▄▀╱╱█╱╱╱█╱╱╱╱╱╱╱█╱╱╱╱╱█▄▄▀╱╱█╱╱╱╱█╱╱╱╱█╱╱╱╱╱█▀▀█╱╱╱╱│
-- │╱╱╱╱█  █ ▄█▄╱╱█▄▄█╱╱╱╱█▄▄█╱╱█╱╱█╱▄█▄╱╱╱█╱╱╱╱█▄▄█╱╱█╱╱█╱╱╱╱│
-- │╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱│
-- ╰──────────────────────────────────────────────────────────╯
--       ]]
      local logo = [[
╭──────────────────────────────────────────────────────╮
│                                                      │
│    █▀▀█ ▀█▀ █       █▀▀█ █▀▀█ ▀█▀ ▀▀█▀▀ █▀▀█ █  █    │
│    █▄▄▀  █  █       █    █▄▄▀  █    █   █    █▀▀█    │
│    █  █ ▄█▄ █▄▄█    █▄▄█ █  █ ▄█▄   █   █▄▄█ █  █    │
│                                                      │
╰──────────────────────────────────────────────────────╯
      ]]


      logo = string.rep("\n", 8) .. logo
      -- logo = logo

      local opts = {
        theme = "doom",
        hide = {
          -- this is taken care of by lualine
          -- enabling this messes up the actual laststatus setting after loading a file
          statusline = false,
        },
        config = {
          header = vim.split(logo, "\n"),
          -- header = vim.split(logo, ""),
          -- week_header = {
          --   enable = true,
          -- },
          -- stylua: ignore
          center = {
            { action = "Telescope find_files",              desc = " Find file",       icon = " ", key = "f" },
            { action = 'lua require("oil").toggle_float()', desc = " Explorer",        icon = "󰣞 ", key = "e" },
            { action = "ene | startinsert",                 desc = " New file",        icon = " ", key = "n" },
            { action = "Telescope oldfiles",                desc = " Recent files",    icon = " ", key = "r" },
            { action = 'lua require("persistence").load()', desc = " Restore Session", icon = " ", key = "s" },
            { action = "Telescope help_tags",               desc = " Help",            icon = " ", key = "h" },
            { action = "Lazy",                              desc = " Lazy",            icon = "󰒲 ", key = "l" },
            { action = "qa",                                desc = " Quit",            icon = " ", key = "q" },
          },
          footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "󱐋 Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
          end,
        },
      }

      for _, button in ipairs(opts.config.center) do
        button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
        button.key_format = "  %s"
      end

      -- close Lazy and re-open when the dashboard is ready
      if vim.o.filetype == "lazy" then
        vim.cmd.close()
        vim.api.nvim_create_autocmd("User", {
          pattern = "DashboardLoaded",
          callback = function()
            require("lazy").show()
          end,
        })
      end

      return opts
    end,
  },
}
