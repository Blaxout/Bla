print(""" 
\033[1;39mBien, si vous avez le problème que ngrok ne vous donne pas de lien lorsque vous lancez un phishing, vous devez faire ce qui suit :

D'abord, nous vérifierons si notre ngrok se connecte. S'il ne se connecte pas, nous devons l'installer d'une autre manière (allez au menu Tutoriels/Installation Ngrok).

Bien, une fois que ngrok fonctionne, nous devons vérifier quel port notre phishing ouvre. \033[1;31mComment le voir ?\033[1;39m Eh bien, nous pouvons voir le code source et vérifier quel port il ouvre pour cela :

\033[1;32mcat nomduphishing.sh

\033[1;39mCela seulement si notre outil ne nous montre pas le localhost. Dans des outils comme socialsploit, hiddeneye, phisherman, etc., il nous montre le localhost, qui ressemble à quelque chose comme ça :

\033[1;36mlocalhost:5626

\033[1;39mDans d'autres outils comme ShellPhish ou Zphisher, il ne nous montre pas le localhost, mais si nous vérifions le code source, nous verrons qu'il ouvre le port 3333 dans les deux cas :

\033[1;36mshellphish.sh:\033[1;39m Ouvre le port 3333
\033[1;36mzphisher.sh:\033[1;39m Ouvre le port 3333
\033[1;36mAIOPhish/SocialSploit:\033[1;39m Ouvre un port aléatoire, le script vous donnera le port à côté de localhost:(port)

Bien, une fois que nous connaissons le port et que notre ngrok fonctionne, ce que nous devons faire est de créer une nouvelle fenêtre, d'entrer dans le dossier ngrok et d'ouvrir un serveur avec le port que votre phishing ouvre\033[1;32m

Exemple:
							    
\033[1;36mJe veux faire du phishing avec ShellPhish:\033[1;39m Donc je dois ouvrir le port 3333 :

\033[1;32m./ngrok http 3333

\033[1;36mJe veux faire du phishing avec AIOPhish/SocialSploit:\033[1;39m Donc je dois ouvrir le port que le script me donne, car dans ce cas, il est aléatoire :

\033[1;32m./ngrok http votreport

\033[1;39mIci, notre phishing doit continuer à fonctionner, c'est-à-dire attendre les données de la victime. Bien, une fois le port ngrok ouvert et connecté, il nous donnera un lien que nous copierons :

\033[1;36mhttp://284aqoks9.ngrok.io\033[1;33m(Exemple)

\033[1;39mNous ne copierons que le lien, pas le ":" et le port qu'il nous laisse à côté.

En faisant cela, nous enverrons le lien à la victime et attendrons les données :)

\033[1;32mRépétez le processus chaque fois que vous lancez le phishing.

\033[1;36mNote:\033[1;39m Cependant, vous pouvez utiliser AIOPhish qui a résolu ces erreurs, et la capacité de mettre des titres, des photos, des descriptions et d'autres choses lors de l'envoi du lien.

""")