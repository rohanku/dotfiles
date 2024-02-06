local o = vim.opt

o.list = true
o.listchars = {
    tab = '→ ',
    lead = '·',
    trail = '·',
    extends = '›',
    precedes = '‹',
}

-- eol = '¬'

vim.cmd 'set expandtab'
vim.cmd 'set tabstop=2'
vim.cmd 'set shiftwidth=2'
vim.g.markdown_recommended_style = 0
