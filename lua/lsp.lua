require("mason").setup()
require("mason-lspconfig").setup({
    -- List of LSP servers to automatically install
    ensure_installed = { "pyright", "rust_analyzer", "clangd", "texlab" },
    automatic_installation = true, -- Automatically install LSPs if not present
})

local lsp = require('lsp-zero')

lsp.preset('recommended')

-- Setup your LSP servers as before
--lsp.configure('pyright', {
--})
lspconfig = require('lspconfig')
lspconfig.pyright.setup{}
lspconfig.rust_analyzer.setup{}
lspconfig.clangd.setup{}
lspconfig.texlab.setup{}

-- Setup nvim-cmp
local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    [vim.api.nvim_replace_termcodes("<leader><Tab>", true, true, true)] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif require('luasnip').expand_or_jumpable() then
        require('luasnip').expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif require('luasnip').jumpable(-1) then
        require('luasnip').jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'path' }
  })
})

-- Additional cmp setup for command line
cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

lsp.setup()

