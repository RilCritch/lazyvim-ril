return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        init = function() end, -- disabling neo-tree when nvim is called on directories
        keys = function() -- overiding <leader>e and <leader>E
            return {
                {
                "<leader>fe",
                function()
                    require("neo-tree.command").execute({ toggle = true, dir = require("lazyvim.util").root.get() })
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
        opts = {
            default_component_configs = {
                file_size =     { enabled = false },
                type =          { enabled = false },
                last_modified = { enabled = false },
                created =       { enabled = false },
            },
            window = {
                width = "20%",
            },
        },
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
                indicator = {
                    icon = "  ",
                    style = 'icon',
                },
                always_show_bufferline = true,
                offsets = {
                    {
                        filetype   = "neo-tree",
                        -- text       = "File Browser",
                        text       = "",
                        highlight  = "NeoTreeBufferLineTitle",
                        text_align = "left",
                        separator  = true,
                    }
                }
            },
            highlights = {
                fill = {
                    fg = '#232A2E',
                    bg = '#232A2E',
                },
                -- background = {
                --     fg = '#859289',
                --     bg = '#1E2326'
                -- },
                -- offset_separator = {
                --     fg = '#1E2326',
                --     bg = '#1E2326',
                -- }
                -- tab = {
                --     fg = '#859289',
                --     bg = '#2D353B',
                -- },
                -- tab_separator = {
                --     fg = '<colour-value-here>',
                --     bg = '<colour-value-here>',
                -- },
                -- tab_selected = {
                --     fg = '#D3C6AA',
                --     bg = '#232A2E',
                -- },
                -- tab_separator_selected = {
                --     fg = '#7FBBB3',
                --     bg = '#232A2E',
                --     sp = '#7FBBB3',
                --     underline = '#7FBBB3',
                -- },
                -- tab_close = {
                --     fg = '#E67E80',
                --     bg = '#232A2E',
                -- },
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
