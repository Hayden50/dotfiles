return {
  {"shaunsingh/nord.nvim"},
  {"ellisonleao/gruvbox.nvim"},
  {"cocopon/iceberg.vim"},
  {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require('material').setup({})
      vim.cmd('colorscheme material-darker')
    end
  }
}
