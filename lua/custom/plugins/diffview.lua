---@module 'lazy'
---@type LazySpec
return {
  'sindrets/diffview.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('diffview').setup {
      enhanced_diff_hl = true,
      use_icons = true,

      view = {
        merge_tool = {
          layout = 'diff4_mixed',
          disable_diagnostics = true,
        },
      },
      keymaps = {
        view = {
          { 'n', '<leader>co', require('diffview.actions').conflict_choose 'ours', { desc = 'Choose OURS' } },
          { 'n', '<leader>ct', require('diffview.actions').conflict_choose 'theirs', { desc = 'Choose THEIRS' } },
          { 'n', '<leader>cb', require('diffview.actions').conflict_choose 'base', { desc = 'Choose BASE' } },
          { 'n', '<leader>ca', require('diffview.actions').conflict_choose 'all', { desc = 'Choose ALL' } },
          { 'n', ']x', require('diffview.actions').next_conflict, { desc = 'Next conflict' } },
          { 'n', '[x', require('diffview.actions').prev_conflict, { desc = 'Prev conflict' } },
        },
      },
    }
  end,
}
