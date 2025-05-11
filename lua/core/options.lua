local opt = vim.opt

--numero de ligne
opt.relativenumber = true --affiche le numero de ligne relatives a la position du curseur
opt.number = true -- affiche le nom absolu de la ligne active lorsaue relativenumber est actif

-- tabs et indentation
opt.tabstop = 2 -- 2 espaces pour les tabulations
opt.shiftwidth = 2 -- 2 espaces pour la taille des indentations
opt.extandtab = true --change les tabulations en espaces
opt.autoindent = true -- garde l'indentation actuelle a la prochaine ligne

-- recherche
opt.ignorecase = true -- ignore la casse quand on recherche
opt.smartcase = true -- sauf quand on fait une recherche avec des majuscule, on rebascule en sensible a la casse
opt.hlsearch = true -- surlignage des occurences de la recherche en cours

-- ligne du curseur 
opt.cursorline = true -- surlignage de la ligne active 

-- apparence

-- termguicolors est necessaire pour les theme moderne
opt.termguicolors = true
opt.background = "dark" -- dark ou light selon preference
opt.signcolum = "yes" -- affiche la colonne en plus a gauche pour afficher les signes -> evite de decaler le texte

-- retour 
opt.backspace = "indent,eol,start" -- autorise l'utilisation de retour quand on indente, la fin de ligne ou au debut

-- presse papier
opt.clipboard = "unnamedplus" -- utilisation du presse papier du systeme par defaut

-- split fenetre
opt.splitright = true -- split vertical s'affiche a droite
opt.splitbelow = true -- split horizontale s'affiche en bas

opt.swapfile = false -- supprime le fichier swap

opt.undofile = true -- autorise undo a l'infini (meme si on revient sur un fichier qu'on avait fermer

opt.iskeyword:append("-") -- traite les mots avec des - comme un seul mot

-- affiche des caracteres speciaux
opt.list = true
opt.listchars:append({ nbsp = "␣", trail = "•", precedes = "«", extends = "»", tab = "> " })
