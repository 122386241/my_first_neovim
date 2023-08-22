local set = vim.o
-- 设置行号
set.number = true
-- 设置相对行号
set.relativenumber = true
-- 复制到剪切板
set.clipboard = "unnamed"

-- 在copy后高亮
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
    pattern = { "*" },
    callback = function()
        vim.highlight.on_yank({
	    timeout = 300,
	})
    end,
})

-- 键位绑定
local opt = { noremap = true, silent = true }
vim.g.mapleader = " "
-- 分割页面后上下左右移动
-- vim.keymap.set("n", "<C-l>", "<C-w>l", opt)
-- vim.keymap.set("n", "<C-h>", "<C-w>h", opt)
-- vim.keymap.set("n", "<C-j>", "<C-w>j", opt)
-- vim.keymap.set("n", "<C-k>", "<C-w>k", opt)
-- 水平垂直切分屏幕
vim.keymap.set("n", "<Leader>v", "<C-w>v", opt)
vim.keymap.set("n", "<Leader>s", "<C-w>s", opt)
-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup()
