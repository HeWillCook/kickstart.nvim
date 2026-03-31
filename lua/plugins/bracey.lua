return {
  'turbio/bracey.vim',
  ft = { 'html', 'css', 'javascript' },

  build = function(plugin)
    if vim.fn.executable 'npm' ~= 1 then
      vim.notify('Bracey: npm is not installed', vim.log.levels.ERROR)
      return
    end

    local result = vim.fn.system { 'npm', 'install', '--prefix', plugin.dir .. '/server' }
    if vim.v.shell_error ~= 0 then
      vim.notify('Bracey install failed:\n' .. result, vim.log.levels.ERROR)
      return
    end

    vim.cmd 'silent! UpdateRemotePlugins'
  end,
}
