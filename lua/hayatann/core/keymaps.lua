vim.g.mapleader = " "

local keymap = vim.keymap

-- jjエスケープ
keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jj" })

-- searchのハイライト消すやつ
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>bo", "<cmd>buffernew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>bx", "<cmd>bufferclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>bn", "<cmd>buffern<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>bp", "<cmd>bufferp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>bf", "<cmd>buffernew %<CR>", { desc = "Open current buffer in new tab" })
