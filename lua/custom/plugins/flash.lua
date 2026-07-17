return {
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    opts = {},
    keys = {
      {
        's',
        mode = { 'n', 'x', 'o' },
        function() require('flash').jump() end,
        desc = 'Skok Flash',
      },
      {
        'S',
        mode = { 'n', 'x', 'o' },
        function() require('flash').treesitter() end,
        desc = 'Flash Treesitter (Zaznaczanie bloków kodu)',
      },
      {
        'r',
        mode = 'o',
        function() require('flash').remote() end,
        desc = 'Zdalny Flash (Remote)',
      },
      {
        'R',
        mode = { 'o', 'x' },
        function() require('flash').treesitter_search() end,
        desc = 'Wyszukiwanie Treesitter',
      },
    },
  },
}
