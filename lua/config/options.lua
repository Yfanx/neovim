-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.termguicolors = true
vim.env.NVIM_TUI_ENABLE_TRUE_COLOR = 1
vim.opt.ttyfast = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.ttimeoutlen = 0
vim.opt.timeout = false
vim.opt.showmode = false
vim.opt.virtualedit = "block"
vim.opt.conceallevel = 0
vim.opt.showtabline = 1
vim.opt.laststatus = 3
vim.opt.signcolumn = "yes"
vim.opt.spelloptions = "camel"
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.list = true
vim.opt.listchars = "tab:»·,nbsp:+,trail:·,extends:→,precedes:←"
vim.opt.fillchars = {
  stl = " ",
  stlnc = "-",
  msgsep = " ",
  foldopen = "",
  foldclose = "",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
vim.opt.cmdheight = 0
vim.opt.scrolloff = 8
vim.opt.colorcolumn = "0"
vim.opt.undofile = true
vim.opt.updatetime = 100
vim.opt.redrawtime = 1500

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile", "FileType" }, {
  pattern = { "c", "cpp", "txt", "c.snippets", "cpp.snippets" },
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.softtabstop = 4
  end,
})
