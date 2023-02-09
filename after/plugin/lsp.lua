if not lsp_status_ok then
	return
end

lsp.preset("recommended")

lsp.ensure_installed({
	"tsserver",
	"eslint",
	"sumneko_lua",
})

lsp.setup()
