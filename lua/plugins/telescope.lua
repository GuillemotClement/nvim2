return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- fzf implementation en C pour plus de rapidite
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        -- amelioration visuel 
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = { "smart" },
        file_ignore_patterns = { ".git/", "node_modules", "vendor" },

        mappings = {
          i = {
            ["<C-j"] = actions.move_selection_next,
            ["<C-k"] = actions.move_selection_previous,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap

    keymap.set(
      "n",
      "<leader>ff",
      "<cmd>Telescope find_files<cr>",
      { desc = "Recherche de chaine de caractere dans les noms de fichiers" }
    )
    keymap.set(
      "n",
      "<leader>fg",
      "<cmd>Telescope live_grep<cr>",
      { desc = "Recherche de chaines de caractere dans le contenu des fichiers" }
    )
    keymap.set(
      "n",
      "<leader>fb",
      "<cmd> Telescope buffers<cr>",
      { desc = "Recher de chaine de caractere dans les noms de buffers" }
    )
    keymap.set(
      "n",
      "<leader>fx",
      "<cmd>Telescope grep_string<cr>",
      { desc = "Recherche de la chaine de caracteres sous le curseur" }
    )
  end,
}


