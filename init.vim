syntax on
set relativenumber

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

call plug#begin(stdpath('data') . '/plugged')
	Plug 'neovim/nvim-lspconfig'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
call plug#end()

command! Scratch lua require'tools'.makeScratch()
lua require'lsp-setup'.setup()

let mapleader = " "
nnoremap <leader>t :lua require('template-selector').get_template()<CR>
nnoremap <leader>s :lua require('configure-nvim').search_nvim_config()<CR>
nnoremap <leader>a :lua require('action-selector').find_action()<CR>
nnoremap <leader>f :lua require('telescope.builtin').find_files()<CR>
