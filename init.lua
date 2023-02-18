-- Install Lazy.Nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup('plugins')

vim.cmd.colorscheme("rose-pine")

vim.opt.termguicolors = true  -- True color support
vim.opt.number = true         -- Show Line Numbers
vim.opt.relativenumber = true -- Show relative line numbers

vim.opt.tabstop = 2           -- Number of visual spaces per tab
vim.opt.softtabstop = 2       -- Number of spaces in tab when editing
vim.opt.shiftwidth = 2        -- Number of spaces when shift indenting
vim.opt.expandtab = true      -- Tab to spaces

vim.opt.hlsearch = true       -- Highlight matches
vim.opt.incsearch = true      -- Search as characters are entered
vim.opt.ignorecase = true     -- Ignore case when searching
vim.opt.smartcase = true      -- Ignore case if search term is all lowercase

vim.opt.smartindent = true    -- Indent by to syntax/style of code. Use w/ autoindent
vim.opt.autoindent = true     -- Apply the indentation of the current line to the next

vim.opt.wrap = false          -- Don't line wrap

vim.opt.cursorline = true     -- Highlight the current line

vim.opt.showmode = false      -- Don't show mode in status line

vim.opt.shortmess:append("c") -- Don't show completion messages

vim.opt.errorbells = false    -- Don't beep on errors

vim.opt.scrolloff = 8         -- Top & Bottom scroll starts X spaces away
vim.opt.sidescrolloff = 8     -- Left & Right scroll starts X spaces away

vim.opt.splitbelow = true     -- Horizontal splits below
vim.opt.splitright = true     -- Vertical splits to the right

vim.opt.updatetime = 50       -- Faster completion

vim.opt.cmdheight = 1         -- More space for displaying messages

vim.opt.swapfile = false      -- Don't create swap files
vim.opt.backup = false        -- Don't save backup files
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- Set undo directory
vim.opt.undofile = true       -- Save undo history

-- vim.opt.colorcolumn = "80"    -- Highlight column 80

vim.opt.signcolumn = "yes"    -- Always show sign column

-- Assign signs to Diagnostics
vim.fn.sign_define("DiagnosticSignError",
  { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn",
  { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo",
  { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint",
  { text = "", texthl = "DiagnosticSignHint" })


-- -- vim.opt.fillchars = {
-- --   stl = "",
-- --   stlnc = "",
-- -- }
--
-- vim.opt.statusline = "%F%=%3l:%-2c%=%m" -- Set status line format
-- vim.api.nvim_set_hl('StatusLine', { guifg = "#C51162" }, true)


local opts = { remap = false }


-- Window Management
-- Set window sizes equal
vim.keymap.set("n", "<leader>=", "<cmd>wincmd =<CR>", { remap = false, desc = "Set window sizes equal" })



-- Hide highlighted words
vim.keymap.set("n", "<leader>hh", "<cmd>nohl<CR>", { remap = false, desc = "Hide highlighted words" })



-- Move lines:
-- Commenting these because it conflicts with LSP Signature Help
-- (keymaps <a-j> & <a-k>)
vim.keymap.set("n", "∆", ":m .+1<CR>==", { remap = false, desc = "Move line down" })
vim.keymap.set("n", "˚", ":m .-2<CR>==", { remap = false, desc = "Move line up" })
vim.keymap.set("v", "∆", ":m '>+1<CR>gv=gv", { remap = false, desc = "Move selected lines down" })
vim.keymap.set("v", "˚", ":m '<-2<CR>gv=gv", { remap = false, desc = "Move selected lines up" })



-- Save Session
vim.keymap.set("n", "gss", function() vim.api.nvim_command('mks! session.vim') end,
  { noremap = true, desc = "Save Session" })
vim.keymap.set("n", "gsl", function() vim.api.nvim_command('source session.vim') end,
  { noremap = true, desc = "Load Session" })

vim.api.nvim_create_autocmd(
  "ExitPre",
  {
    callback = function()
      vim.api.nvim_command('mks! session.vim')
    end,
  })
