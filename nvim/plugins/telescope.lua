require('telescope').setup {
    defaults = {
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        prompt_prefix = ' >',
        color_devicons = true,

        file_previewer = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}

-- remaps!
local opt = {noremap = true, silent = true}
vim.g.mapleader = " "
vim.api.nvim_set_keymap("n", "<Leader>pf", [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>pb", [[<Cmd>lua require('telescope.builtin').find_buffer()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>gf", [[<Cmd>lua require('telescope.builtin').git_files()<CR>]], opt)

require('telescope').load_extension('fzy_native')
