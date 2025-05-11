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
- `L` : changer vers buffer de droite (la barre du haut)
- `H` : changer vers buffer de gauche 

### Mode 
- `i` : insertion 
- `v` : mode visuel 
- `;;` : sortie du mode insertion

### Nvim-Tree
- `espace + e` : ouverture/fermeture arborescence
- `a` : creation d'un nouveau fichier

### Lazy-vim
- `:Lazy` : ouvre la fenetre de gestion des plugins
- `q` : quitter 
- `U` : maj des plugins 

### Telescope
- `ctrl + k` : remonter dans la liste de selection
- `ctrl + j` : descendre dans la liste de selection
- `espace + ff` : cherche dans les noms de fichiers
- `espace + fg` : cherche dans le fichier
- `espace + fb` : cherche dans les noms de buffers
- `espace + fx` : cherche le mots sous le curseur dans le contenu des fichiers

### Treesitter
- `ctrl + espace` : demarre selection incrementale + extension de la selection
- `backspace` : reduire la selection


## Structure

- `lua/core/init.lua` : fichier qui permet de charger les differents fichiers Core.
- `lua/core/keymaps.lua` : fichier qui contient les raccourcis clavier
- `lua/plugins/nvim-tree.lua` : configuration du plugins nvim tree
- `lua/plugins/telescope.lua` : configuration du plugin telescope
- `lua/plugins/bufferline.lua` : configuration bufferline
- `lua/plugins/lualine.lua` : configuration de la barre de status
- `lua/plugins/treesitter.lua` : configuration treesitter
## Fonctionnement

Configuration de base pour Neovim
![Schema de chargement des options](./doc/schemaChargement.png)


## Pluggins

- `lazy-vim` : permet de gerer l'installation et la configuration des pluggins.
- `nvim-tree` : arborescence des fichiers  
- `telescope` : permet de rechercher
- `bufferline` : affiche la barre des fichiers ouvers
- `lualine` : affiche la barre de status (info git)
- `nvim-treesitter` : parsing des languages de prog (coloration syntaxique, indentation intelligente)


## Themes 

Pour ajouter de nouveau theme, creer un nouveau fichier `lua/plugins/<name_theme>.lua`


## Documentation 
- [Liste de theme](https://dotfyle.com/neovim/colorscheme/trending)
- [Guide de configuration](https://vincent.jousse.org/blog/fr/tech/configurer-neovim-comme-ide-a-partir-de-zero-tutoriel-guide/)
