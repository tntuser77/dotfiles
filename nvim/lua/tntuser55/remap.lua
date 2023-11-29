-- remap  "JK" to esc
vim.keymap.set("i", "jk", "<Esc>l")

-- Map <leader>pv to (P)file view
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Map <leader>so to save the current file and source the init.lua configuration file
vim.keymap.set('n', '<Leader>so', ':w | luafile %<CR>')

-- Map <leader>pi to run PackerSync for managing plugins
vim.keymap.set('n', '<Leader>pi', ':PackerSync<CR>')

-- Map Shift J, K, to block move the selected text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join lines in normal mode and jump to the previous cursor position
vim.keymap.set("n", "J", "mzJ`z")

-- Copy content to system clipboard using osc52 library in normal and visual modes
vim.keymap.set('n', '<leader>y', require('osc52').copy_operator, {expr = true})
vim.keymap.set('v', '<leader>y', require('osc52').copy_visual)

-- Scroll half-page down and center cursor after using <C-d> and <C-u> respectively
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep the cursor position centered when using 'n' and 'N' for search navigation
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Search and replace with word under cursor, keeping the cursor at the replaced word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
