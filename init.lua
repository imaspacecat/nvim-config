require("plugins")
require("options")
require("mappings")

require("nvim-tree").setup({
  open_on_setup = true,
  open_on_setup_file = true
})

require('lualine').setup ({
  options = {
    theme = 'tokyonight'
  }
})

require('nvim-autopairs').setup()

require('telescope').setup()
require('telescope').load_extension('fzf')

require('indent_blankline').setup()

require('Comment').setup()

require("mason").setup()
require("mason-lspconfig").setup()
-- use 'neovim/nvim-lspconfig'

local lspconfig = require('lspconfig')
-- lspconfig.sumneko_lua.setup(require('coq').lsp_ensure_capabilities({
--   settings = {
--     Lua = {
--       runtime = {
--         -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
--         version = 'LuaJIT',
--       },
--       diagnostics = {
--         -- Get the language server to recognize the `vim` global
--         globals = {'vim'},
--       },
--       workspace = {
--         -- Make the server aware of Neovim runtime files
--         library = vim.api.nvim_get_runtime_file("", true),
--       },
--       -- Do not send telemetry data containing a randomized but unique identifier
--       telemetry = {
--         enable = false,
--       },
--     },
--   },
--   }
-- ))

-- require'lspconfig'.jdtls.setup(require('coq').lsp_ensure_capabilities({
--     -- on_attach = my_custom_on_attach,
--   })
-- ) -- java lsp
--
-- require'lspconfig'.pyright.setup(require('coq').lsp_ensure_capabilities({}))

vim.g.coq_settings = { auto_start = 'shut-up' }

local servers = { 'pyright', 'jdtls', 'gradle_ls', 'jsonls', 'sumneko_lua' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup(require('coq').lsp_ensure_capabilities({
    -- on_attach = my_custom_on_attach,
  }))
end


-- vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme tokyonight]])
