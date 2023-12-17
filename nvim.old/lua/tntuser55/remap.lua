vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>l")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--vim.keymap.set('n', '<Leader>so', ':luafile $MYVIMRC<CR>' )
vim.keymap.set('n', '<Leader>so', ':w | luafile %<CR>' )
vim.keymap.set('n', '<Leader>pi', ':PackerSync<CR>' )
