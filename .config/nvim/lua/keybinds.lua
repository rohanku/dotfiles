-- sidebar toggle
vim.keymap.set('n', '<leader>s', function() require("nvim-tree.api").tree.toggle() end)

-- FZF
vim.keymap.set('n', '<space><space>', require("fzf-lua").files)

-- tab settings
vim.keymap.set('n', '<leader>t', '<cmd>set et sw=0 ts=')
vim.keymap.set('n', '<leader>tt', '<cmd>set et sw=0 ts=4<cr>')

vim.keymap.set('n', '<leader>ba', function() vim.lsp.buf.code_action() end) -- Buffer Actions
vim.keymap.set('n', '<leader>bd', function() vim.lsp.buf.definition() end) -- Buffer Definition
vim.keymap.set('n', '<leader>be', function() vim.lsp.buf.declaration() end) -- Buffer dEclaration
vim.keymap.set('n', '<leader>bf', function() vim.lsp.buf.format {} end) -- Buffer Format
vim.keymap.set('n', '<leader>bh', function() vim.lsp.buf.hover() end) -- Buffer Hover
vim.keymap.set('n', '<leader>bw', function() vim.diagnostic.jump({ count = 1, float = true }) end) -- Buffer Problem
vim.keymap.set('n', '<leader>bp', function() vim.diagnostic.jump({ count = 1, float = true, severity = vim.diagnostic.severity.ERROR }) end) -- Buffer Problem
vim.keymap.set('n', '<leader>br', function() vim.lsp.buf.references() end) -- Buffer References

-- maintain visual context on page navigation and searching
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Keeps cursor centered when going down the page
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Keeps cursor centered when going up the page
vim.keymap.set("n", "n", "nzzzv") -- Keeps the search result in the center after jumping to next result
vim.keymap.set("n", "N", "Nzzzv") -- Keeps the search result in the center after jumping to previous result
