return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-treesitter/nvim-treesitter',
            'nvim-tree/nvim-web-devicons',
            'nvim-telescope/telescope-fzf-native.nvim',
        },
        config = function()
            local builtin = require('telescope.builtin')

            require('telescope').setup({
                defaults = {
                    layout_strategy = 'horizontal',
                    layout_config = {
                        preview_width = 0.55, -- Adjust preview window size
                        preview_cutoff = 0,
                    },

                    sorting_strategy = 'ascending',
                    preview = true, -- Enable preview by default
                },
                pickers = {
                    find_files = {
                        previewer = true, -- Enable preview for find_files
                    },

                    buffers = {
                        previewer = true, -- Enable preview for buffers
                    },
                },
            })

            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({})
                    }
                }
            })
            require("telescope").load_extension("ui-select")
        end,
    }
}
