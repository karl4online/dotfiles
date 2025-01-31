-- Diagnostic keymaps
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Previous diagnostic message' })
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Next diagnostic message' })
-- vim.keymap.set('n', '<leader>dm', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
-- vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Open diagnostics location list' })

-- -- Map enter to ciw in normal mode
-- vim.keymap.set('n', '<BS>', 'cw', opts)
-- vim.keymap.set('v', '<BS>', 'c', opts)
-- vim.keymap.set('n', '<CR>', 'ciw', opts)
-- vim.keymap.set('v', '<CR>', 'c', opts)

-- vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', { desc = 'Close buffer' }) -- # snacks.nvim has a better way

-- -- delete single character without copying into register
-- vim.keymap.set('n', 'x', '"_x', opts)

-- -- Navigate between splits
-- vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts) -- nvim-tmux.nvim has built in move and resize
-- vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
-- vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
-- vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- -- Resize with arrows
-- vim.keymap.set('n', '<A-k>', ':resize -2<CR>', opts) -- nvim-tmux.nvim has built in move and resize
-- vim.keymap.set('n', '<A-j>', ':resize +2<CR>', opts)
-- vim.keymap.set('n', '<A-h>', ':vertical resize -2<CR>', opts)
-- vim.keymap.set('n', '<A-l>', ':vertical resize +2<CR>', opts)

-- -- Tabs
-- vim.keymap.set('n', '<leader>to', ':tabnew<CR>', { desc = 'New tab' })
-- vim.keymap.set('n', '<leader>tc', ':tabclose<CR>', { desc = 'Close tab' })
-- vim.keymap.set('n', '<leader>tn', ':tabn<CR>', { desc = 'Next tab' })
-- vim.keymap.set('n', '<leader>tp', ':tabp<CR>', { desc = 'Previous tab' })

-- Toggle line wrapping
-- vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', { desc = 'Toggle line wrapping' }) -- snacks.nvim has a better toggle

-- -- Keep last yanked when pasting
-- vim.keymap.set('v', 'p', '"_dP', opts)


-----------------------------------------------------------------------


-- Leader keys
-- vim.keymap.set('n', '<leader>l', '<cmd>Lazy home<CR>', { desc = 'Open Lazy main menu' })
-- vim.keymap.set('n', '<leader>d', '"_d', { desc = 'Delete to the void register' })
-- vim.keymap.set({'n', 'v'}, '<leader>y', '"*y', { desc = 'Yank to system clipboard' })
-- vim.keymap.set({'n', 'v'}, '<leader>Y', '"*Y', { desc = 'Yank line to system clipboard' })
-- vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Substitute word under cursor' })
-- vim.keymap.set('n', '<leader>o', 'o<esc>kO<Esc>j', { desc = 'Add empty lines' })

-- Buffer switching
-- vim.keymap.set('n', 'gn', '<cmd>bnext<cr>', { desc = 'Next buffer' })
-- vim.keymap.set('n', 'gp', '<cmd>bprev<cr>', { desc = 'Previous buffer' })
-- vim.keymap.set('n', 'gd', '<cmd>bdelete<cr>', { desc = 'Delete buffer' })

-- -- Improved J
-- vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Join line with next' })
--
-- -- Improved scrolling
-- vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down and center' })
-- vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up and center' })
--
-- -- Improved next match
-- vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next search result and center' })
-- vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous search result and center' })
--
-- -- Stuff for convenience
-- vim.keymap.set('n', 'o', 'o<esc>', { desc = 'Add empty line under cursor' })
-- vim.keymap.set('n', '<Return>', 'o<esc>', { desc = 'Add empty line under cursor' })
-- vim.keymap.set('n', '<C-Return>', 'o<Esc>', { desc = 'New line at end' })
-- vim.keymap.set('n', '<C-,>', 'A,<Esc>', { desc = 'Comma at end' })
-- -- vim.keymap.set('n', '==', 'gg=G', { desc = 'Reindent file' })
--
-- -- Window management remaps
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move to left window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move to below window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move to above window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move to right window' })
--
-- vim.keymap.set('n', '<C-S-h>', '<cmd>vertical resize +6<CR>', { desc = 'Resize window left' })
-- vim.keymap.set('n', '<C-S-j>', '<cmd>resize +3<CR>', { desc = 'Resize window down' })
-- vim.keymap.set('n', '<C-S-k>', '<cmd>resize -3<CR>', { desc = 'Resize window up' })
-- vim.keymap.set('n', '<C-S-l>', '<cmd>vertical resize -6<CR>', { desc = 'Resize window right' })
--
-- vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv', { desc = 'Move line down' })
-- vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv', { desc = 'Move line up' })
--
-- vim.keymap.set('i', 'jj', '<Esc>', { desc = 'Escape insert mode' })
-- vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Escape insert mode' })
-- vim.keymap.set('i', 'kk', '<Esc>', { desc = 'Escape insert mode' })
-- vim.keymap.set('i', 'kj', '<Esc>', { desc = 'Escape insert mode' })
--
-- vim.keymap.set('i', 'qq', '<Esc>', { desc = 'Escape insert mode' })
-- vim.keymap.set('i', 'qw', '<Esc>', { desc = 'Escape insert mode' })
-- vim.keymap.set('i', 'ww', '<Esc>', { desc = 'Escape insert mode' })
-- vim.keymap.set('i', 'wq', '<Esc>', { desc = 'Escape insert mode' })

-- local noarrows = false
--
-- if noarrows == true then
--   local skillissue = function()
--     print("skill issue?")
--   end
--
--   vim.keymap.set('n', '<Up>', skillissue, { desc = 'No arrow keys'})
--   vim.keymap.set('n', '<Down>', skillissue, { desc = 'No arrow keys'})
--   vim.keymap.set('n', '<Left>', skillissue, { desc = 'No arrow keys'})
--   vim.keymap.set('n', '<Right>', skillissue, { desc = 'No arrow keys'})
-- end
