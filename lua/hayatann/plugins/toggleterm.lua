return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    local toggleterm = require("toggleterm")
    local term = require("toggleterm.terminal").Terminal

    local lazygit = term:new({
      cmd = "lazygit",
      direction = "float",
      hidden = true,
    })

    function _lazygit_toggle()
      lazygit:toggle()
    end

    toggleterm.setup({
      size = 80,
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = "float",
      close_on_exit = true,
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", { desc = "Open terminal float" })
    keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<CR>", { desc = "Open terminal vertical" })
    keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>", { desc = "Open terminal horizontal" })
    keymap.set("n", "<leader>tt", "<cmd>ToggleTerm direction=tab<CR>", { desc = "Open terminal tab" })

    -- lazygit
    keymap.set(
      "n",
      "<leader>lg",
      "<cmd>lua _lazygit_toggle()<CR>",
      { noremap = true, silent = true, desc = "Open Lazygit" }
    )
  end,
}
