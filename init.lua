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
-- 分割页面后上下左右移动
-- vim.keymap.set("n", "<C-l>", "<C-w>l", opt)
-- vim.keymap.set("n", "<C-h>", "<C-w>h", opt)
-- vim.keymap.set("n", "<C-j>", "<C-w>j", opt)
-- vim.keymap.set("n", "<C-k>", "<C-w>k", opt)
