--[[ Lua Language Server Configuration ]]--

local M = {
    settings = {
        Lua = {},
    },
}

--( Settings )--
local s = M.settings.Lua

s.completion = {
    callSnippet = "Replace",
}

s.diagnostics = {
    enable  = true,
    globals = {
        -- AwesomeWM
        "awesome",
        "awful",
        "client",
        "screen",
        "tag",
        -- Neovim
        "vim",
    }
}

s.workspace = {
    checkThirdParty = true,
}


return M
