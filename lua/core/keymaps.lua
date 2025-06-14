local keymap = vim.keymap
local tree_api = require("nvim-tree.api")
local map = require("dial.map")

vim.g.mapleader = " "
keymap.set("i", "jj", "<Esc>", { noremap = true })
keymap.set("i", "jk", "<Esc>", { noremap = true })
-- <leader>e で NvimTree のトグル
keymap.set("n", "<leader>e", function()
  tree_api.tree.toggle()
end, { desc = "Toggle nvim-tree" })

keymap.set('n', '<leader>ff', ':Telescope find_files<CR>')
keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>')
keymap.set('n', '<leader>fb', ':Telescope file_browser<CR>')
keymap.set('n', '<leader>sn', ':CocList snippets<CR>')
keymap.set('i', '<C-l>', '<Plug>(coc-snippets-expand)', { silent = true })
keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>")
keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>")

keymap.set("n", "<leader>bp", ":BufferLinePick<CR>", { silent = true })

keymap.set("n", "<C-a>",  function() map.manipulate("increment", "normal") end)
keymap.set("n", "<C-x>",  function() map.manipulate("decrement", "normal") end)
keymap.set("n", "g<C-a>", function() map.manipulate("increment", "gnormal") end)
keymap.set("n", "g<C-x>", function() map.manipulate("decrement", "gnormal") end)

-- snippet 展開・ジャンプのマッピング
keymap.set('i', '<C-p>', '<Plug>(coc-snippets-expand)', { silent = true })         -- <C-l> でスニペット展開
keymap.set('v', '<C-s>', '<Plug>(coc-snippets-select)', { silent = true })         -- <C-j> でビジュアル選択プレースホルダー選択
keymap.set('i', '<C-s>', '<Plug>(coc-snippets-expand-jump)', { silent = true })    -- <C-j> で展開 or 次プレースホルダーへ
keymap.set('x', '<leader>x', '<Plug>(coc-convert-snippet)', { silent = true })      -- <leader>x で選択コードをスニペット化

-- coc-snippets のプレースホルダー移動キーを指定
vim.g.coc_snippet_next = '<C-m>'  -- 次のプレースホルダーへ
vim.g.coc_snippet_prev = '<C-k>'  -- 前のプレースホルダーへ

keymap.set('n', '<leader>ss', ':split<Return><C-w>w')
keymap.set('n', '<leader>sv', ':vsplit<Return><C-w>w')

keymap.set('n', '<leader>sh', '<C-w>h')
keymap.set('n', '<leader>sk', '<C-w>k')
keymap.set('n', '<leader>sj', '<C-w>j')
keymap.set('n', '<leader>sl', '<C-w>l')

-- toggleterm float
keymap.set("n", "<leader>t", ":ToggleTerm direction=float<CR>", { desc = "Toggle terminal" })
-- ~/.config/nvim/lua/core/keymaps.lua に追加！
vim.cmd([[
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"
]])

vim.g.copilot_no_tab_map = true

vim.api.nvim_set_keymap("i", "<C-l>", 'copilot#Accept("<CR>")', {
  expr = true,
  silent = true,
  noremap = true,
})

