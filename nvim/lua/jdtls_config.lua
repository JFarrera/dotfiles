local M = {}
function M.setup()
  require('jdtls').start_or_attach({cmd = {'launch_jdtls'}, capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
})
  -- Utility servers
  local map = function(type, key, value)
    vim.api.nvim_buf_set_keymap(0,type,key,value,{noremap = true, silent = true});
  end
  -- GOTO mappings
  map('n','<leader>ca', '<cmd>lua require"jdtls".code_action()<CR>')
  map('n', [[<leader>ai]], [[<Cmd>lua require'jdtls'.organize_imports()<CR>]])
  map('n', [[<leader>av]], [[<Cmd>lua require('jdtls').extract_variable()<CR>]])
  map('v', [[<leader>av]], [[<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>]])
  map('v', [[<leader>am]], [[<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>]])
  map('n', [[<leader>aR]], [[<Cmd>lua require('jdtls').code_action(false, 'refactor')<CR>]])

  -- currently broken
  -- local jdtls_ui = require'jdtls.ui'
  -- function jdtls_ui.pick_one_async(items, _, _, cb)
  --   require'lsputil.codeAction'.code_action_handler(nil, nil, items, nil, nil, nil, cb)
  -- end
  vim.cmd[[command! -buffer JdtCompile lua require('jdtls').compile()]]
  vim.cmd[[command! -buffer JdtUpdateConfig lua require('jdtls').update_project_config()]]
  vim.cmd[[command! -buffer JdtJol lua require('jdtls').jol()]]
  vim.cmd[[command! -buffer JdtBytecode lua require('jdtls').javap()]]
  vim.cmd[[command! -buffer JdtJshell lua require('jdtls').jshell()]]
end

return M
