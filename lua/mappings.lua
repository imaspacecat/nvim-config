vim.g.mapleader = ' '

local map = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')
map('i', 'jk', '<ESC>')
map('i', 'JK', '<ESC>')
map('i', 'jK', '<ESC>')
map('v', 'jk', '<ESC>')
map('v', 'JK', '<ESC>')
map('v', 'jK', '<ESC>')
map('n', 'x', ':wqa', {})

map('i', 'jk', '', {})
map('n', 'n', [[:NvimTreeToggle]], {})
map('n', 'ff', [[:Telescope find_files]], {})
map('n', 't', [[:TagbarToggle]], {})

