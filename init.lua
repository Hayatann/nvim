local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("core.options")
require("lazy").setup("plugins")
require("core.keymaps")

