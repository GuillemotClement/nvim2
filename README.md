# NVIM

## Raccourcis
- `;;` : sortie du mode insertion

## Structure

`lua/core/init.lua` : fichier qui permet de charger les differents fichiers Core.

`lua/core/keymaps.lua` : fichier qui contient les raccourcis clavier

## Fonctionnement

Configuration de base pour Neovim
![Schema de chargement des options](./doc/shemaChargement.png)

## Pluggins

- `lazy-vim` : permet de gerer l'installation et la configuration des pluggins.

## Commande 

### Lazy-vim
- `:Lazy` : ouvre la fenetre de gestion des plugins
- `q` : quitter la fenetre
- `U` : maj des plugins dans la fenetre de LV

## Themes 

Pour ajouter de nouveau theme, creer un nouveau fichier `lua/plugins/<name_theme>.lua`

Dans le fichier :
```lua
return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    -- chargement du thème
    vim.cmd([[colorscheme tokyonight]])
  end,
}
```

[Theme](https://dotfyle.com/neovim/colorscheme/trending)



## Documentation 

- [documentation](https://vincent.jousse.org/blog/fr/tech/configurer-neovim-comme-ide-a-partir-de-zero-tutoriel-guide/)
