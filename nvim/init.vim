:set number
:set syntax
:set autoindent
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set softtabstop=2
:set mouse=a

call plug#begin('/home/alha/.config/nvim/plugged')

Plug 'glepnir/dashboard-nvim', { 'branch': 'master' }
Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/nvim-neo-tree/neo-tree.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'http://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
Plug 'romgrk/barbar.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'https://github.com/nvim-neo-tree/neo-tree.nvim'

call plug#end()

lua require('mason_config')
lua require('nvim-tree_config')

" Mapping
nnoremap <f5> :Neotree toggle reveal position=float<CR>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> :bprev<CR>
nnoremap <C-l> :bnext<CR>

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
" Mapping

:set completeopt-=preview " For No Previews
:colorscheme jellybeans

let g:coc_node_path = '/usr/bin/node'
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" Neotree
autocmd QuitPre * if tabpagenr('$') ==  1 && winnr('$') ==  1 && exists('b:Neotree') && b:Neotree.isTabTree() | quitall | endif

"augroup NeotreeOnStart
"  autocmd!
"  autocmd VimEnter * Neotree
"augroup END
"Neotree

" BarBar
" BarBar

" Dashboard
" Enable the dashboard
let g:dashboard_enable_at_startup =  1

" Custom header
let g:dashboard_custom_header = {
\ 'type': 'text',
\ 'content': ['Hello, World!']
\ }

" Dashboard footer
let g:dashboard_footer_icon = '😄'
let g:dashboard_footer_desc = {
\ 'type': 'text',
\ 'content': ['Dashboard Footer Description']
\ }

" Session load path
let g:dashboard_session_directory = $HOME . "/.config/nvim/session"
" Dashboard
