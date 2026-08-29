---@module 'lazy'
---@type LazySpec
return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',

    -- Adaptery
    'nvim-neotest/neotest-python',
  },
  keys = {
    { '<leader>d', '', desc = '+test' },
    { '<leader>da', function() require('neotest').run.attach() end, desc = 'Attach to Test (Neotest)' },
    { '<leader>dt', function() require('neotest').run.run(vim.fn.expand '%') end, desc = 'Run File (Neotest)' },
    { '<leader>dT', function() require('neotest').run.run(vim.uv.cwd()) end, desc = 'Run All Test Files (Neotest)' },
    { '<leader>dr', function() require('neotest').run.run() end, desc = 'Run Nearest (Neotest)' },
    { '<leader>dl', function() require('neotest').run.run_last() end, desc = 'Run Last (Neotest)' },
    { '<leader>ds', function() require('neotest').summary.toggle() end, desc = 'Toggle Summary (Neotest)' },
    { '<leader>do', function() require('neotest').output.open { enter = true, auto_close = true } end, desc = 'Show Output (Neotest)' },
    { '<leader>dO', function() require('neotest').output_panel.toggle() end, desc = 'Toggle Output Panel (Neotest)' },
    { '<leader>dS', function() require('neotest').run.stop() end, desc = 'Stop (Neotest)' },
    { '<leader>dw', function() require('neotest').watch.toggle(vim.fn.expand '%') end, desc = 'Toggle Watch (Neotest)' },
  },
  -- Zamiast funkcji config, używamy tabeli opts
  opts = function()
    return {
      -- Definiujemy adaptery bezpośrednio w opts
      adapters = {
        require 'neotest-python' {
          dap = { justMyCode = false },
        },
      },
      status = {
        virtual_text = true,
        signs = true,
      },
      output = {
        open_on_run = false,
      },
    }
  end,
}
