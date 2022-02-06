"my comfy vim config (▰˘◡˘▰)
let mapleader="\<Space>"

"run python script pressing F5
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

"save file
nnoremap <leader>s :w<cr>

"wrapping toggles
nmap <silent> <leader>w :set invwrap<cr>

"avoid the escape key
inoremap jj <ESC>
inoremap jk <ESC>
inoremap kj <ESC>
inoremap kk <ESC>
inoremap ll <ESC>

"comfy remaps
"yank from current til end of line
nnoremap Y y$

"move identing visual block
vmap < <gv
vmap > >gv

"window navigation
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

"faster cursor movement 
nnoremap <c-j> 5j
nnoremap <c-k> 5k
xnoremap <c-j> 5j
xnoremap <c-k> 5k

"undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

"plugins
call plug#begin('~/.vim/plugged')
"aesthetics
Plug 'morhetz/gruvbox' 
Plug 'itchyny/lightline.vim'

"git integration  
Plug 'tpope/vim-fugitive'

"linting and autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"comment code 
Plug 'tpope/vim-commentary'

"file explorer/search  
Plug 'preservim/nerdtree' 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

"set default color scheme
colorscheme gruvbox
set background=dark

"coc.nvim autocomplete added setup
set updatetime=300
set shortmess+=c

"nerd tree setup
map <F2> :NERDTreeToggle<cr>

"fugitive
nnoremap <leader>gaa :Git add .<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gl :Gpull<CR>
nnoremap <leader>gb  :Gblame<CR>
nnoremap <leader>gst :Gstatus<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>glg :Glog<CR>

"lightline setup 
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'right': [['gitbranch', 'fileformat', 'filetype'] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

"-------------------------------------------------
syntax on
set colorcolumn=80
set confirm
set history=1000
set linebreak
set wildmenu
set encoding=utf-8
set cmdheight=1 
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set nu
set hidden
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set nowritebackup
set undofile
set mouse=a
set scrolloff=5
set signcolumn=yes
"searching
set incsearch
set ignorecase
set smartcase
set nohlsearch


