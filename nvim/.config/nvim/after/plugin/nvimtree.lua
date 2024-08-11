local nvimtree = require("nvim-tree")

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

nvimtree.setup({
    actions = {
        open_file = {
            window_picker = {
                enable = false,
            }
        }
    },
    view = {
        width = 40,
    },
   update_focused_file = { enable = true }
})
