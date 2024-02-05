return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        init = function() end, -- disabling neo-tree when nvim is called on directories
        keys = function() -- overiding <leader>e and <leader>E
            return {
                {
                "<leader>fe",
                function()
                    require("neo-tree.command").execute({ toggle = true, dir = require("lazyvim.util").get_root() })
                end,
                desc = "Explorer NeoTree (root dir)",
                },
                {
                "<leader>fE",
                function()
                    require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
                end,
                desc = "Explorer NeoTree (cwd)",
                },
            }
        end,
        opts = {},
    },

    -- {
    --     "folke/which-key.nvim",
    --     opts = {
    --
    --     }
    -- },

    {
        "akinsho/bufferline.nvim",
        event = "VeryLazy",
        opts = {
        options = {
            diagnostics = false, -- remove diagnostics from bar
            custom_filter = function(buf_number)
            if vim.bo[buf_number].filetype ~= "oil" then -- don't allow oil buffers to populate the bufferline
                return true
            end
            end,
        },
        },
    },

    { -- added option to add nvim notiffy background color to existing lazyvim spec
        "rcarriga/nvim-notify",
        opts = {
        background_colour = "#282828",
        },
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        opts = function(_, opts)
            vim.list_extend(opts.exclude.filetypes, {
                "md",
                "markdown",
            })
        end,
    },
}
