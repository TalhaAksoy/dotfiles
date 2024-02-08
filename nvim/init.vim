:set number
:set syntax
:set autoindent
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set expandtab
:set softtabstop=2
:set mouse=a
:set clipboard=unnamedplus
:set completeopt=menu,menuone,noselect
:set cursorline
:set splitbelow
:set splitright

highlight Normal guibg=none
highlight NonText guibg=none
highlight Normal ctermbg=none
highlight NonText ctermbg=none


call plug#begin('/home/alha/.config/nvim/plugged')

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'mhartington/formatter.nvim',
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'chikko80/error-lens.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'folke/lsp-colors.nvim',
Plug 'https://github.com/chikko80/error-lens.nvim',
Plug 'vim-airline/vim-airline-themes',
Plug 'glepnir/dashboard-nvim', { 'branch': 'master' }
Plug 'https://github.com/nvim-lua/plenary.nvim',
Plug 'https://github.com/nvim-neo-tree/neo-tree.nvim',
Plug 'MunifTanjim/nui.nvim',
Plug 'http://github.com/tpope/vim-surround',
Plug 'https://github.com/tpope/vim-commentary', " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline', " Status bar
Plug 'https://github.com/ap/vim-css-color', " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes', " Retro Scheme
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/ryanoasis/vim-devicons', " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal', " Vim Terminal
Plug 'https://github.com/preservim/tagbar', " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors', " CTRL + N for multiple cursors
Plug 'williamboman/mason.nvim',
Plug 'williamboman/mason-lspconfig.nvim',
Plug 'neovim/nvim-lspconfig',
Plug 'kabouzeid/nvim-lspinstall',
Plug 'lewis6991/gitsigns.nvim', " OPTIONAL: for git status
Plug 'nvim-tree/nvim-web-devicons', " OPTIONAL: for file icons
Plug 'romgrk/barbar.nvim',
Plug 'kyazdani42/nvim-web-devicons',
Plug 'https://github.com/nvim-neo-tree/neo-tree.nvim',
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

call plug#end()

lua require('mason_config')
lua require('nvim-tree_config')
lua require('error-lens_config')
"source ./minimalist.vim

" Mapping
nnoremap <f5> :Neotree toggle reveal position=float<CR>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <C-j> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-Left> :bprev<CR>
nnoremap <C-Right> :bnext<CR>
nnoremap <C-w> :BufferClose<CR>

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
" Mapping

:set completeopt-=preview " For No Previews
:colorscheme catppuccin-mocha
"theme background opacity
hi Normal guibg=NONE ctermbg=NONE 
hi NonText guibg=NONE ctermbg=NONE
":colorscheme onedark

let g:coc_node_path = system("whereis node | awk '{print $2}' | tr -d '\n'")

" Neotree
autocmd QuitPre * if tabpagenr('$') ==  1 && winnr('$') ==  1 && exists('b:Neotree') && b:Neotree.isTabTree() | quitall | endif
autocmd BufEnter * if exists(':Neotree close') | :Neotree close | endif
autocmd ColorScheme * highlight NvimTreeNormal guibg=#2B4252
autocmd FileType NvimTree setlocal winhighlight=Normal:NvimTreeNormal


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


"let g:airline_theme='ayu_dark'                                                                                                             
"let g:airline_powerline_fonts = 1                                                                                                         
"let g:airline_section_b = '%{getcwd()}' " in section B of the status line display the CWD
" Disable whitespace checks in Vim Airline
"let g:airline#extensions#whitespace#enabled =  0

" Set the current directory to display in the status line
"let g:airline#extensions#branch#displayed_head_limit =  1
"let g:airline#extensions#branch#format = '%{getcwd()}'

" Remove trailing whitespace indicator from Vim Airline
"let g:airline_skip_empty_sections =  1

"Surround.vim
  let g:loaded_matchit = 1
"Surround.vim

" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
