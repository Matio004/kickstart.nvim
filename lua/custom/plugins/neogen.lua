---@module 'lazy'
---@type LazySpec
return {
  'danymat/neogen',
  dependencies = 'nvim-treesitter/nvim-treesitter',
  config = function()
    require('neogen').setup {
      snippet_engine = 'luasnip',
    }
  end,
  keys = {
    {
      '<leader>ng',
      function() require('neogen').generate() end,
      desc = '[N]eogen [G]enerate',
    },
  },
}
