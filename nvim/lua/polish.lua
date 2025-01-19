-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}

local map = vim.api.nvim_set_keymap

map('n', '<C-n>', 'i<CR><ESC>', {})
map('n', '<Leader><C-/>', ':lua vim.diagnostic.open_float()<CR>', 
  { noremap = true, silent = true }
)
map('i', '<C-a>', '<Home>', {})
map('i', '<C-e>', '<End>', {})
map('i', '<C-d>', '<Delete>', {})
