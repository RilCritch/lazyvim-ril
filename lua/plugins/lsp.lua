return {
    {
        "neovim/nvim-lspconfig",

        opts = {
            servers = {
                lua_ls = require("plugins.servers-lsp.lua_ls"),
            },
        },
    },
}
