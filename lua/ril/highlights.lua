-- vim:fileencoding=utf-8:foldmethod=marker
-- Setting highlights manually to fix issues/things I don't like

-- For writing less code
local hl = vim.api.nvim_set_hl

-- GruvBox Theme {{{
local gruvbox = {
  ----------------------------- Background
  bg0  = "#1D2021", -- bg dark
  bg   = "#282828", -- bg main
  bg1  = "#32302F", -- bg alt 1
  bg2  = "#3C3836", -- bg alt 2
  bg3  = "#504945", -- bg alt 3

  ----------------------------- Foreground
  fg_0 = "#F9F5D7", -- fg ultra light
  fg0  = "#FBF1C7", -- fg light
  fg   = "#EBDBB2", -- fg main
  fg1  = "#D5C4A1", -- fg alt 1
  fg2  = "#BDAE93", -- fg alt 2

  ----------------------------- Colors
  ---------- Gray
  gray_0  = "#665C54", -- gray ultra dark
  gray0   = "#7C6F64", -- gray dark
  gray    = "#928374", -- gray main
  gray1   = "#A89984", -- gray light

  ---------- Red
  redB    = "#66191c", -- red bg
  red0    = "#9D0006", -- red dark
  red     = "#CC241D", -- red main
  red1    = "#FB4934", -- red light

  ---------- Green
  greenB  = "#56542e", -- green bg
  green0  = "#79740E", -- green dark
  green   = "#98971A", -- green main
  green1  = "#B8BB26", -- green light

  ---------- Yellow
  yellowB = "#775622", -- yellow bg
  yellow0 = "#B57614", -- yellow dark
  yellow  = "#D79921", -- yellow main
  yellow1 = "#FABD2F", -- yellow light

  ---------- Blue
  blueB   = "#33484d", -- blue bg
  blue0   = "#076678", -- blue dark
  blue    = "#458588", -- blue main
  blue1   = "#83A598", -- blue light

  ---------- Purple
  purpleB = "#5c3d50", -- purple bg
  purple0 = "#8F3F71", -- purple dark
  purple  = "#B16286", -- purple main
  purple1 = "#D3869B", -- purple light

  ---------- Cyan
  cyanB   = "#2d533c", -- cyan bg
  cyan0   = "#427B58", -- cyan dark
  cyan    = "#689D6A", -- cyan main
  cyan1   = "#8EC07C", -- cyan light

  ---------- Orange
  orangeB = "#702e10", -- orange bg
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

----------------------------- Nvim
hl(0, "CursorLine", { bg = theme.bg1 })

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
hl(0, "Quote",         { bold = true, fg = theme.gray_0, bg = theme.gray_0 })
hl(0, "HeadlinePlain", { bold = true, fg = theme.fg })
hl(0, "Headline",      { bold = true, fg = theme.fg, bg = theme.bg3 })
hl(0, "Headline1",     { bold = true, fg = theme.fg_0, bg = theme.blueB })
hl(0, "Headline2",     { bold = true, fg = theme.cyan1, bg = theme.bg2 })
hl(0, "Headline3",     { bold = true, fg = theme.blue1, bg = theme.bg1 })
hl(0, "Headline4",     { bold = true, fg = theme.purple1 })
hl(0, "Headline5",     { bold = true, fg = theme.cyan1 })
hl(0, "Headline6",     { bold = true, fg = theme.blue1 })

----------------------------- Todo
hl(0, "Todo", { fg = theme.bg0, bg = theme.blue1, bold = true })

----------------------------- Markdown
hl(0, "@text.title.markdown", { fg = theme.purple1, bold = true }) -- table title
hl(0, "@text.strong.markdown_inline", { fg = theme.fg_0, bold = true }) -- bold
hl(0, "@text.emphasis.markdown_inline", { fg = theme.fg0, italic = true }) -- italic
hl(0, "@text.reference.markdown_inline", { fg = theme.cyan1, underline = true }) -- link
hl(0, "@punctuation.delimiter.markdown_inline", { fg = theme.yellow1 }) -- delimiters
hl(0, "@punctuation.bracket.markdown_inline", { fg = theme.yellow1 }) -- brackets
hl(0, "@punctuation.special.markdown", { fg = theme.blue1, bold = true }) -- list chars, table borders, HR

----------------------------- Noice
hl(0, "NoiceMini", { bg = theme.bg3 })

----------------------------- Vim Illuminate
hl(0, "IlluminatedWordText",  { bold = true, bg = theme.bg3 })
hl(0, "IlluminatedWordRead",  { bold = true, fg = theme.cyan1, bg = theme.bg3 })
hl(0, "IlluminatedWordWrite", { bold = true, fg = theme.yellow1, bg = theme.bg3 })

----------------------------- nvim-web-devicons
require("ril.coloring.nvim-web-devicons-color.easy-color-devicons")
