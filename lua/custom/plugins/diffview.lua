---@module 'lazy'
---@type LazySpec
return {
  'sindrets/diffview.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    vim.opt.diffopt:append 'linematch:60'

    require('diffview').setup {
      enhanced_diff_hl = true,
      use_icons = true,

      view = {
        merge_tool = {
          layout = 'diff3_mixed',
          disable_diagnostics = true,
        },
      },
    }
  end,
}
