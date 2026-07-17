---@module 'lazy'
---@type LazySpec
return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        -- Podstawowe, bardzo wygodne ustawienia:
        mode = 'buffers', -- pokazuj bufory (nie prawdziwe karty)
        diagnostics = 'nvim_lsp', -- pokazuj błędy z lsp na zakładkach
        separator_style = 'slant', -- "slant" (ukośne), "thick" (grube) lub "thin" (cienkie)
        always_show_bufferline = true, -- zawsze pokazuj pasek, nawet przy jednym pliku
        show_buffer_close_icons = true,
        show_close_icon = false,
        offsets = {
          {
            filetype = 'neo-tree',
            text = '',
            separator = true,
          },
        },
      },
    }

    vim.keymap.set('n', '<S-l>', '<cmd>BufferLineCycleNext<CR>', { desc = 'Next Buffer' })
    vim.keymap.set('n', '<S-h>', '<cmd>BufferLineCyclePrev<CR>', { desc = 'Previous Buffer' })
    vim.keymap.set('n', '<leader>c', '<cmd>bdelete<CR>', { desc = '[C]lose Buffer' })
  end,
}
