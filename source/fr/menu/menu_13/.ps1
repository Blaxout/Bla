import os

print("""
[1;32m
PAQUETS NÉCESSAIRES:
[1;39m
pkg install nano -y
[1;33m

[1;35mCOULEURS:[1;39m
""")
os.system(f"cat {os.getenv('WIKI_LANG', 'fr')}/menu/menu_13/.colores")
print("""
[1;33mFONCTIONS:[1;39m
""")
os.system(f"cat {os.getenv('WIKI_LANG', 'fr')}/menu/menu_13/.funk")
print("""
[1;32mPROCÉDURE:
[1;36m
Nous allons d'abord entrer dans le dossier etc pour modifier le fichier bash.bashrc:
[1;39m
cd /data/data/com.termux/files/usr/etc
[1;36m
Ici, nous supprimerons le fichier motd:
[1;39m
rm motd
[1;36m
Nous ouvrons le fichier bash.bashrc:
[1;39m
nano bash.bashrc
[1;36m
Ici, nous chercherons une variable appelée PS1
[1;39m
Nous devrons la modifier. Par défaut, il y a un $, vous pouvez y ajouter des couleurs, des fonctions, etc. Vous pouvez ajouter n'importe quel mot, couleur ou fonction que vous voulez:

[1;33mExemple:
[1;39m
PS1='\n \\e[1;36m>>\\e[1;32mVotreNom\\e[1;35m@\\e[1;33mtermux\\e[1;36m<<\\e[1;32m [\\e[1;33m \\d\\e[1;32m]\\e[1;32m [\\e[1;33m\t \\e[1;32m] 
|\\e[1;31m[\\e[1;33m \\s \\h \\e[1;31m]
|__\\e[1;31m[\\e[1;33m \\w \\e[1;31m]
|
\\e[1;31m|__\\e[1;31m[\\e[1;36m # \\e[1;31m]\\e[1;39m '
[1;32m""")
os.system(f"cat {os.getenv('WIKI_LANG', 'fr')}/menu/menu_13/.func")
print("""
[1;39mQuand nous aurons terminé, nous appuierons sur CTRL+x puis sur y

Nous ouvrons une nouvelle fenêtre et notre entrée de commande sera modifiée.
""")