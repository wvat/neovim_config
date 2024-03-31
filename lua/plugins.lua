local function setup_vim_plug()
  -- Define plugins
  vim.cmd [[
    call plug#begin('~/.local/share/nvim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'agude/vim-eldar'
    Plug 'folke/tokyonight.nvim'
    Plug 'nvim-lua/plenary.nvim'   
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }
    Plug 'lervag/vimtex'
    Plug 'ThePrimeagen/harpoon', {'branch' : 'harpoon2'}
    Plug 'neovim/nvim-lspconfig'
    call plug#end()
  ]]
end

setup_vim_plug()
