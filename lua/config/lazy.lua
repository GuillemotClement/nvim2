-- mise en place et installation de lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- configuration de lazy.nvim et importation du repertoire 'plugins'
require("lazy").setup({ { import = "plugins" }, { import = "plugins.lsp" } }, {
  -- verifie auto des mise a jour de plugins sans notifier
  -- lualine viens afficher un icon
  checker = {
    enabled = true,
    notify = false,
  },
  -- definition du theme dans la fenetre
  install = { colorscheme = { "tokyonight" } },
  -- desactive la notification au demarrage
  change_detection = {
    notify = false,
  },
})

