vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 错误信息---------- ---
local bufopts = { noremap = true, silent = true, buffer = bufnr }
keymap.set("n", "<leader>l", vim.diagnostic.open_float, bufopts)

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jj", "<ESC>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

--terminal
keymap.set("t",  "<ESC>", "<C-\\><C-n>") --返回normal
keymap.set('n', '<leader>tt', ":terminal<CR>A", {}) --开terminal

--formater
keymap.set('n', '<leader><leader>', ":FormatWrite<CR>", {}) --两个空格format及保存



-- 切换buffer
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")


local builtin = require('telescope.builtin')
--
-- -- 进入telescope页面会是插入模式，回到正常模式就可以用j和k来移动了
--
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})  -- 环境里要安装ripgrep
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})

