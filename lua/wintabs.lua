for k, v in pairs({
  ['<C-L>'] = '<Plug>(wintabs_next)',
  ['<C-H>'] = '<Plug>(wintabs_previous)',
  ['<C-T>c'] = '<Plug>(wintabs_close)',
  ['<C-T>u'] = '<Plug>(wintabs_undo)',
  ['<C-T>o'] = '<Plug>(wintabs_only)',
  ['<C-W>c'] = '<Plug>(wintabs_close_window)',
  ['<C-W>o'] = '<Plug>(wintabs_only_window)',
  ['<C-T>c'] = '<Plug>(wintabs_close)',
  ['<C-T>u'] = '<Plug>(wintabs_undo)',
  ['<C-T>o'] = '<Plug>(wintabs_only)',
  ['<C-W>c'] = '<Plug>(wintabs_close_window)',
  ['<C-W>o'] = '<Plug>(wintabs_only_window)'
}) do
  vim.api.nvim_set_keymap('', k, v, {})
end
