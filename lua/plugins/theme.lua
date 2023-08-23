return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        dependencies = {
            "nvim-lualine/lualine.nvim",
            "nvim-tree/nvim-web-devicons",
            "SmiteshP/nvim-navic",
            "utilyre/barbecue.nvim",
        },
        config = function()
            vim.cmd([[colorscheme tokyonight-storm]])
            require('lualine').setup {
                options = {
                    theme = 'tokyonight'
                } 
            }
            require('barbecue').setup {
                theme = 'tokyonight',
            }
        end
    },
}
