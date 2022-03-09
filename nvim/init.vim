"   _ ____   _(_)_ __ ___     ___ ___  _ __  / _(_) __ _ 
"  | '_ \ \ / / | '_ ` _ \   / __/ _ \| '_ \| |_| |/ _` |
"  | | | \ V /| | | | | | | | (_| (_) | | | |  _| | (_| |
"  |_| |_|\_/ |_|_| |_| |_|  \___\___/|_| |_|_| |_|\__, |
"                                                  |___/ 

source ~/.config/nvim/sets.vim
source ~/.config/nvim/plugins.vim

" colorscheme
luafile ~/.config/nvim/plugins/colorscheme.lua
luafile ~/.config/nvim/plugins/bar.lua
" make neovim like an IDE (autocomplete, syntax highlighting, git, etc)
luafile ~/.config/nvim/plugins/lsp.lua
luafile ~/.config/nvim/plugins/treesitter.lua
lua require'nvim-tree'.setup()
luafile ~/.config/nvim/plugins/nvim-tree.lua
luafile ~/.config/nvim/plugins/git.lua
luafile ~/.config/nvim/plugins/telescope.lua
lua require('nvim-autopairs').setup{}
luafile ~/.config/nvim/plugins/lspsaga.lua
" luafile ~/.config/nvim/plugins/lsputils.lua -- currently broken because of lsp update
" personal wiki
luafile ~/.config/nvim/plugins/vimwiki.lua
 augroup lsp
     au!
     au FileType java lua require'jdtls_config'.setup()
 augroup end
