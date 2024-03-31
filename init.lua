local data_dir = vim.fn.has('nvim') == 1 and vim.fn.stdpath('data') .. '/site' or '~/.vim'

if vim.fn.empty(vim.fn.glob(data_dir .. '/autoload/plug.vim')) ~= 0 then
	vim.api.nvim_command('silent execute \'!curl -fLo ' .. data_dir .. '/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim\'')
	vim.api.nvim_command('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end

vim.g.mapleader = ","

require('plugins')
require('options')
require('telescope')
require('autocmd')
require('keymaps')
