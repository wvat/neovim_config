-- Hint: use `:h <option>` to figure out the meaning if needed
vim.opt.clipboard = 'unnamedplus'   -- use system clipboard 
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.mouse = 'a'                 -- allow the mouse to be used in Nvim

-- Tab
vim.opt.tabstop = 4                 -- number of visual spaces per TAB
vim.opt.softtabstop = 4             -- number of spacesin tab when editing
vim.opt.shiftwidth = 4              -- insert 4 spaces on a tab
vim.opt.expandtab = true            -- tabs are spaces, mainly because of python

-- UI config
vim.opt.number = true               -- show absolute number
vim.opt.relativenumber = false       -- add numbers to each line on the left side
vim.opt.cursorline = true           -- highlight cursor line underneath the cursor horizontally
vim.opt.cursorcolumn = true
vim.opt.splitbelow = true           -- open new vertical split bottom
vim.opt.splitright = true           -- open new horizontal splits right
-- vim.opt.termguicolors = true        -- enabl 24-bit RGB color in the TUI

-- Searching
vim.opt.incsearch = true            -- search as characters are entered
vim.opt.hlsearch = true             -- do highlight matches
vim.opt.ignorecase = true           -- ignore case in searches by default

-- Airline settings
vim.g.airline_powerline_fonts = 1

-- Dracula Theme settings
vim.cmd([[colorscheme dracula]])

-- vimtex settings
vim.g.vimtex_view_method = 'skim'  -- Change 'zathura' to your preferred PDF viewer
vim.g.vimtex_compiler_progname = 'nvr' -- Needed for callback to work in NeoVim
vim.g.vimtex_quickfix_mode = 0 -- Change quickfix behaviorim.cmd([[colorscheme dracula]])

-- Additional settings can be added hereim.opt.smartcase = true            -- but make it case sensitive if an uppercase is entered
