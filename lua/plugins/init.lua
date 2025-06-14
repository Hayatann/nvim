return {
  {
    'neoclide/coc.nvim',
    branch = 'release',
    build = 'npm ci',
  },

  {
    'folke/tokyonight.nvim',
    config = function()
      require("tokyonight").setup({
        transparent = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
      })
      vim.cmd('colorscheme tokyonight')
      vim.api.nvim_set_hl(0, "LineNr", { fg = "#808080"})

    end
  },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
    },
   dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
      }
  },

  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('nvim-tree').setup({})
    end
  },

  {
    "windwp/nvim-ts-autotag",
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          theme = 'auto',
        }
      }
    end
  },

  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
  },

  { "sindrets/diffview.nvim" },

  {
    'kylechui/nvim-surround',
    config = function()
      require('nvim-surround').setup({})
    end
  },

  {
    "shellRaining/hlchunk.nvim",
    event = { "UIEnter" },
    config = function()
      require("hlchunk").setup({
        chunk = {
          enable = true,
          notify = false,
          use_treesitter = true,
          support_filetypes = {
            "*.lua", "*.js", "*.ts", "*.rs", "*.py", "*.cpp", "*.c", "*.go", "*.java", "*.php", "*.html", "*.css", "*.scss", "*.json", "*.yaml", "*.toml", "*.xml", "*.md", "*.txt", "*.sh", "*.zsh", "*.fish", "*.bash", "*.rb", "*.swift", "*.dart", "*.kotlin", "*.r", "*.matlab", "*.sql"
          },
        },
        indent = {
          enable = true,
          chars = { "│" },
          style = {
            { fg = "#6b7280" }
          },
        },
        blank = {
          enable = false,
        },
        line_num = {
          enable = true,
        }
      })
    end
  },

  {
    'dinhhuy258/git.nvim',
    config = function()
      require ('git').setup()
    end
  },

  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  },

  { 'fannheyward/telescope-coc.nvim' },

  {
  'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('telescope').setup({
        extensions = {
          coc = {
            theme = 'ivy',
            prefer_locations = true,
            push_cursor_on_edit = true,
            timeout = 3000,
          }
        },
      })
      require('telescope').load_extension('coc')
      require('telescope').load_extension('file_browser')
    end
  },

  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },

  {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup{}
    end
  },

  {
    "github/copilot.vim",
    lazy = false,
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup {}
    end
  },

  {
    "NvChad/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("colorizer").setup({
        filetypes = { "*", "!lazy" }, -- すべてのファイルで使える！（lazy.nvim画面は除外）
        user_default_options = {
          RGB      = true, -- #RGB
          RRGGBB   = true, -- #RRGGBB
          names    = true, -- blue, red, etc.
          RRGGBBAA = true,
          rgb_fn   = true, -- rgb(...) / rgba(...)
          hsl_fn   = true, -- hsl(...) / hsla(...)
          css      = true,
          css_fn   = true,
        },
      })
    end
  },

  { 'kevinhwang91/nvim-hlslens' },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "typescript", "javascript", "python", "ruby", "html", "css" },
        highlight = { enable = true },
        indent = { enable = true },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            node_decremental = "grm",
          },
        },
      })
    end,
  },

  {
    "monaqa/dial.nvim",
    config = function()
      local augend = require("dial.augend")
      require("dial.config").augends:register_group {
        default = {
          augend.integer.alias.decimal,
          augend.integer.alias.hex,
          augend.date.alias["%Y/%m/%d"],
          augend.constant.alias.bool,
        },
      }
    end,
  },

  { 'akinsho/toggleterm.nvim', version = "*", config = true },
  { 'RRethy/nvim-treesitter-endwise' },
  {
    'nvim-flutter/flutter-tools.nvim',
    lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = function ()
      require("flutter-tools").setup {}
    end,
  },
  {
    "kaarmu/typst.vim",
    ft = "typst",
    lazy = false,
    config = function () vim.g.typst_pdf_viewer = "open -a Preview" end
  },
  {
    'lervag/vimtex',
    ft = 'tex',
    config = function()
      -- コンパイラを latexmk + lualatex に設定
      vim.g.vimtex_compiler_method = 'latexmk'
      vim.g.vimtex_compiler_latexmk = {
        executable = 'latexmk',
        options = {
          '-pdf',
          '-pdflatex="lualatex %O %S"',
          '-file-line-error',
          '-synctex=1',
          '-interaction=nonstopmode',
          '-halt-on-error',
          '-shell-escape',
        },
      }
      -- PDFビューアの指定（macOSならスキム）
      vim.g.vimtex_view_method = 'skim'
      -- 不要ファイルのクリーン一覧
      vim.g.vimtex_clean_files = {
        '*.aux', '*.bbl', '*.blg', '*.idx', '*.ind', '*.lof', '*.lot',
        '*.out', '*.toc', '*.acn', '*.acr', '*.alg', '*.glg', '*.glo',
        '*.gls', '*.fls', '*.log', '*.fdb_latexmk', '*.snm',
        '*.synctex(busy)', '*.synctex.gz(busy)', '*.nav', '*.vrb'
      }
      -- 保存時クリーンはオフ（必要なら true にしてみて！）
      vim.g.vimtex_clean_on_save = false
    end,
  },
  {
    'hrsh7th/vim-vsnip',
    dependencies = { 'rafamadriz/friendly-snippets' },
  },
  { "SirVer/ultisnips" }
}
