-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require("lsp-zero")
lsp.preset("recommended")

-- When you don"t have mason.nvim installed
-- You"ll need to list the servers installed in your system
lsp.ensure_installed({
	"tsserver",
	"eslint",
	"sumneko_lua",
})

lsp.setup()

