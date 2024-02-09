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

Plug 'preservim/nerdtree',
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
"Plug 'williamboman/mason.nvim',
"Plug 'williamboman/mason-lspconfig.nvim',
"Plug 'neovim/nvim-lspconfig',
"Plug 'kabouzeid/nvim-lspinstall',
Plug 'lewis6991/gitsigns.nvim', " OPTIONAL: for git status
Plug 'nvim-tree/nvim-web-devicons', " OPTIONAL: for file icons
Plug 'romgrk/barbar.nvim',
Plug 'kyazdani42/nvim-web-devicons',
Plug 'https://github.com/nvim-neo-tree/neo-tree.nvim',
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

call plug#end()

"lua require('mason_config')
lua require('nvim-tree_config')
lua require('error-lens_config')
"source ./minimalist.vim

" Mapping
nnoremap <f5> :NERDTreeFocus<CR>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <C-j> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-Left> :bprev<CR>
nnoremap <C-Right> :bnext<CR>
nnoremap <C-w> :BufferClose<CR>

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"


""inoremap " ""<left>
""inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O


" Mapping

:set completeopt-=preview " For No Previews
:colorscheme catppuccin-mocha
"theme background opacity
hi Normal guibg=NONE ctermbg=NONE 
hi NonText guibg=NONE ctermbg=NONE
":colorscheme onedark

let g:coc_node_path = system("whereis node | awk '{print $2}' | tr -d '\n'")

" NerdTree
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"autocmd QuitPre * if tabpagenr('$') ==  1 && winnr('$') ==  1 && exists('b:Neotree') && b:Neotree.isTabTree() | quitall | endif
autocmd BufEnter * if exists(':Neotree close') | :Neotree close | endif
"autocmd ColorScheme * highlight NvimTreeNormal guibg=#2B4252 change background only neotree
"autocmd FileType NvimTree setlocal winhighlight=Normal:NvimTreeNormal


"augroup NeotreeOnStart
"  autocmd!
"  autocmd VimEnter * Neotree
"augroup END
  hi NeoTreeNormal guibg=#1E1E2E
  hi NeoTreeNormalNC guibg=#1E1E2E
"Neotree

" BarBar
" BarBar
"Surround.vim
  let g:loaded_matchit = 1
"Surround.vim

" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
