return { 
    "catppuccin/nvim", 
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = 'mocha',
            color_overrides = {
                mocha = {
                    base = "#11111e",
                },
            },
            styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
                comments = { "italic" },
                conditionals = { "italic" },
                loops = {},
                functions = {},
                keywords = { "bold" },
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = { "bold" },
                operators = {},
            -- miscs = {}, -- Uncomment to turn off hard-coded styles
            },

            integrations = {
                mason = true
            },

            custom_highlights = function(colors)
                return {
                    NormalFloat = { bg = colors.crust },
                    FloatBorder = { bg = colors.crust, fg = colors.mauve }
                }
            end
        })

        vim.cmd.colorscheme("catppuccin")
    end,
}

