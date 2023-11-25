local function setup_vim_plug()
  -- Define plugins
  vim.cmd [[
    call plug#begin('~/.local/share/nvim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'dracula/vim'
    Plug 'lervag/vimtex'
    call plug#end()
  ]]
end

setup_vim_plug()
