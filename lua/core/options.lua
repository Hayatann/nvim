local opt = vim.opt
local g = vim.g

opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'
vim.scriptencoding = 'utf-8'

-- share clipborad with OS
opt.clipboard:append('unnamedplus,unnamed')

opt.expandtab = true
opt.shiftround = true
opt.autoindent = true
opt.smartindent = true
opt.shiftwidth = 2
opt.softtabstop = 2
opt.tabstop = 2

opt.scrolloff = 4
opt.whichwrap = 'b,s,h,l,<,>,[,],~'

opt.number = true
opt.cursorline = true
opt.termguicolors = true

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

opt.undofile = true

vim.o.timeout = true
vim.o.timeoutlen = 300

