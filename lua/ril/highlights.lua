-- vim:fileencoding=utf-8:foldmethod=marker
-- Setting highlights manually to fix issues/things I don't like

-- For writing less code
local hl = vim.api.nvim_set_hl

-- GruvBox Theme {{{
local gruvbox = {
  ----------------------------- Background
  bg0 = "#1D2021", -- bg dark
  bg  = "#282828", -- bg main
  bg1 = "#3C3836", -- bg alt 1
  bg2 = "#504945", -- bg alt 2
  bg3 = "#665C54", -- bg alt 3

  ----------------------------- Foreground
  fg0 = "#FBF1C7", -- fg light
  fg  = "#EBDBB2", -- fg main
  fg1 = "#D5C4A1", -- fg alt 1
  fg2 = "#BDAE93", -- fg alt 2

  ----------------------------- Colors
  ---------- Gray
  gray0   = "#7C6F64", -- gray dark
  gray    = "#928374", -- gray main
  gray1   = "#A89984", -- gray light
  ---------- Red
  red0    = "#9D0006", -- red dark
  red     = "#CC241D", -- red main
  red1    = "#FB4934", -- red light
  ---------- Green
  green0  = "#79740E", -- green dark
  green   = "#98971A", -- green main
  green1  = "#B8BB26", -- green light
  ---------- Yellow
  yellow0 = "#B57614", -- yellow dark
  yellow  = "#D79921", -- yellow main
  yellow1 = "#FABD2F", -- yellow light
  ---------- Blue
  blue0   = "#076678", -- blue dark
  blue    = "#458588", -- blue main
  blue1   = "#83A598", -- blue light
  ---------- Purple
  purple0 = "#8F3F71", -- purple dark
  purple  = "#B16286", -- purple main
  purple1 = "#D3869B", -- purple light
  ---------- Cyan
  cyan0   = "#427B58", -- cyan dark
  cyan    = "#689D6A", -- cyan main
  cyan1   = "#8EC07C", -- cyan light
  ---------- Orange
  orange0 = "#AF3A03", -- orange dark
  orange  = "#D65D0E", -- orange main
  orange1 = "#FE8019", -- orange light
}
-- }}}

-- Choose theme | opts: gruvbox
local theme = gruvbox

-- Setting highlights
----------------------------- Modicator
-- default cursor number
hl(0, "CursorLineNr", { fg = theme.fg2 })

-- modicator specific
hl(0, "NormalMode",         { fg = theme.fg2 })
hl(0, "InsertMode",         { fg = theme.blue1 })
hl(0, "VisualMode",         { fg = theme.green1 })
hl(0, "CommandMode",        { fg = theme.yellow })
hl(0, "ReplaceMode",        { fg = theme.orange1 })
hl(0, "SelectMode",         { fg = theme.fg2 })
hl(0, "TerminalMode",       { fg = theme.fg2 })
hl(0, "TerminalNormalMode", { fg = theme.fg2 })

----------------------------- Lualine
local lualine_theme = require('ril.lauline.gruvbox_ril')
require('lualine').setup {
  options = { theme = lualine_theme},
}

----------------------------- Rainbow Delimiters
hl(0, "RainbowDelimiterOrange", { fg = theme.orange1 })
hl(0, "RainbowDelimiterBlue", { fg = theme.blue1 })
hl(0, "RainbowDelimiterYellow", { fg = theme.yellow1 })
hl(0, "RainbowDelimiterCyan", { fg = theme.cyan1 })
hl(0, "RainbowDelimiterViolet", { fg = theme.purple1 })

----------------------------- Headlines
hl(0, "Dash",          { fg = theme.bg3 })
hl(0, "Headline",      { bold = true, bg = theme.bg2 })
hl(0, "HeadlinePlain", { bold = true, bg = theme.bg2 })
hl(0, "Headline1",     { bold = true, fg = theme.orange1, bg = theme.bg1 })
hl(0, "Headline2",     { bold = true, fg = theme.yellow1 })
hl(0, "Headline3",     { bold = true, fg = theme.blue1 })
hl(0, "Headline4",     { bold = true, fg = theme.cyan1 })
hl(0, "Headline5",     { bold = true, fg = theme.fg })
hl(0, "Headline6",     { bold = true, fg = theme.fg1 })

----------------------------- Todo
hl(0, "Todo", { fg = theme.blue1, bg = theme.bg1, bold = true })

----------------------------- Noice
hl(0, "NoiceMini", { bg = theme.bg2 })

----------------------------- Vim Illuminate
hl(0, "IlluminatedWordText",  { bold = true, bg = theme.bg2 })
hl(0, "IlluminatedWordRead",  { bold = true, fg = theme.cyan1, bg = theme.bg2 })
hl(0, "IlluminatedWordWrite", { bold = true, fg = theme.yellow1, bg = theme.bg2 })

----------------------------- nvim-web-devicons
require("ril.coloring.nvim-web-devicons-color.easy-color-devicons")
