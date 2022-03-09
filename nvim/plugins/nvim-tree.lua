local tree_cb = require'nvim-tree.config'.nvim_tree_callback
vim.api.nvim_set_keymap(
    "n",
    "<C-n>",
    ":NvimTreeToggle<CR>",
    {
        noremap = true,
        silent = true
    }
)
