vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.guicursor = "n-v-i-c:block-Cursor"
vim.o.showmode = false
vim.o.showcmd = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- search options
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.fillchars = { eob = " " }

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.clipboard:append("unnamedplus")

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.env.CPATH = '/usr/local/include:/opt/homebrew/include/cs50:/opt/homebrew/opt/libxcrypt/include:' .. (vim.env.CPATH or '')
vim.opt.rtp:append("/Users/johnfredrikdall/.opam/default/share/ocp-indent/vim")
