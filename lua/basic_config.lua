local opt = vim.opt
-- 「※」等の記号を打つと、半角文字と重なる問題がある。「※」などを全角文字の幅で表示するために設定する
opt.ambiwidth = 'double'

opt.fileencoding = "utf-8"
opt.encoding = "utf-8"
vim.scriptencoding = "utf-8"
opt.swapfile = false
opt.hidden = true
opt.clipboard:append({ "unnamedplus" })
opt.wildmenu = true
opt.cmdheight = 1
opt.laststatus = 2
opt.showcmd = true
opt.hlsearch = true
opt.incsearch = true
opt.matchtime = 1
opt.visualbell = true
opt.showmatch = true
opt.backup = false
opt.writebackup = false
opt.updatetime = 300
opt.signcolumn = "yes"
opt.wrap = false

opt.scrolloff = 6

-- 新しい行を改行で追加した時に、ひとつ上の行のインデントを引き継がせます。
opt.autoindent = true
opt.smartindent = true
-- smartindent と cindent を両方 true にしたときは、cindent のみ true になるようです。
-- opt.cindent = true
-- カーソルが存在する行にハイライトを当ててくれます。
opt.cursorline = true

-- カーソルが存在する列にハイライトを当てたい場合、下記をtrueにする。
-- opt.cursorculumn = true

-- TABキーを押した時に、2文字分の幅を持ったTABが表示されます。
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
-- tabstop で設定した数の分の半角スペースが入力されます。
opt.expandtab = true
-- カーソル行からの相対的な行番号を表示する
opt.number = true
opt.termguicolors = true
