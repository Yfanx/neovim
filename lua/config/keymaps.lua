-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jj", "<ESC>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- insert 模式下，跳到行首行尾
keymap.set("i", "<C-h>", "<ESC>I")
keymap.set("i", "<C-l>", "<ESC>A")

keymap.set("n", "<C-a>", "ggI<ESC>vG$")
keymap.set("n", "gh", "gg_")

keymap.set("n", "<leader>nh", ":set nohlsearch<enter>")

vim.api.nvim_set_keymap("n", "<leader>rde", ":lua DeleteExeFiles()<CR>", { noremap = true, silent = true })

function DeleteExeFiles()
  local current_file_path = vim.fn.expand("%:p:h") -- 获取当前文件所在的文件夹路径
  local delete_command = "powershell -Command \"Remove-Item -Path '" .. current_file_path .. "\\*.exe' -Force\"" -- 构建删除命令
  vim.fn.system(delete_command) -- 执行删除命令
  print("Deleted all .exe files in " .. current_file_path)
end

keymap.set("n", "<leader>cs", ":MarkdownPreview<enter>")
keymap.set("n", "<leader>ms", ":MarkdownPreviewStop<enter>")
keymap.set("n", "<leader>cp", ":MarkdownPreviewToggle<enter>")
