local M = {}

M.find_action = function()
	require('telescope.builtin').find_files({
		cwd = "~/.config/nvim/lua/actions",
		attach_mappings = function(prompt_bufnr, map)
			local content = require('telescope.actions.state').get_selected_entry(prompt_bufnr)
			map('i', 't', function()
                             	vim.api.nvim_command('echo "' .. content.value .. '"')
				require('telescope.actions').close(prompt_bufnr)
			end)
			map('i', '<CR>', function()
				require('actions.' .. content.value)
				require('telescope.actions').close(prompt_bufnr)
			end)
			return true
		end
	})
end

return M
