---@module 'lazy'
---@type LazySpec
return {
  {
    'esmuellert/codediff.nvim',
    -- Ładuje wtyczkę dopiero po wpisaniu tej komendy
    cmd = 'CodeDiff',
    config = function()
      -- Główna funkcja inicjalizująca wtyczkę
      require('codediff').setup {
        -- Pusta tabela ładuje domyślne ustawienia,
        -- które od razu naśladują wygląd z VS Code
      }
    end,
  },
}
