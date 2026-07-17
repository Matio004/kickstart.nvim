---@module 'lazy'
---@type LazySpec
return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        size = 20,
        open_mapping = [[<C-\>]],
        -- Opcje: 'vertical' (z boku), 'horizontal' (na dole), 'float' (pływające okno na środku)
        direction = 'float',
        -- Ustawienia dla pływającego okna
        float_opts = {
          border = 'curved', -- Ładna, zaokrąglona ramka
        },
      }

      -- Magiczny skrót do wychodzenia z trybu terminala
      vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { desc = 'Wyjście z trybu terminala' })
    end,
  },
}
