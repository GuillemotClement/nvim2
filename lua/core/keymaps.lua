-- definition de la touche leader sur espace
-- la touche leader sert de prefixe pour creer des raccourcis perso
-- on utilise la touche espace
vim.g.mapleader = " " 

-- raccourcis pour la fonction set
-- creation d'un alias pour la fonction
-- permet d'utiliser l'alias au lieu de la fonction complete
local keymap = vim.keymap.set

-- ;; pour sortir du mode insertion => equivalent a appuyer sur echec
keymap("i", ";;", "<ESC>", { desc = "Sortir du mode insertion avec ;;"})

-- efface le surlignage de la recherche
-- en mode normal, appuie sur espace+nh pour effacer le surlignage des resultats de la derniere recherche
keymap("n", "<leader>nh", ":nohl<CR>", { desc = "Efface le surlignage de la recherche" })

-- I deplace le texte selectionne vers le haut en mode visuel avec (avec v)
-- maj +_ i pour deplacer vers le haut
-- :m ,-2 => deplace la ligne courante deux lignes plus haut
-- == => realigne l'indentation apres le deplacement
keymap("v", "<S-i>", ":m .-2<CR>==", { desc = "Deplace le texte selectionner vers le haut en mode visuel" })

-- K deplace le texte selectionner vers le bas en mode visuel (active avec v)
-- maj + k pour deplacer vers le bas
-- :m .+1 => deplace la ligne courante une ligne plus bas
keymap("v", "<S-k>", ":m >+1<CR>==", { desc = "Deplace le texte selectionner vers le bas en mode visuel" })

-- I deplace le texte selectionner vers le haut en mode visuel bloc
-- MAJ + i => deplace le bloc vers le haut
-- :move '<-2 => deplace le bloc de deux ligne vers le haut
-- gv-gv => restqure la selection apres le deplacement pour repeter l'operation plus facilement
keymap("x", "<S-i>", ":move '<-2<CR>gv-gv", { desc = "Deplace le texte selectionner vers le haut en mode visuel bloc" })

-- K deplace le texte selectionner vers le bas en mode visuel bloc
-- MAJ + k => deplace le bloc vers le bas
-- :move '>+1 => deplace le bloc selectionner une ligne plus bas
keymap("x", "<S-k>", ":move '>+1<CR>gv-gv", { desc = "Deplace le texte selectionner vers le en mode visuel bloc" })


-- changement de fenetre avec Ctrl + deplacement 
keymap("n", "<C-h>", "<C-w>h", { desc = "Deplace le curseur dans la fenetre de gauche" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Deplace le curseur dans la fenetre de droite" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Deplace le curseur dans la fenetre du bas" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Deplace le curseur dans la fenetre du haut" })

