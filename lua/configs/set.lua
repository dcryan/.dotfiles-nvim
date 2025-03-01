vim.cmd.colorscheme("tokyonight-moon")

-- vim.cmd("filetype plugin on")
-- vim.cmd("syntax on")

vim.opt.termguicolors = true -- True color support
vim.opt.number = true -- Show Line Numbers
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.tabstop = 2 -- Number of visual spaces per tab
vim.opt.softtabstop = 2 -- Number of spaces in tab when editing
vim.opt.shiftwidth = 2 -- Number of spaces when shift indenting
vim.opt.expandtab = true -- Tab to spaces
vim.opt.hlsearch = true -- Highlight matches
vim.opt.incsearch = true -- Search as characters are entered
vim.opt.ignorecase = true -- Ignore case when searching
vim.opt.smartcase = true -- Ignore case if search term is all lowercase
vim.opt.smartindent = true -- Indent by to syntax/style of code. Use w/ autoindent
vim.opt.autoindent = true -- Apply the indentation of the current line to the next
vim.opt.wrap = false -- Don't line wrap
vim.opt.cursorline = true -- Highlight the current line
vim.opt.showmode = false -- Don't show mode in status line
vim.opt.shortmess:append("c") -- Don't show completion messages
vim.opt.errorbells = false -- Don't beep on errors
vim.opt.scrolloff = 8 -- Top & Bottom scroll starts X spaces away
vim.opt.sidescrolloff = 8 -- Left & Right scroll starts X spaces away
vim.opt.splitbelow = true -- Horizontal splits below
vim.opt.splitright = true -- Vertical splits to the right
vim.opt.updatetime = 50 -- Faster completion
vim.opt.cmdheight = 1 -- More space for displaying messages
vim.opt.swapfile = false -- Don't create swap files
vim.opt.backup = false -- Don't save backup files
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- Set undo directory
vim.opt.undofile = true -- Save undo history
vim.opt.signcolumn = "yes" -- Always show sign column
vim.opt.inccommand = "split" -- Show live preview of substitution

-- change fold type to indent
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99

-- change foldcolumn to 1
vim.opt.foldcolumn = "1"

-- Assign signs to Diagnostics
vim.diagnostic.config({
	underline = true,
	virtual_text = false,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.INFO] = "",
			[vim.diagnostic.severity.HINT] = "",
		},
	},
	update_in_insert = false,

	severity_sort = true,
	float = {
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
	},
})
