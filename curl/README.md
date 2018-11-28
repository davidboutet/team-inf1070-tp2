# Téléchargement des diapositives du cours

Dans cette question, vous devez créer un script nommé `telecharge` qui
télécharge toutes les diapositives du cours INF1070 sur le site
https://info.uqam.ca/~privat/INF1070/ et les place dans un répertoire spécifié
en argument.

Par ailleurs, si une ressource a déjà été téléchargée, il ne faut pas la
télécharger à nouveau. Dans tous les cas, un affichage est fait sur la sortie
standard pour indiquer ce qui a été téléchargé ou ce qui était déjà téléchargé.

## Comportement attendu

On s'attend à ce que la commande

```sh
./telecharge pdf
```

télécharge les diapositives du cours et les place dans le répertoire `pdf`,
puis affiche la progression du téléchargement de la façon suivante:

```sh
Téléchargement de https://info.uqam.ca/~privat/INF1070/./06a-script.pdf
Téléchargement de https://info.uqam.ca/~privat/INF1070/./05-processus.pdf
Téléchargement de https://info.uqam.ca/~privat/INF1070/./04b-regex.pdf
Téléchargement de https://info.uqam.ca/~privat/INF1070/./03b-fichiers-solution.pdf
Téléchargement de https://info.uqam.ca/~privat/INF1070/./04a-regex.pdf
Téléchargement de https://info.uqam.ca/~privat/INF1070/./03d-fichiers.pdf
Téléchargement de https://info.uqam.ca/~privat/INF1070/./03c-fichiers.pdf
Téléchargement de https://info.uqam.ca/~privat/INF1070/./03b-fichiers.pdf
Téléchargement de https://info.uqam.ca/~privat/INF1070/./03a-fichiers.pdf
Téléchargement de https://info.uqam.ca/~privat/INF1070/./02-shell.pdf
Téléchargement de https://info.uqam.ca/~privat/INF1070/./01-intro.pdf
Le fichier https://info.uqam.ca/~privat/INF1070/./01-intro.pdf a déjà été téléchargé
Le fichier https://info.uqam.ca/~privat/INF1070/./02-shell.pdf a déjà été téléchargé
Le fichier https://info.uqam.ca/~privat/INF1070/./03a-fichiers.pdf a déjà été téléchargé
Le fichier https://info.uqam.ca/~privat/INF1070/./03b-fichiers.pdf a déjà été téléchargé
Le fichier https://info.uqam.ca/~privat/INF1070/./03b-fichiers-solution.pdf a déjà été téléchargé
Le fichier https://info.uqam.ca/~privat/INF1070/./03c-fichiers.pdf a déjà été téléchargé
Le fichier https://info.uqam.ca/~privat/INF1070/./03d-fichiers.pdf a déjà été téléchargé
Le fichier https://info.uqam.ca/~privat/INF1070/./04a-regex.pdf a déjà été téléchargé
Le fichier https://info.uqam.ca/~privat/INF1070/./04b-regex.pdf a déjà été téléchargé
Le fichier https://info.uqam.ca/~privat/INF1070/./05-processus.pdf a déjà été téléchargé
Le fichier https://info.uqam.ca/~privat/INF1070/./06a-script.pdf a déjà été téléchargé
```

## Contraintes

Les seules commandes que vous pouvez appeler dans votre solution sont les
suivantes:

- `curl`
- `mkdir`
- `sed`
- `echo`
