-- vim:fileencoding=utf-8:foldmethod=marker

-- Pallete for nvim-web-devicons
local colors = require("ril.coloring.nvim-web-devicons-color.color-devicon-themes.gruvbox-dark")

local icons_by_filename = { -- {{{
  [".babelrc"] = {
    icon = "",
    color = colors.yellow,
    name = "Babelrc",
  },
  [".bash_profile"] = {
    icon = "",
    color = colors.green,
    name = "BashProfile",
  },
  [".bashrc"] = {
    icon = "",
    color = colors.green,
    name = "Bashrc",
  },
  [".ds_store"] = {
    icon = "",
    color = colors.blue1,
    name = "DsStore",
  },
  [".editorconfig"] = {
    icon = "",
    color = colors.white,
    name = "EditorConfig",
  },
  [".eslintrc"] = {
    icon = "",
    color = colors.magenta1,
    name = "Eslintrc",
  },
  [".gitattributes"] = {
    icon = "",
    color = colors.blue1,
    name = "GitAttributes",
  },
  [".gitconfig"] = {
    icon = "",
    color = colors.blue1,
    name = "GitConfig",
  },
  [".gitignore"] = {
    icon = "",
    color = colors.blue1,
    name = "GitIgnore",
  },
  [".gitlab-ci.yml"] = {
    icon = "",
    color = colors.red,
    name = "GitlabCI",
  },
  [".gitmodules"] = {
    icon = "",
    color = colors.blue1,
    name = "GitModules",
  },
  [".gvimrc"] = {
    icon = "",
    color = colors.green1,
    name = "Gvimrc",
  },
  [".npmignore"] = {
    icon = "",
    color = colors.red1,
    name = "NPMIgnore",
  },
  [".npmrc"] = {
    icon = "",
    color = colors.red1,
    name = "NPMrc",
  },
  [".settings.json"] = {
    icon = "",
    color = colors.magenta1,
    name = "SettingsJson",
  },
  ["svelte.config.js"] = {
    icon = "",
    color = colors.red1,
    name = "SvelteConfig",
  },
  [".vimrc"] = {
    icon = "",
    color = colors.green1,
    name = "Vimrc",
  },
  [".zprofile"] = {
    icon = "",
    color = colors.green,
    name = "Zshprofile",
  },
  [".zshenv"] = {
    icon = "",
    color = colors.green,
    name = "Zshenv",
  },
  [".zshrc"] = {
    icon = "",
    color = colors.green,
    name = "Zshrc",
  },
  ["brewfile"] = {
    icon = "",
    color = colors.red1,
    name = "Brewfile",
  },
  ["cmakelists.txt"] = {
    icon = "",
    color = colors.gray1,
    name = "CMakeLists",
  },
  ["commit_editmsg"] = {
    icon = "",
    color = colors.blue1,
    name = "GitCommit",
  },
  ["containerfile"] = {
    icon = "󰡨",
    color = colors.blue,
    name = "Dockerfile",
  },
  ["copying"] = {
    icon = "",
    color = colors.yellow,
    name = "License",
  },
  ["copying.lesser"] = {
    icon = "",
    color = colors.yellow,
    name = "License",
  },
  ["docker-compose.yml"] = {
    icon = "󰡨",
    color = colors.blue,
    cterm_color = "68",
    name = "Dockerfile",
  },
  ["docker-compose.yaml"] = {
    icon = "󰡨",
    color = colors.blue,
    cterm_color = "68",
    name = "Dockerfile",
  },
  [".dockerignore"] = {
    icon = "󰡨",
    color = colors.blue,
    name = "Dockerfile",
  },
  ["gemfile$"] = {
    icon = "",
    color = colors.red1,
    name = "Gemfile",
  },
  ["license"] = {
    icon = "",
    color = colors.yellow,
    name = "License",
  },
  ["r"] = {
    icon = "󰟔",
    color = colors.green1,
    name = "R",
  },
  ["rmd"] = {
    icon = "",
    color = colors.blue1,
    name = "Rmd",
  },
  ["vagrantfile$"] = {
    icon = "",
    color = colors.blue,
    name = "Vagrantfile",
  },
  ["_gvimrc"] = {
    icon = "",
    color = colors.green1,
    name = "Gvimrc",
  },
  ["_vimrc"] = {
    icon = "",
    color = colors.green1,
    name = "Vimrc",
  },
  ["package.json"] = {
    icon = "",
    color = colors.red1,
    name = "PackageJson",
  },
  ["package-lock.json"] = {
    icon = "",
    color = colors.red1,
    name = "PackageLockJson",
  },
  ["node_modules"] = {
    icon = "",
    color = colors.red1,
    name = "NodeModules",
  },
  ["favicon.ico"] = {
    icon = "",
    color = colors.green,
    name = "Favicon",
  },
  ["gnumakefile"] = {
    icon = "",
    color = colors.gray1,
    name = "Makefile",
  },
  ["makefile"] = {
    icon = "",
    color = colors.gray1,
    name = "Makefile",
  },
  ["mix.lock"] = {
    icon = "",
    color = colors.magenta,
    name = "MixLock",
  },
  [".env"] = {
    icon = "",
    color = colors.yellow,
    name = "Env",
  },
  ["gruntfile"] = {
    icon = "",
    color = colors.orange,
    name = "Gruntfile",
  },
  ["gulpfile"] = {
    icon = "",
    color = colors.red1,
    name = "Gulpfile",
  },
  ["webpack"] = {
    icon = "󰜫",
    color = colors.blue,
    name = "Webpack",
  },
  ["rakefile"] = {
    icon = "",
    color = colors.red1,
    name = "Rakefile",
  },
  ["procfile"] = {
    icon = "",
    color = colors.magenta1,
    name = "Procfile",
  },
  ["dockerfile"] = {
    icon = "󰡨",
    color = colors.blue,
    name = "Dockerfile",
  },
  ["build"] = {
    icon = "",
    color = colors.green,
    name = "BazelBuild",
  },
  ["workspace"] = {
    icon = "",
    color = colors.green,
    name = "BazelWorkspace",
  },
  ["unlicense"] = {
    icon = "",
    color = colors.yellow,
    name = "License",
  },
}
-- }}}

local icons_by_file_extension = { -- {{{
  ["ai"] = {
    icon = "",
    color = colors.yellow,
    name = "Ai",
  },
  ["awk"] = {
    icon = "",
    color = colors.gray1,
    name = "Awk",
  },
  ["bash"] = {
    icon = "",
    color = colors.green,
    name = "Bash",
  },
  ["bat"] = {
    icon = "",
    color = colors.cyan,
    name = "Bat",
  },
  ["bazel"] = {
    icon = "",
    color = colors.green,
    name = "Bazel",
  },
  ["bzl"] = {
    icon = "",
    color = colors.green,
    name = "Bzl",
  },
  ["bmp"] = {
    icon = "",
    color = colors.magenta,
    name = "Bmp",
  },
  ["c"] = {
    icon = "",
    color = colors.blue,
    name = "C",
  },
  ["c++"] = {
    icon = "",
    color = colors.magenta,
    name = "CPlusPlus",
  },
  ["cbl"] = {
    icon = "⚙",
    color = colors.blue1,
    name = "Cobol",
  },
  ["cc"] = {
    icon = "",
    color = colors.magenta,
    name = "CPlusPlus",
  },
  ["cfg"] = {
    icon = "",
    color = colors.white1,
    name = "Configuration",
  },
  ["cjs"] = {
    icon = "",
    color = colors.cyan,
    name = "Cjs",
  },
  ["clj"] = {
    icon = "",
    color = colors.green,
    name = "Clojure",
  },
  ["cljc"] = {
    icon = "",
    color = colors.green,
    name = "ClojureC",
  },
  ["cljs"] = {
    icon = "",
    color = colors.blue,
    name = "ClojureJS",
  },
  ["cljd"] = {
    icon = "",
    color = colors.blue,
    name = "ClojureDart",
  },
  ["cmake"] = {
    icon = "",
    color = colors.gray1,
    name = "CMake",
  },
  ["cob"] = {
    icon = "⚙",
    color = colors.blue1,
    name = "Cobol",
  },
  ["cobol"] = {
    icon = "⚙",
    color = colors.blue1,
    name = "Cobol",
  },
  ["coffee"] = {
    icon = "",
    color = colors.yellow,
    name = "Coffee",
  },
  ["conf"] = {
    icon = "",
    color = colors.gray,
  },
  ["config.ru"] = {
    icon = "",
    color = colors.red1,
    name = "ConfigRu",
  },
  ["cp"] = {
    icon = "",
    color = colors.blue,
    name = "Cp",
  },
  ["cpp"] = {
    icon = "",
    color = colors.blue,
    name = "Cpp",
  },
  ["cpy"] = {
    icon = "⚙",
    color = colors.blue1,
    name = "Cobol",
  },
  ["cr"] = {
    icon = "",
    color = colors.white,
    name = "Crystal",
  },
  ["cs"] = {
    icon = "󰌛",
    color = colors.green1,
    name = "Cs",
  },
  ["csh"] = {
    icon = "",
    color = colors.gray1,
    name = "Csh",
  },
  ["cson"] = {
    icon = "",
    color = colors.yellow,
    name = "Cson",
  },
  ["css"] = {
    icon = "",
    color = colors.blue,
    name = "Css",
  },
  ["csv"] = {
    icon = "󰈙",
    color = colors.green,
    name = "Csv",
  },
  ["cts"] = {
    icon = "",
    color = colors.blue,
    name = "Cts",
  },
  ["cxx"] = {
    icon = "",
    color = colors.blue,
    name = "Cxx",
  },
  ["d"] = {
    icon = "",
    color = colors.green,
    name = "D",
  },
  ["dart"] = {
    icon = "",
    color = colors.blue1,
    name = "Dart",
  },
  ["db"] = {
    icon = "",
    color = colors.white,
    name = "Db",
  },
  ["desktop"] = {
    icon = "",
    color = colors.magenta1,
    name = "DesktopEntry",
  },
  ["diff"] = {
    icon = "",
    color = colors.gray1,
    name = "Diff",
  },
  ["doc"] = {
    icon = "󰈬",
    color = colors.blue1,
    name = "Doc",
  },
  ["docx"] = {
    icon = "󰈬",
    color = colors.blue1,
    name = "Docx",
  },
  ["drl"] = {
    icon = "",
    color = colors.magenta,
    name = "Drools",
  },
  ["dropbox"] = {
    icon = "",
    color = colors.blue1,
    name = "Dropbox",
  },
  ["dump"] = {
    icon = "",
    color = colors.white1,
    name = "Dump",
  },
  ["edn"] = {
    icon = "",
    color = colors.blue,
    name = "Edn",
  },
  ["eex"] = {
    icon = "",
    color = colors.magenta,
    name = "Eex",
  },
  ["ejs"] = {
    icon = "",
    color = colors.yellow,
    name = "Ejs",
  },
  ["elm"] = {
    icon = "",
    color = colors.blue,
    name = "Elm",
  },
  ["epp"] = {
    icon = "",
    color = colors.orange,
    name = "Epp",
  },
  ["erb"] = {
    icon = "",
    color = colors.red1,
    name = "Erb",
  },
  ["erl"] = {
    icon = "",
    color = colors.magenta1,
    name = "Erl",
  },
  ["ex"] = {
    icon = "",
    color = colors.magenta,
    name = "Ex",
  },
  ["exs"] = {
    icon = "",
    color = colors.megenta,
    name = "Exs",
  },
  ["f#"] = {
    icon = "",
    color = colors.blue,
    name = "Fsharp",
  },
  ["f90"] = {
    icon = "󱈚",
    color = colors.magenta,
    name = "Fortran",
  },
  ["fnl"] = {
    icon = "🌜",
    color = colors.white,
    name = "Fennel",
  },
  ["fish"] = {
    icon = "",
    color = colors.gray1,
    name = "Fish",
  },
  ["fs"] = {
    icon = "",
    color = colors.blue,
    name = "Fs",
  },
  ["fsi"] = {
    icon = "",
    color = colors.blue,
    name = "Fsi",
  },
  ["fsscript"] = {
    icon = "",
    color = colors.blue,
    name = "Fsscript",
  },
  ["fsx"] = {
    icon = "",
    color = colors.blue,
    name = "Fsx",
  },
  ["gd"] = {
    icon = "",
    color = colors.gray,
    name = "GDScript",
  },
  ["gemspec"] = {
    icon = "",
    color = colors.gray,
    name = "Gemspec",
  },
  ["gif"] = {
    icon = "",
    color = colors.magenta,
    name = "Gif",
  },
  ["git"] = {
    icon = "",
    color = colors.orange1,
    name = "GitLogo",
  },
  ["glb"] = {
    icon = "",
    color = colors.yellow,
    name = "BinaryGLTF",
  },
  ["go"] = {
    icon = "",
    color = colors.blue,
    name = "Go",
  },
  ["godot"] = {
    icon = "",
    color = colors.gray1,
    name = "GodotProject",
  },
  ["graphql"] = {
    icon = "",
    color = colors.magenta1,
    name = "GraphQL",
  },
  ["gql"] = {
    icon = "",
    color = colors.magenta1,
    name = "GraphQL",
  },
  ["h"] = {
    icon = "",
    color = colors.megenta,
    name = "H",
  },
  ["haml"] = {
    icon = "",
    color = colors.white,
    cterm_color = "255",
    name = "Haml",
  },
  ["hbs"] = {
    icon = "",
    color = colors.orange,
    name = "Hbs",
  },
  ["heex"] = {
    icon = "",
    color = colors.magenta,
    cterm_color = "140",
    name = "Heex",
  },
  ["hh"] = {
    icon = "",
    color = colors.magenta,
    name = "Hh",
  },
  ["hpp"] = {
    icon = "",
    color = colors.magenta,
    name = "Hpp",
  },
  ["hrl"] = {
    icon = "",
    color = colors.magenta1,
    name = "Hrl",
  },
  ["hs"] = {
    icon = "",
    color = colors.magenta,
    name = "Hs",
  },
  ["htm"] = {
    icon = "",
    color = colors.orange1,
    name = "Htm",
  },
  ["html"] = {
    icon = "",
    color = colors.orange1,
    name = "Html",
  },
  ["huff"] = {
    icon = "󰡘",
    color = colors.cyan1,
    name = "Huff",
  },
  ["hxx"] = {
    icon = "",
    color = colors.magenta,
    name = "Hxx",
  },
  ["ico"] = {
    icon = "",
    color = colors.yellow,
    name = "Ico",
  },
  ["import"] = {
    icon = "",
    color = colors.white,
    name = "ImportConfiguration",
  },
  ["ini"] = {
    icon = "",
    color = colors.gray1,
    name = "Ini",
  },
  ["java"] = {
    icon = "",
    color = colors.red1,
    name = "Java",
  },
  ["jl"] = {
    icon = "",
    color = colors.magenta,
    name = "Jl",
  },
  ["jpeg"] = {
    icon = "",
    color = colors.magenta,
    name = "Jpeg",
  },
  ["jpg"] = {
    icon = "",
    color = colors.magenta,
    name = "Jpg",
  },
  ["js"] = {
    icon = "",
    color = colors.yellow,
    name = "Js",
  },
  ["test.js"] = {
    icon = "",
    color = colors.yellow,
    name = "TestJs",
  },
  ["spec.js"] = {
    icon = "",
    color = colors.yellow,
    cterm_color = "185",
    name = "SpecJs",
  },
  ["json"] = {
    icon = "",
    color = colors.yellow,
    name = "Json",
  },
  ["jsonc"] = {
    icon = "",
    color = colors.yellow,
    name = "Jsonc",
  },
  ["json5"] = {
    icon = "",
    color = colors.yellow,
    name = "Json5",
  },
  ["jsx"] = {
    icon = "",
    color = colors.cyan,
    name = "Jsx",
  },
  ["test.jsx"] = {
    icon = "",
    color = colors.cyan,
    name = "JavaScriptReactTest",
  },
  ["spec.jsx"] = {
    icon = "",
    color = colors.cyan,
    name = "JavaScriptReactSpec",
  },
  ["ksh"] = {
    icon = "",
    color = colors.gray1,
    name = "Ksh",
  },
  ["kt"] = {
    icon = "",
    color = colors.magenta1,
    name = "Kotlin",
  },
  ["kts"] = {
    icon = "",
    color = colors.magenta1,
    name = "KotlinScript",
  },
  ["leex"] = {
    icon = "",
    color = colors.magenta,
    name = "Leex",
  },
  ["less"] = {
    icon = "",
    color = colors.magenta1,
    name = "Less",
  },
  ["lhs"] = {
    icon = "",
    color = colors.magenta,
    name = "Lhs",
  },
  ["license"] = {
    icon = "",
    color = colors.yellow,
    name = "License",
  },
  ["lua"] = {
    icon = "",
    color = colors.cyan,
    name = "Lua",
  },
  ["luau"] = {
    icon = "",
    color = colors.cyan,
    name = "Luau",
  },
  ["gnumakefile"] = {
    icon = "",
    color = colors.gray,
    name = "Makefile",
  },
  ["makefile"] = {
    icon = "",
    color = colors.gray,
    name = "Makefile",
  },
  ["mk"] = {
    icon = "",
    color = colors.gray,
    name = "Makefile",
  },
  ["markdown"] = {
    icon = "",
    color = colors.blue,
    name = "Markdown",
  },
  ["material"] = {
    icon = "󰔉",
    color = colors.magenta1,
    name = "Material",
  },
  ["md"] = {
    icon = "",
    color = colors.white,
    name = "Md",
  },
  ["mdx"] = {
    icon = "",
    color = colors.blue,
    name = "Mdx",
  },
  ["mint"] = {
    icon = "󰌪",
    color = colors.blue,
    name = "Mint",
  },
  ["mjs"] = {
    icon = "",
    color = colors.yellow,
    name = "Mjs",
  },
  ["ml"] = {
    icon = "λ",
    color = colors.orange,
    name = "Ml",
  },
  ["mli"] = {
    icon = "λ",
    color = colors.orange,
    name = "Mli",
  },
  ["mo"] = {
    icon = "∞",
    color = colors.magenta,
    name = "Motoko",
  },
  ["mts"] = {
    icon = "",
    color = colors.blue,
    name = "Mts",
  },
  ["mustache"] = {
    icon = "",
    color = colors.orange,
    name = "Mustache",
  },
  ["nim"] = {
    icon = "",
    color = colors.yellow,
    name = "Nim",
  },
  ["nix"] = {
    icon = "",
    color = colors.blue,
    name = "Nix",
  },
  ["opus"] = {
    icon = "󰈣",
    color = colors.orange1,
    name = "OPUS",
  },
  ["org"] = {
    icon = "",
    color = colors.cyan,
    name = "OrgMode",
  },
  ["otf"] = {
    icon = "",
    color = colors.white,
    name = "OpenTypeFont",
  },
  ["pck"] = {
    icon = "",
    color = colors.gray,
    name = "PackedResource",
  },
  ["pdf"] = {
    icon = "",
    color = colors.red1,
    name = "Pdf",
  },
  ["php"] = {
    icon = "",
    color = colors.magenta,
    name = "Php",
  },
  ["pl"] = {
    icon = "",
    color = colors.blue,
    name = "Pl",
  },
  ["pm"] = {
    icon = "",
    color = colors.blue,
    name = "Pm",
  },
  ["png"] = {
    icon = "",
    color = colors.magenta,
    name = "Png",
  },
  ["pp"] = {
    icon = "",
    color = colors.orange,
    name = "Pp",
  },
  ["ppt"] = {
    icon = "󰈧",
    color = colors.red1,
    name = "Ppt",
  },
  ["pro"] = {
    icon = "",
    color = colors.yellow1,
    name = "Prolog",
  },
  ["ps1"] = {
    icon = "󰨊",
    color = colors.blue1,
    name = "PsScriptfile",
  },
  ["psd1"] = {
    icon = "󰨊",
    color = colors.cyan1,
    name = "PsManifestfile",
  },
  ["psm1"] = {
    icon = "󰨊",
    color = colors.cyan1,
    name = "PsScriptModulefile",
  },
  ["psb"] = {
    icon = "",
    color = colors.blue,
    name = "Psb",
  },
  ["psd"] = {
    icon = "",
    color = colors.blue,
    name = "Psd",
  },
  ["py"] = {
    icon = "",
    color = colors.yellow,
    name = "Py",
  },
  ["pyc"] = {
    icon = "",
    color = colors.yellow1,
    name = "Pyc",
  },
  ["pyd"] = {
    icon = "",
    color = colors.yellow1,
    name = "Pyd",
  },
  ["pyo"] = {
    icon = "",
    color = colors.yellow1,
    name = "Pyo",
  },
  ["query"] = {
    icon = "",
    color = colors.green,
    name = "Query",
  },
  ["r"] = {
    icon = "󰟔",
    color = colors.cyan1,
    name = "R",
  },
  ["rake"] = {
    icon = "",
    color = colors.red1,
    name = "Rake",
  },
  ["rb"] = {
    icon = "",
    color = colors.red1,
    name = "Rb",
  },
  ["res"] = {
    icon = "",
    color = colors.red1,
    name = "ReScript",
  },
  ["resi"] = {
    icon = "",
    color = colors.magenta,
    name = "ReScriptInterface",
  },
  ["rlib"] = {
    icon = "",
    color = colors.magenta,
    name = "Rlib",
  },
  ["rmd"] = {
    icon = "",
    color = colors.blue,
    name = "Rmd",
  },
  ["rproj"] = {
    icon = "󰗆",
    color = colors.cyan,
    name = "Rproj",
  },
  ["rs"] = {
    icon = "",
    color = colors.magenta,
    name = "Rs",
  },
  ["rss"] = {
    icon = "",
    color = colors.orange,
    name = "Rss",
  },
  ["sass"] = {
    icon = "",
    color = colors.magenta,
    cterm_color = "204",
    name = "Sass",
  },
  ["sbt"] = {
    icon = "",
    color = colors.red1,
    name = "sbt",
  },
  ["scala"] = {
    icon = "",
    color = colors.red1,
    name = "Scala",
  },
  ["scm"] = {
    icon = "󰘧",
    color = colors.gray1,
    name = "Scheme",
  },
  ["scss"] = {
    icon = "",
    color = colors.magenta,
    name = "Scss",
  },
  ["sh"] = {
    icon = "",
    color = colors.gray,
    name = "Sh",
  },
  ["sig"] = {
    icon = "λ",
    color = colors.orange,
    name = "Sig",
  },
  ["slim"] = {
    icon = "",
    color = colors.red1,
    name = "Slim",
  },
  ["sln"] = {
    icon = "",
    color = colors.magenta1,
    name = "Sln",
  },
  ["sml"] = {
    icon = "λ",
    color = colors.orange,
    name = "Sml",
  },
  ["sql"] = {
    icon = "",
    color = colors.white1,
    name = "Sql",
  },
  ["sqlite"] = {
    icon = "",
    color = colors.white1,
    name = "Sql",
  },
  ["sqlite3"] = {
    icon = "",
    color = colors.white1,
    name = "Sql",
  },
  ["styl"] = {
    icon = "",
    color = colors.green,
    name = "Styl",
  },
  ["sublime"] = {
    icon = "",
    color = colors.orange,
    name = "Suo",
  },
  ["suo"] = {
    icon = "",
    color = colors.magenta,
    name = "Suo",
  },
  ["sv"] = {
    icon = "󰍛",
    color = colors.green1,
    name = "SystemVerilog",
  },
  ["svelte"] = {
    icon = "",
    color = colors.orange1,
    name = "Svelte",
  },
  ["svh"] = {
    icon = "󰍛",
    color = colors.green1,
    name = "SystemVerilog",
  },
  ["svg"] = {
    icon = "󰜡",
    color = colors.yellow,
    name = "Svg",
  },
  ["swift"] = {
    icon = "",
    color = colors.orange1,
    name = "Swift",
  },
  ["t"] = {
    icon = "",
    color = colors.blue,
    name = "Tor",
  },
  ["tbc"] = {
    icon = "󰛓",
    color = colors.blue1,
    name = "Tcl",
  },
  ["tcl"] = {
    icon = "󰛓",
    color = colors.blue1,
    name = "Tcl",
  },
  ["terminal"] = {
    icon = "",
    color = colors.green,
    name = "Terminal",
  },
  ["tex"] = {
    icon = "󰙩",
    color = colors.green1,
    name = "Tex",
  },
  ["tf"] = {
    icon = "",
    color = colors.magenta1,
    name = "Terraform",
  },
  ["tfvars"] = {
    icon = "",
    color = colors.magenta1,
    name = "TFVars",
  },
  ["toml"] = {
    icon = "",
    color = colors.gray,
    name = "Toml",
  },
  ["tres"] = {
    icon = "",
    color = colors.yellow,
    name = "TextResource",
  },
  ["ts"] = {
    icon = "",
    color = colors.blue,
    name = "Ts",
  },
  ["test.ts"] = {
    icon = "",
    color = colors.blue,
    name = "TestTs",
  },
  ["spec.ts"] = {
    icon = "",
    color = colors.blue,
    name = "SpecTs",
  },
  ["tscn"] = {
    icon = "󰎁",
    color = colors.magenta,
    name = "TextScene",
  },
  ["tsx"] = {
    icon = "",
    color = colors.blue1,
    name = "Tsx",
  },
  ["test.tsx"] = {
    icon = "",
    color = colors.blue1,
    name = "TypeScriptReactTest",
  },
  ["spec.tsx"] = {
    icon = "",
    color = colors.blue1,
    name = "TypeScriptReactSpec",
  },
  ["twig"] = {
    icon = "",
    color = colors.green,
    name = "Twig",
  },
  ["txt"] = {
    icon = "󰈙",
    color = colors.green,
    name = "Txt",
  },
  ["vsh"] = {
    icon = "",
    color = colors.blue,
    name = "Vlang",
  },
  ["v"] = {
    icon = "󰍛",
    color = colors.green1,
    name = "Verilog",
  },
  ["vala"] = {
    icon = "",
    color = colors.magenta1,
    name = "Vala",
  },
  ["vh"] = {
    icon = "󰍛",
    color = colors.green1,
    name = "Verilog",
  },
  ["vhd"] = {
    icon = "󰍛",
    color = colors.green1,
    name = "VHDL",
  },
  ["vhdl"] = {
    icon = "󰍛",
    color = colors.green1,
    name = "VHDL",
  },
  ["vim"] = {
    icon = "",
    color = colors.green1,
    name = "Vim",
  },
  ["vue"] = {
    icon = "",
    color = colors.green1,
    name = "Vue",
  },
  ["webmanifest"] = {
    icon = "",
    color = colors.yellow,
    name = "Webmanifest",
  },
  ["webp"] = {
    icon = "",
    color = colors.magenta,
    name = "Webp",
  },
  ["webpack"] = {
    icon = "󰜫",
    color = colors.blue,
    name = "Webpack",
  },
  ["xcplayground"] = {
    icon = "",
    color = colors.orange,
    name = "XcPlayground",
  },
  ["xls"] = {
    icon = "󰈛",
    color = colors.green1,
    name = "Xls",
  },
  ["xlsx"] = {
    icon = "󰈛",
    color = colors.green1,
    name = "Xlsx",
  },
  ["xml"] = {
    icon = "󰗀",
    color = colors.orange,
    name = "Xml",
  },
  ["xul"] = {
    icon = "",
    color = colors.orange,
    name = "Xul",
  },
  ["yaml"] = {
    icon = "",
    color = colors.gray,
    name = "Yaml",
  },
  ["yml"] = {
    icon = "",
    color = colors.gray,
    name = "Yml",
  },
  ["zig"] = {
    icon = "",
    color = colors.orange,
    name = "Zig",
  },
  ["zsh"] = {
    icon = "",
    color = colors.green,
    name = "Zsh",
  },
  ["sol"] = {
    icon = "󰞻",
    color = colors.blue,
    name = "Solidity",
  },
  ["prisma"] = {
    icon = "󰔶",
    color = colors.white,
    name = "Prisma",
  },
  ["lock"] = {
    icon = "",
    color = colors.white1,
    name = "Lock",
  },
  ["log"] = {
    icon = "󰌱",
    color = colors.white,
    name = "Log",
  },
  ["wasm"] = {
    icon = "",
    color = colors.magenta1,
    name = "Wasm",
  },
  ["liquid"] = {
    icon = "",
    color = colors.green,
    name = "Liquid",
  },
}
-- }}}

-- overriding nvim-web-devicon tables to set custom colors
require("nvim-web-devicons").setup {
  strict = true, -- necessary so overrides work

  -- by filename
  override_by_filename = icons_by_filename,
  --by file extension
  override_by_extension = icons_by_file_extension,
}
