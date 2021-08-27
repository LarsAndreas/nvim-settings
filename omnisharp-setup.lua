local M = {}
M.setup = function(on_attach)
	local pid = vim.fn.getpid()
	local omnisharp_bin = "/home/larzanda/.config/nvim/language-servers/omnisharp/run"
	require'lspconfig'.omnisharp.setup{
	    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
	    on_attach = on_attach
	}
end
return M
