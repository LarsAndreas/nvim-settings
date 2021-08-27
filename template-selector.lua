local M = {}

M.get_template = function()
	require("telescope.builtin").find_files({
		prompt_title = "< Select Template >",
		cwd = "~/.config/nvim/templates",

		attach_mappings = function(prompt_bufnr, map)
			function get_the_template()
				local content = require('telescope.actions.state').get_selected_entry(bufnr)
				print(content)
			end
			map('i', '<C-p>', function(bufnr)
				get_the_template()
			end)
			return true
		end
	})
end
return M
