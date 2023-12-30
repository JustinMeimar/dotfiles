vim.keymap.set('n', '<leader>t', ':NERDTree<CR>',
  { noremap = true, silent = true, desc = "Open NERDTree" }
)

vim.keymap.set('n', '<leader>vs', ':vsplit<CR>',
  { noremap = true, silent = true, desc = "Vertical Split"}
)

vim.keymap.set('n', '<leader>hs', ':split<CR>',
  { noremap = true, silent = true, desc = "Horizontal Split"}
)

function SayHello()
  print("Helo, World!")
end

vim.keymap.set('n', '<leader>jm', ':lua SayHello()<CR>', { noremap = true, silent = true })
