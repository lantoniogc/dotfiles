return {
    {
        "folke/which-key.nvim",
        event = "VimEnter", -- Sets the loading event to 'VimEnter'
        opts = {
            spec = {
                { "<leader>c", group = "[C]ode",           mode = { "n", "x" } },
                { "<leader>d", group = "[D]ocument" },
                { "<leader>g", group = "[G]it" },
                { "<leader>r", group = "[R]ename" },
                { "<leader>s", group = "[S]earch" },
                { "<leader>w", group = "[W]orkspace" },
                { "<leader>t", group = "[T]oggle" },
                { "<leader>h", group = "Git [H]unk",       mode = { "n", "v" } },
                { "gr",        group = "LSP [R]eferences", mode = { "n", "x" } },
            },
        },
    },
}
