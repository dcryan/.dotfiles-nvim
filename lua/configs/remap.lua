-- Window Management
-- Set window sizes equal
vim.keymap.set("n", "<leader>=", "<cmd>wincmd =<CR>", { remap = false, desc = "Set window sizes equal" })

-- Hide highlighted words
vim.keymap.set("n", "<leader>hh", "<cmd>nohl<CR>", { remap = false, desc = "Hide highlighted words" })

-- Move lines:
vim.keymap.set("n", "<c-j>", ":m .+1<CR>==", { remap = false, desc = "Move line down" })
vim.keymap.set("n", "<c-k>", ":m .-2<CR>==", { remap = false, desc = "Move line up" })
vim.keymap.set("v", "<c-j>", ":m '>+1<CR>gv=gv", { remap = false, desc = "Move selected lines down" })
vim.keymap.set("v", "<c-k>", ":m '<-2<CR>gv=gv", { remap = false, desc = "Move selected lines up" })
