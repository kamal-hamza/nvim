return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function ()
        local harpoon = require("harpoon")
        harpoon.setup({})
        local keymap = vim.keymap
        keymap.set("n", "<leader>a", function() harpoon:list():add() end)
        keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
        keymap.set("n", "<C-o>", function() harpoon:list():select(1) end)
        keymap.set("n", "<C-p>", function() harpoon:list():select(2) end)
        keymap.set("n", "<C-[>", function() harpoon:list():select(3) end)
        keymap.set("n", "<C-]>", function() harpoon:list():select(4) end)
        keymap.set("n", "<C-S-O>", function() harpoon():list():prev() end)
        keymap.set("n", "<C-S-P>", function() harpoon():list():next() end)
    end,
}