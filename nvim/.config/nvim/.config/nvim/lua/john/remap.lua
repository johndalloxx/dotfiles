vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>cd", ":cd %:p:h<CR>:pwd<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Deleting without yanking, not using at the moment
-- vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- No neck pain remaps
vim.keymap.set("n", "<leader>dd", ":NoNeckPain<CR>")
vim.keymap.set("n", "<leader>dm", ":NoNeckPainWidthUp<CR>")
vim.keymap.set("n", "<leader>dl", ":NoNeckPainWidthDown<CR>")

-- This is going to get me cancelled
vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)


vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--Window splitting
vim.keymap.set("n", "<leader>sv", "<C-W>v")     -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-W>s")     -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-W>=")     -- make split windows equal width
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

vim.keymap.set("n", "<leader>to", ":tabnew<CR>")
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>")
vim.keymap.set("n", "<leader>tn", ":abnew<CR>")
vim.keymap.set("n", "<leader>tp", ":tabnew<CR>")

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/john/packer.lua<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<leader>j", function()
    require("hop").hint_words()
end)

vim.keymap.set("n", "<leader>c", "<Plug>kommentary_line_default", { silent = true })
vim.keymap.set("v", "<leader>c", "<Plug>kommentary_visual_default<C-c>", { silent = true })
