-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
-- Disable the recording in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, 'q', '<Nop>', { silent = true })

-- For conciseness
local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', opts)
vim.keymap.set('i', 'jk', '<Esc>', opts)
vim.keymap.set('i', 'kj', '<Esc>', opts)
vim.keymap.set('i', 'qw', '<Esc>', opts)
vim.keymap.set('i', 'wq', '<Esc>', opts)

vim.keymap.set('n', ';', ':', opts)

-- Select all
vim.keymap.set('n', 'ga', 'ggVG', { desc = 'Select all lines' })

-- -- Stuff for convenience
vim.keymap.set('n', 'o', 'o<esc>', opts)
vim.keymap.set('n', 'O', 'O<esc>', opts)
vim.keymap.set('n', '<Return>', 'o<esc>', opts)
vim.keymap.set('n', '<Backspace>', 'dd', opts)
-- vim.keymap.set('n', 'q', 'dd', opts)

-- Delete without copying
vim.keymap.set('n', '<leader>d', '"_d', { desc = 'Delete to the void register' })

-- Search and replace
vim.keymap.set('n', '<leader>se', ':%s/\\v', { silent = false, desc = 'Search and replace in file' })

-- save file
vim.keymap.set({ 'n', 'i', 'v' }, '<C-s>', '<cmd>w<CR>', { desc = 'Save file' })

-- quit file
vim.keymap.set('n', '<leader>qq', '<cmd> q <CR>', { desc = 'Quit file' })
vim.keymap.set('n', '<leader>qQ', '<cmd> q! <CR>', { desc = 'Quit file!' })

-- Move to start/end of line
vim.keymap.set({ 'n', 'x', 'o' }, 'H', '^', { desc = 'First character on current line' })
vim.keymap.set({ 'n', 'x', 'o' }, 'L', 'g_', { desc = 'Last non-blank character on current line' })

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Move selected lines up or down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", opts) -- move selected lines down
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", opts) -- move selected lines up

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<leader>bn', ':enew <CR>', { desc = 'New buffer' })
-- vim.keymap.set('n', 'gl', '<cmd>bnext<cr>', { desc = 'Next buffer' })
-- vim.keymap.set('n', 'gh', '<cmd>bprev<cr>', { desc = 'Previous buffer' })

-- Window management
vim.keymap.set('n', '<leader>v', '<C-w>v', { desc = 'Split window vertically' })
vim.keymap.set('n', '<leader>h', '<C-w>s', { desc = 'Split window horizontally' })
vim.keymap.set('n', '<leader>we', '<C-w>=', { desc = 'Make split windows equal' })
vim.keymap.set('n', '<leader>wc', ':close<CR>', { desc = 'Close split window' })

-- save file without auto-formatting
vim.keymap.set('n', '<leader>ww', '<cmd>noautocmd  w <CR>', { desc = 'Save, no auto-formatting' })

