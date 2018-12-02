# Travail pratique 2

## Identification

- Cours      : Utilisation et administration des systèmes informatiques
- Sigle      : INF1070
- Session    : Automne 2018
- Groupe     : 20
- Enseignant : Jean Privat
- Auteur     : David Boutet (BOUD31109107)



## Solution de l'exercice 0

### État de l'exercice: résolu

La solution de l'exercice 0 se trouve dans le script `remise/archiver_tp`.

Pour archiver le travail pratique, on se place à la racine du projet et on
entre la commande

```sh
remise/archiver_tp
```

qui produit l'archive `tp2.tgz`. Ensuite, il suffit de déposer le fichier
`tp2.tgz` sur Moodle!



## Solution de l'exercice 1

### État de l'exercice: résolu, partiellement résolu ou non résolu

Décrire votre solution ici.


## Solution de l'exercice 2

### État de l'exercice: résolu

La solution de l'exercise se trouve dans le dossier `uptime/`

`sh quand`

Ce script affiche a l'ecran depuis quand le systeme roule avec le format DD MMM YY.
`date -d` l'argument est utilise pour lui passer une date precise dans le temps
`uptime -s` l'argument est utilise pour avoir un timestamp provenant de uptime
`%d %b %y` sert a formatter l'affichage de la date


## Solution de l'exercice 3

### État de l'exercice: résolu

La solution de l'exercise se trouve dans le dossier `compresse/`

`sh decompresser`

Ce script decompresse des fichiers de type `gzip, xz, gzip2`

`file -b --mime-type` pour recuperer le mime-type et `-b` pour retirer le nom du fichier au debut de la ligne de retour, cette valeur est garder en memoire dans la variable `filetype`

Le `if elif else` sert a savoir avec quelle type de fichier nous avons affaire.
`gzip -d` `gzip` est l'utilitaire pour le fichier `gzip` et l'argument `-d` sert a decompresser le fichier.
`unxz` sert a decompresser un fichier de type `xz`.
`bzip2 -d` `bzip2` est l'utilitaire pour le fichier de type `bzip2` et l'argument `-d` sert a decompresser le fichier.


## Solution de l'exercice 4

### État de l'exercice: résolu, partiellement résolu ou non résolu

Décrire votre solution ici.



## Solution de l'exercice 5

### État de l'exercice: résolu, partiellement résolu ou non résolu

Décrire votre solution ici.



## Solution de l'exercice 6

### État de l'exercice: résolu, partiellement résolu ou non résolu

Décrire votre solution ici.



## Solution de l'exercice 7

### État de l'exercice: résolu, partiellement résolu ou non résolu

Décrire votre solution ici.



## Solution de l'exercice 8

### État de l'exercice: résolu
La solution de l'exercise se trouve dans le dossier `curl/`

`sh telecharge pdf`

Ce script télécharge toutes les notes de cours sur la page `https://info.uqam.ca/~privat/INF1070/` et les met dans le dossier passé en argument.

`folder="$1"` sert à mettre l'argument 1 dans la variable `folder`
Le if suivant sert à valider le si un argument est passé, sinon un message d'information indique a l'utilisateur que les fichiers seront a la racine du script.
Si l'argument n'est pas vide, le dossier est créer et change de répertoire pour ce dernier.
Par la suite on télécharge la page du cours pour ainsi récupérer seulement les pdf du cours avec un regex qui match seulement ce qui commence par `./` et se termine par `.pdf`, le `sort -u > filesUniq` sert à créer un fichier avec une liste de nom de fichier unique.
Une boucle while sur chaque ligne du fichier filesUniq ainsi qu'un if pour vérifier la présence ou pas du fichier à télécharger.
`${p#??}` est utilisé pour commencer la string 2 caracteres plus loin pour ainsi enlever le `./` du début.
Si le fichier est déja présent, un message affiche que le fichier est déjà téléchargé. Dans le cas contraire, un message indique que le fichier se télécharge. La commande `curl` est utilisée avec les arguments `-O -J` pour conservé le nom du fichier et `-s` pour etre en mode silencieux, n'affiche pas la progression.




