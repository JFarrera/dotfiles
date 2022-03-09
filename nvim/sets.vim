" basic 
set history=500
syntax on   
set number
set incsearch 
set hlsearch
set smartcase
set ruler
set scrolloff=8
set wildmenu
filetype plugin on
set laststatus=2
set clipboard+=unnamedplus
set cursorline

" No backups, we have git
set nobackup
set nowritebackup
set noswapfile
set undodir=~/.vim/undodir 
set undofile
set hidden

" Set completeopt to have a better completion experience lsp
set completeopt=menuone,noinsert,noselect

" tabs 
set expandtab
set smartindent
set smarttab
set shiftwidth=4
set tabstop=4 softtabstop=4
set nowrap
set ai "Auto indent


" Remaps
let mapleader=" "

" VIM movements enforcing
nnoremap <Up> <Nop>
inoremap <Up> <Nop>
nnoremap <Down> <Nop>
inoremap <Down> <Nop>
nnoremap <Left> <Nop>
inoremap <Left> <Nop>
nnoremap <Right> <Nop>
inoremap <Right> <Nop>

" better for splits
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

" Compile document (latex and markdown)
map <leader>c :w! \| !compiler <c-r>%<CR>

" Open corresponding .pdf/.html or preview
map <leader>p :!opout <c-r>%<CR><CR>

" spell checker
nnoremap <leader>ca :set spell! \| set spelllang=ca <CR>
nnoremap <leader>es :set spell! \| set spelllang=es <CR>
nnoremap <leader>ns :set nospell <CR>

" lsp remaps
nnoremap <silent>gd <cmd> lua vim.lsp.buf.definition()<CR>
nnoremap <silent>gD <cmd> lua vim.lsp.buf.declaration()<CR>
nnoremap <silent>gi <cmd> lua vim.lsp.buf.implementation()<CR>
nnoremap <silent>gr <cmd> lua vim.lsp.buf.references()<CR>
nnoremap <silent><leader>f <cmd> lua vim.lsp.buf.formatting()<CR>
" lspsaga remaps
" code actions
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
" show type
nnoremap <silent><leader>st <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
" show definition 
nnoremap <silent><leader>sd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
" rename
nnoremap <silent><leader>rn <cmd>lua require('lspsaga.rename').rename()<CR>
" show error, go to next error and previous
nnoremap <silent> <leader>se :Lspsaga show_line_diagnostics<CR>
nnoremap <silent><leader>pe <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>
nnoremap <silent><leader>ne <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>
