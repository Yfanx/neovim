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
