-- 基础自动换行
vim.opt.wrap = true

-- 增强体验（强烈建议添加以下两行）
vim.opt.linebreak = true -- 智能换行：遇到完整单词才换行，不会把一个单词从中间切断
vim.opt.breakindent = true -- 换行对齐：换行后的文本会自动与上一行的缩进对齐，保持代码美观

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
