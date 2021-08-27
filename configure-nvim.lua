local M = {}

M.search_nvim_config = function()
	require('telescope.builtin').find_files({
		prompt_title = "< NvimConfig >",
		cwd = "~/.config/nvim"
	})
end

return M
