require('plugins')
-----------------------------------------------------
local kmap = vim.api.nvim_set_keymap
local opts = { noremap = true}
local builtin = require('telescope.builtin')

------------------------------------------------------


-- Command Normal Mode
kmap('n', '..', ':', {})


-------------------------------------------------------------
kmap('n', '<Leader>w', ':w<CR>', {})
kmap('n', '<Leader>q', ':q<CR>', {})
kmap('n', '<Leader>wq', ':wq<CR>', {})
kmap('n', '<F2>', ':NERDTreeFind<CR>', {})
kmap('n', '<F5>', ':source %<CR>', {})
kmap('n', '<F6>', ':PlugInstall<CR>', {})


----------------- TELESCOPE KEYS-------------------------------
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})



-------------------BLOCK ARROW KEYS----------------------------
kmap('n', '<up>', '<nop>', opts)
kmap('n', '<down>', '<nop>', opts)
kmap('n', '<Left>', '<nop>', opts)
kmap('n', '<Right>', '<nop>', opts)
----------------------------------------------------------------


----------------------------------------------------------------
kmap('n', '<c-t>', ':split<CR>:ter<CR>', {}) --Abrir terminal
----------------------------------------------------------------


--------------------------------------------------------
kmap('n', '<Right>', ':vertical resize +2<CR>', opts)
kmap('n', '<Left>', ':vertical resize -2<CR>', opts)
kmap('n', '<Down>', ':resize +2<CR>', opts)
kmap('n', '<Up>', ':resize -2<CR>', opts)
--------------------------------------------------------

-----------------------------BUFFERS---------------------------------

kmap('n', '<c-Left>', ':bp<CR>', {}) --Go back to previous buffer
kmap('n', '<c-Right>', ':bn<CR>', {}) --Move to next buffer
---------------------------------------------------------------------


