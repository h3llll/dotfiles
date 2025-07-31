return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require('lualine').setup({
            options = {
                theme = 'catppuccin', -- You can use any theme you like
                section_separators = { left = '', right = '' }, -- Cool arrows
                component_separators = { left = '', right = '' }, -- Slim arrows
            },
            sections = {
                lualine_a = { 'mode' }, -- Show the current mode
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = { '%p%%' }, -- Percentage through the file
                lualine_z = { '%l:%c' }, -- Line and column number
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = { '%p%%' },
                lualine_z = { '%l:%c' },
            },
            tabline = {},
            extensions = {},
        })
    end
}
