-- local builtin = require('telescope.builtin')
--
-- -- 进入telescope页面会是插入模式，回到正常模式就可以用j和k来移动了
--
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})  -- 环境里要安装ripgrep
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6', -- 文件检索
    dependencies = { 'nvim-lua/plenary.nvim' } -- requires要改为dependencies
  }