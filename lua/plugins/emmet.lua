  return {
    'olrtg/nvim-emmet',
    ft = { 'html', 'css' },
    config = function() vim.keymap.set({ 'n', 'v' }, '<leader>l', require('nvim-emmet').wrap_with_abbreviation) end,
  }
