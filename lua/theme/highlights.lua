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
  redB    = "#66191C", -- red bg
  red0    = "#9D0006", -- red dark
  red     = "#CC241D", -- red main
  red1    = "#FB4934", -- red light
  redL    = "#EF998F", -- red ultra light

  ---------- Green
  greenB  = "#56542E", -- green bg
  green0  = "#79740E", -- green dark
  green   = "#98971A", -- green main
  green1  = "#B8BB26", -- green light
  greenL  = "#D5D775", -- green ultra light

  ---------- Yellow
  yellowB = "#775622", -- yellow bg
  yellow0 = "#B57614", -- yellow dark
  yellow  = "#D79921", -- yellow main
  yellow1 = "#FABD2F", -- yellow light
  yellowL = "#F2D48C", -- yellow ultra light

  ---------- Blue
  blueB   = "#33484D", -- blue bg
  blue0   = "#076678", -- blue dark
  blue    = "#458588", -- blue main
  blue1   = "#83A598", -- blue light
  blueL   = "#B5C9C2", -- blue ultra light

  ---------- Purple
  purpleB = "#5C3D50", -- purple bg
  purple0 = "#8F3F71", -- purple dark
  purple  = "#B16286", -- purple main
  purple1 = "#D3869B", -- purple light
  purpleL = "#dbbdc5", -- purple ultra light

  ---------- Cyan
  cyanB   = "#2D533C", -- cyan bg
  cyan0   = "#427B58", -- cyan dark
  cyan    = "#689D6A", -- cyan main
  cyan1   = "#8EC07C", -- cyan light
  cyanL   = "#c5dbbd", -- cyan ultra light

  ---------- Orange
  orangeB = "#702E10", -- orange bg
  orange0 = "#AF3A03", -- orange dark
  orange  = "#D65D0E", -- orange main
  orange1 = "#FE8019", -- orange light
  orangeL = "#f6ba88", -- orange ultra light
}
-- }}}

-- Everforest Theme {{{
local everforest = {
  ----------------------------- Background
  bg_0  = "#1a1f22", -- bg dark
  bg0  = "#1E2326", -- bg dark
  bg   = "#232A2E", -- bg main
  bgA  = "#2D353B", -- bg main alt
  bg1  = "#2E383C", -- bg alt 1
  bg2  = "#374145", -- bg alt 2
  bg3  = "#414B50", -- bg alt 3
  bg4  = "#495156", -- bg alt 4

  ----------------------------- Foreground
  fg_0 = "#F3EAD3", -- fg ultra light
  fg0  = "#DCD2BC", -- fg light
  fg   = "#D3C6AA", -- fg main
  fg1  = "#C9BB9C", -- fg alt 1

  ----------------------------- Colors
  ---------- Gray
  gray_0  = "#4F5B58", -- gray ultra dark
  gray0   = "#7A8478", -- gray dark
  gray    = "#859289", -- gray main
  gray1   = "#9DA9A0", -- gray light

  ---------- Red
  redB    = "#4C3743", -- red bg
  red0    = "#5C3D4F", -- red dark
  red     = "#E67E80", -- red main
  redF    = "#F4DBD0", -- red fg

  ---------- Green
  greenB  = "#3C4841", -- green bg
  green0  = "#48584E", -- green dark
  green   = "#A7C080", -- green main
  greenF  = "#E5E6C5", -- green fg

  ---------- Yellow
  yellowB = "#45443C", -- yellow bg
  yellow0 = "#55544A", -- yellow dark
  yellow  = "#DBBC7F", -- yellow main
  yellowF = "#F1E4C5", -- yellow fg

  ---------- Blue
  blueB   = "#384B55", -- blue bg
  blue0   = "#3F5865", -- blue dark
  blue    = "#7FBBB3", -- blue main
  blueF   = "#E1E7DD", -- blue fg

  ---------- Purple
  purpleB = "#50303f", -- purple bg
  purple0 = "#63364C", -- purple dark
  purple  = "#D699B6", -- purple main
  purpleF = "#eddee5", -- purple fg

  ---------- Cyan
  cyanB   = "#305038", -- cyan bg
  cyan0   = "#396043", -- cyan dark
  cyan    = "#83C092", -- cyan main
  cyanF   = "#EEF6F0", -- cyan fg

  ---------- Orange
  orangeB = "#493B40", -- orange bg
  orange0 = "#59464C", -- orange dark
  orange  = "#E69875", -- orange main
  orangeF = "#F7DFD4", -- orange fg
}
-- }}}

-- Choose theme | opts: gruvbox
local theme = everforest

-- Setting look and feel

----------------------------- LSP
-- lua
hl(0, "@keyword.luadoc",       { fg = theme.gray })
hl(0, "@lsp.type.keyword.lua", { fg = theme.blue })

----------------------------- Todo-Comments
require("todo-comments").setup {
  -- Highlights
  keywords = {
    FIX =  { icon = " ", color = theme.red },
    TODO = { icon = " ", color = theme.blue },
    HACK = { icon = " ", color = theme.yellow },
    WARN = { icon = " ", color = theme.yellow },
    PERF = { icon = " ", color = theme.purple },
    NOTE = { icon = "󰋼 ", color = theme.green },
    TEST = { icon = "󰙨 ", color = theme.blue },
  },
  -- Behavior
  highlight = {
    multiline = false,
  }
}

----------------------------- Modicator {{{
-- default cursor number
--[[
hl(0, "CursorLineNr", { fg = theme.fg2 })
--]]

-- modicator specific
--[[
hl(0, "NormalMode",         { fg = theme.fg2 })
hl(0, "InsertMode",         { fg = theme.blue1 })
hl(0, "VisualMode",         { fg = theme.green1 })
hl(0, "CommandMode",        { fg = theme.yellow })
hl(0, "ReplaceMode",        { fg = theme.orange1 })
hl(0, "SelectMode",         { fg = theme.fg2 })
hl(0, "TerminalMode",       { fg = theme.fg2 })
hl(0, "TerminalNormalMode", { fg = theme.fg2 })
--]]
-- }}}

----------------------------- Nvim
hl(0, "CursorLine", { bg = theme.bgA, sp = theme.bg2 ,underline = true })
hl(0, "NormalFloat", { fg = theme.fg, bg = theme.bg })
hl(0, "FloatBorder", { fg = theme.cyan, bg = theme.bg })
hl(0, "FloatTitle", { fg = theme.blue, bg = theme.bg })

----------------------------- Lualine {{{
--[[
local lualine_theme = require('theme.lualine.gruvbox_ril')
require('lualine').setup {
  options = { theme = lualine_theme },
}
--]]
-- }}}

----------------------------- Rainbow Delimiters {{{
--[[
hl(0, "RainbowDelimiterOrange", { fg = theme.orange1 })
hl(0, "RainbowDelimiterBlue", { fg = theme.blue1 })
hl(0, "RainbowDelimiterYellow", { fg = theme.yellow1 })
hl(0, "RainbowDelimiterCyan", { fg = theme.cyan1 })
hl(0, "RainbowDelimiterViolet", { fg = theme.purple1 })
--]]
-- }}}

----------------------------- Headlines
hl(0, "Dash",                { fg = theme.bg3 })
hl(0, "HeadlinePlain",       { bold = true, fg = theme.fg })
hl(0, "Headline",            { bold = true, fg = theme.fg })

hl(0, "Headline1",           { bold = true, fg = theme.bg0, bg = theme.cyan })
hl(0, "MarkerHeadline1",     { bold = true, fg = theme.bg0, bg = theme.cyan })

hl(0, "Headline2",           { bold = true, fg = theme.bg0, bg = theme.blue })
hl(0, "MarkerHeadline2",     { bold = true, fg = theme.bg0, bg = theme.blue })

hl(0, "Headline3",           { bold = true, fg = theme.cyan, bg= theme.bg2 })
hl(0, "MarkerHeadline3",     { bold = true, fg = theme.cyan, bg= theme.bg2 })

hl(0, "Headline4",           { bold = true, fg = theme.blue, bg = theme.bg2 })
hl(0, "MarkerHeadline4",     { bold = true, fg = theme.blue, bg = theme.bg2 })

hl(0, "Headline5",           { bold = true, fg = theme.fg_0 })
hl(0, "MarkerHeadline5",     { bold = true, fg = theme.fg_0 })

hl(0, "Headline6",           { bold = true, fg = theme.fg })
hl(0, "MarkerHeadline6",     { bold = true, fg = theme.fg })

----------------------------- Markdown
hl(0, "@markup.list.markdown", { fg = theme.gray1 })  -- Task Checked

hl(0, "@markup.list.unchecked.markdown", { fg = theme.bg, bg = theme.cyan })       -- Task Unchecked
hl(0, "@markup.list.checked.markdown",   { fg = theme.bg, bg = theme.gray0 })  -- Task Checked

hl(0, "@punctuation.special.markdown", { fg = theme.gray1, })              -- Block Quote Bar
hl(0, "@markup.quote.markdown",        { fg = theme.fg, bg = theme.bg2 }) -- Block Quote Text

hl(0, "@markup.strong.markdown_inline", { bold = true, fg = theme.yellow })   -- Bold
hl(0, "@markup.italic.markdown_inline", { italic = true, fg = theme.blue }) -- Italic

hl(0, "@markup.link.label.markdown_inline", { fg = theme.cyan, underline = true }) -- Link Title

----------------------------- Mini Indent Scope
hl(0, "MiniIndentscopeSymbol", { fg = theme.blue }) -- Link Title

----------------------------- Noice {{{
--[[
hl(0, "NoiceMini", { bg = theme.bg3 })
--]]
-- }}}

----------------------------- Vim Illuminate
hl(0, "IlluminatedWordText",  { bold = true, bg = theme.bg2 }) -- Reference with out special info
hl(0, "IlluminatedWordRead",  { bold = true, bg = theme.bg2, italic = true }) -- Reference denoting access
hl(0, "IlluminatedWordWrite", { bold = true, bg = theme.bg2, fg = theme.blue }) -- Reference denoting assignment

----------------------------- Nvim Neo Tree
hl(0, "NeoTreeNormal",      { fg = theme.fg, bg = theme.bg })   -- BG For Normal Items
hl(0, "NeoTreeNormalNC",    { fg = theme.fg, bg = theme.bg })   -- BG Normal Items
hl(0, "NeoTreeEndOfBuffer", { fg = theme.bg, bg = theme.bg })   -- BG For End of Bugger
hl(0, "NeoTreeBufferLineTitle", { fg = theme.cyan, bg = theme.bg }) -- Bufferline hls
hl(0, "BufferlineOffsetSeparator", { fg = theme.bg4, bg = theme.bg })

----------------------------- Dashboard
hl(0, "DashboardHeader", { fg = theme.cyan })
hl(0, "DashboardFooter", { fg = theme.gray })
hl(0, "DashboardDescription", { fg = theme.orange })
hl(0, "DashboardKey", { fg = theme.blue })
hl(0, "DashboardIcon", { fg = theme.blue })

----------------------------- nvim-web-devicons
--[[
require("ril.coloring.nvim-web-devicons-color.easy-color-devicons")
--]]
