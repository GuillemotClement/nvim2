return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    -- chargement du theme
    vim.cmd([[colorscheme tokyonight]])
  end,
}
