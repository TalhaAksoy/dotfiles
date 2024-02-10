vim.cmd("set number")
vim.cmd("set syntax")
vim.cmd("set autoindent")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set smarttab")
vim.cmd("set expandtab")
vim.cmd("set softtabstop=4")
vim.cmd("set mouse=a")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set completeopt=menu,menuone,noselect")
vim.cmd("set cursorline")
vim.cmd("set splitbelow")
vim.cmd("set splitright")
vim.cmd [[
  autocmd ColorScheme * hi Normal guibg=NONE ctermbg=NONE
  autocmd ColorScheme * hi NonText guibg=NONE ctermbg=NONE
  autocmd ColorScheme * hi EndOfBuffer guibg=NONE ctermbg=NONE
]]
vim.g.mapleader = " "
