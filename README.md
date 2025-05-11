# NVIM

## Raccourcis

### Deplacement 
- `h` : gauche
- `j` : bas
- `k` : haut
- `l` : droite
- `ctrl + h` : fenetre de gauche
- `ctrl + l` : fenetre de droite
- `ctrl + j` : fenetre du bas
- `ctrl + k` : fenetre du haut

### Mode 
- `i` : insertion 
- `v` : mode visuel 
- `;;` : sortie du mode insertion

### Nvim-Tree
- `espace + e` : ouverture/fermeture arborescence

### Lazy-vim
- `:Lazy` : ouvre la fenetre de gestion des plugins
- `q` : quitter 
- `U` : maj des plugins 


## Structure

- `lua/core/init.lua` : fichier qui permet de charger les differents fichiers Core.
- `lua/core/keymaps.lua` : fichier qui contient les raccourcis clavier
- `lua/plugins/nvim-tree.lua` : configuration du plugins nvim tree


## Fonctionnement

Configuration de base pour Neovim
![Schema de chargement des options](./doc/schemaChargement.png)


## Pluggins

- `lazy-vim` : permet de gerer l'installation et la configuration des pluggins.
- `nvim-tree` : arborescence des fichiers  


## Themes 

Pour ajouter de nouveau theme, creer un nouveau fichier `lua/plugins/<name_theme>.lua`


## Documentation 
- [Liste de theme](https://dotfyle.com/neovim/colorscheme/trending)
- [Guide de configuration](https://vincent.jousse.org/blog/fr/tech/configurer-neovim-comme-ide-a-partir-de-zero-tutoriel-guide/)
