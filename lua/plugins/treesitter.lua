return {
  -- nom du plugin a installer
  "nvim-treesitter/nvim-treesitter",
  -- apres install execute la commande pour installer/mettre a jour les parseur de language supporter
  build = ":TSUpdate",
  -- fonction qui configure le plugins apres son chargement
  config = function()
    -- charge le module de configuration de treesitter
    local treesitter = require("nvim-treesitter.configs")

    -- configuration de treesitter
    treesitter.setup({
      -- activation de la coloration syntaxique
      highlight = {
        enable = true,
      },
      -- activation de l'indentation améliorée
      indent = { enable = true },

      -- langages installés et configurés
      ensure_installed = {
        "bash",
        "dockerfile",
        "gitignore",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "typescript",
        "vim",
        "yaml",
        "php",
        "css",
        "tsx",
        "sql",
      },
      -- lorse de l'appui sur <Ctrl-space> sélectionne le bloc
      -- courant spécifique au langage de programmation
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
