local opts = {remap = false}



-- Window Management
-- Set window sizes equal
vim.keymap.set("n", "<leader>=", "<cmd>wincmd =<CR>", opts)



-- Hide highlighted words
vim.keymap.set("n", "<leader>hh", "<cmd>nohl<CR>", opts)



-- Move lines:
vim.keymap.set("n", "<C-j>", ":m .+1<CR>==", opts)
vim.keymap.set("n", "<C-k>", ":m .-2<CR>==", opts)
vim.keymap.set("i", "<C-j>", "<Esc>:m .+1<CR>==gi", opts)
vim.keymap.set("i", "<C-k>", "<Esc>:m .-2<CR>==gi", opts)
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", opts)



-- Save Session
vim.keymap.set("n", "<leader>gm", function() vim.api.nvim_command('mks! session.vim') end, opts)
