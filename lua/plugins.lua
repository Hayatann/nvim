return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup({
        options = { theme = 'tokyonight' },
      })
    end
  },
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {},
    config = function()
      require('tokyonight').setup({
        style = "moon"
      })
      vim.cmd([[colorscheme tokyonight]])
    end
  },
  {
    "neoclide/coc.nvim",
    branch = "release",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },
  {
    "jiangmiao/auto-pairs"
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
    config = function ()
      require("noice").setup({
        config = {
          border = {
            style = "single",
          }
        }
      })
    end
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    event = "VimEnter",
    config = function ()
      require("telescope").load_extension("fzf")
      require("telescope").setup({
        defaults = {
          file_ignore_patterns = {
            -- 検索から除外するものを指定
            "^.git/",
            "^.cache/",
            "^Library/",
            "Parallels",
            "^Movies",
            "^Music",
          },
          vimgrep_arguments = {
            -- ripggrepコマンドのオプション
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "-uu",
          },
          extensions = {
            -- ソート性能を大幅に向上させるfzfを使う
            fzf = {
              fuzzy = true,
              override_generic_sorter = true,
              override_file_sorter = true,
              case_mode = "smart_case",
            },
          },
        }
      })
    end
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = 'make',
    dependencies = { "nvim-telescope/telescope.nvim" },
  },
  {
    "lambdalisue/fern.vim",
    dependencies = {
      "lambdalisue/nerdfont.vim",
      "lambdalisue/fern-renderer-nerdfont.vim",
      "lambdalisue/glyph-palette.vim",
    },
  },
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
      require('bufferline').setup({
        options = {
          numbers = "none", -- バッファ番号の表示スタイル: "none", "ordinal", "buffer_id", "both"
          close_command = "bdelete! %d",       -- バッファを閉じるコマンド
          right_mouse_command = "bdelete! %d", -- 右クリックでバッファを閉じるコマンド
          left_mouse_command = "buffer %d",    -- 左クリックでバッファを選択するコマンド
          middle_mouse_command = nil,          -- ミドルクリックのコマンド（nilで無効）
          -- バッファ間を移動するキーマッピング
          buffer_close_icon = '',
          modified_icon = '●',
          close_icon = '',
          left_trunc_marker = '',
          right_trunc_marker = '',
          -- カラーとスタイルのカスタマイズ
          max_name_length = 18,
          max_prefix_length = 15, -- ファイル名の接頭辞の最大長
          tab_size = 18,
          diagnostics = false, -- "nvim_lsp" と設定するとLSPの診断情報を表示
          diagnostics_update_in_insert = false,
          -- カスタムフィルターを使用して特定のバッファを非表示にする
          offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "left"}},
          show_buffer_icons = true, -- バッファのアイコンを表示するかどうか
          show_buffer_close_icons = true,
          show_close_icon = true,
          show_tab_indicators = true,
          persist_buffer_sort = true, -- バッファの並び順を保持するかどうか
          separator_style = "thin", -- セパレータのスタイル: "slant" | "thick" | "thin" | { 'any', 'any' }
          enforce_regular_tabs = false,
          always_show_bufferline = true,
          sort_by = 'id' -- バッファの並び替え方法
        }
      })
    end
  },
}

