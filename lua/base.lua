-- ヤンクした時に、clipboard に コピーできるように
vim.opt.clipboard = 'unnamedplus'
-- 制御文字の設定
vim.opt.list = true
vim.opt.listchars = {
	tab = '│·',
	extends = '⟩',
	precedes = '⟨',
	trail = '·',
	eol = '↴',
	nbsp = '%'
}
-- インデント周りの設定
vim.opt.ts = 4
vim.opt.shiftwidth = 4

-- 行数の表示
vim.opt.number = true
