-- My custome gruvbox theme for lualine
local colors = {
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

return {
  normal = {
    a = { bg = colors.fg2, fg = colors.bg, gui = 'bold' },
    b = { bg = colors.bg2, fg = colors.fg },
    c = { bg = colors.bg1, fg = colors.fg2 },
  },
  insert = {
    a = { bg = colors.blue1, fg = colors.bg, gui = 'bold' },
    b = { bg = colors.bg2, fg = colors.fg },
    c = { bg = colors.bg1, fg = colors.fg2 },
  },
  visual = {
    a = { bg = colors.green1, fg = colors.bg, gui = 'bold' },
    b = { bg = colors.bg2, fg = colors.fg },
    c = { bg = colors.bg1, fg = colors.fg2 },
  },
  replace = {
    a = { bg = colors.orange1, fg = colors.bg, gui = 'bold' },
    b = { bg = colors.bg2, fg = colors.fg },
    c = { bg = colors.bg1, fg = colors.fg2 },
  },
  command = {
    a = { bg = colors.yellow, fg = colors.bg, gui = 'bold' },
    b = { bg = colors.bg2, fg = colors.fg },
    c = { bg = colors.bg1, fg = colors.fg2 },
  },
  inactive = {
    a = { bg = colors.bg1, fg = colors.fg2, gui = 'bold' },
    b = { bg = colors.bg1, fg = colors.fg2 },
    c = { bg = colors.bg1, fg = colors.fg2 },
  },
}
