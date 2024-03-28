local vim_opts = require("core.utils.utils").vim_opts
vim.opt.shortmess:append("sIW")

vim_opts({
	opt = {
		autochdir = true,
		autowrite = true,
		breakindent = true,
		breakindentopt = "shift:2,min:40,sbr",
		clipboard = "unnamedplus",
		colorcolumn = "100",
		completeopt = "menuone,noselect",
		confirm = true,
		cursorline = true,
		cursorlineopt = "number",
		expandtab = true,
		foldenable = true,
		foldexpr = "nvim_treesitter#foldexpr()",
		foldlevel = 99,
		foldlevelstart = 99,
		foldmethod = "expr",
		foldopen = "jump,block,hor,mark,percent,quickfix,search,tag,undo",
		guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20",
		hidden = true,
		hlsearch = true,
		ignorecase = true,
		laststatus = 3,
		linebreak = true,
		mouse = "a",
		number = true,
		numberwidth = 6,
		relativenumber = true,
		scrolloff = 5,
		sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions",
		shiftwidth = 4,
		showbreak = "=>>",
		showmode = true,
		signcolumn = "yes",
		smartcase = true,
		softtabstop = 4,
		tabstop = 4,
		termguicolors = true,
		textwidth = 100,
		undofile = true,
		updatetime = 100,
	},
})

local exist, user_config = pcall(require, "user.user_config")
local opts = exist and type(user_config) == "table" and user_config.options or {}
vim_opts(opts)
