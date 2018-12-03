# Travail pratique 2

## Identification

- Cours      : Utilisation et administration des systèmes informatiques
- Sigle      : INF1070
- Session    : Automne 2018
- Groupe     : 20
- Enseignant : Jean Privat
- Auteur     : David Boutet (BOUD31109107)
- Auteur     : Maxime Nicol (NICM18019305)



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

### État de l'exercice: résolu 

La solution de l'exercise se trouve dans le dossier `tops/`

Le script affiche à l'écran les quatres processus les plus gourmant, selon quatre critères différents.

La commande `ps` est utilisé afin d'afficher les processus. L'option `-e` est utilisé afin d'afficher tous les processus et l'option `-o` est utilisé afin de pouvoir spécifier le format désiré, soit `user,pid,pcpu,pmem,vsz,time,comm`. L'option `--sort` est utilisé afin de pouvoir classer les résultat selon le critère voulu. Par exemple `--sort=-pcpu` pour le % de CPU utilisé.

Les commandes `head -2` et `tail -1` sont ensuite utilisée afin d'uniquement afficher le premier résultat.

Finalement, la commande `echo` est utilisé afin de formater et d'afficher les résultats. L'option `-n` est utilisée afin d'afficher plusieurs éléments sur une même ligne.

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

### État de l'exercice: résolu

La solution de l'exercise se trouve dans le dossier `adn/`

`sh adn`

Ce script analyse le fichier fichier de séquences d'ADN composés des charactères `A`, `C` `G` ou `T` et confirme ou non la présence de certain marqueurs en reconnaissant certains motifs.

La variable `a=$(grep -o 'A' $1 | wc -l)`permet de récupérer le nombre de d'occurences du charactère `A` en utilisant `grep -c` pour afficher seulement toutes les occurences de `A` séparés par un saut de ligne et `wc -l` afin de compter toutes les lignes générés. Le même principe est utlisé afin de compter les charactères `C`,`G` et `T` et stocker le tout en variables.

La variable `cgt=$((c + g + t))` permet d'additionner les variables `c`, `g` et `t` et de stocker le tout.

Le premier `if` utilise le test `[ "$a" -gt "$cgt" ]` afin de vérifier si il y a plus d'occurences du charactère `A` que du sous groupe `[CGT]` et initialise la variable `doma` avec `oui` ou `non` selon le résultat afin de tester le marquer `DOM-A`.

Le deuxième `if` utilise la commande `grep -E` afin de reconnaitre la présence de l'expresion ERE `'(.)\1{5}'` dans le fichier donné en argument `$1` c'est-à-dire de vérifier si un même charactère est répété 6 fois de façon consécutive et initialise la variable `cons6` avec `oui` ou `non` selon le résultat afin de tester le marquer `CONS-6`. `1>/dev/null` redirige la sortie standard afin de ne pas afficher le résultat du `grep`

Le troisième `if` utilise la commande `grep -E` afin de reconnaitre la présence de l'expression ERE `'(.)(.)(.)(.)(.).\5\4\3\2\1'` dans le fichier donné en argument `$1` c'est-à-dire de vérifier la présence d'un palindrome de longueur 11 et initialise la variable `pal11` avec `oui` ou `non` selon le résultat afin de tester le marquer `PAL-11`. `1>/dev/null` redirige la sortie standard afin de ne pas afficher le résultat du `grep`

Le quatrième `if` utilise deux commandes `grep -E` lié par un OU `||` afin de reconnaitre la d'une des deux expressions BRE suivantes :  `'[GTA]C[GTA]C[GTA]C[GTA]C[GTA]C'` et `'C[GTA]C[GTA]C[GTA]C[GTA]C[GTA]'` dans le fichier donné en argument `$1` c'est-à-dire de vérifier la présence d'une alternance entre la lettre C et une lettre différente de C de longueur 10 et initialise la variable `altc10` avec `oui` ou `non` selon le résultat afin de tester le marquer `ALT-C10`. `1>/dev/null` redirige la sortie standard afin de ne pas afficher le résultat du `grep`

Le cinquième `if` utilise la commande `grep -E` afin de reconnaitre la présence de l'expression ERE `'(......).(......).*\1.\2'` dans le fichier donné en argument `$1` c'est-à-dire de vérifier la présence d'un motif de longueur 13 qui se répète plus loin ayant subit seulement une mutation en son centre et initialise la variable `pal11` avec `oui` ou `non` selon le résultat afin de tester le marquer `MUT-13`. `1>/dev/null` redirige la sortie standard afin de ne pas afficher le résultat du `grep`

La commande `echo` est ensuite utilisée à plusieurs reprises afin d'afficher les résultats des différents tests stocké en variables.

## Solution de l'exercice 5

### État de l'exercice: résolu

La solution de l'exercise se trouve dans le dossier `verif/`

`sh verif`

Le script vérifie la présence et le format du document `tp2.md` dans le directoire de remise. Il ne prend aucun argument ou option.

Les variables `oui` et `non` représentent les résultats possibles des différentes validations et serviront à son affichage.

Le premier `if` utilise un test `[-e]` avec en argument le nom de fichier `Tp2.md`afin des s'assurer de la présence du fichier dans le répertoire courant. La variable `fichier` est modifiée selon le résultat.

La variable `tp` utilise un `grep -c` afin de représenter le nombre de titre `# Travail pratique` dans le document.

Le deuxième `if` utilise un test `[-eq]` entre la variable `$tp` et la valeur `1` afin de s'assurer qu'il n'y a qu'un seul titre. La variable `titre` est modifiée selon le résultat.

La variable `section` utilise un `grep -E -m -o` afin de représenter la première occurence de l'expression ERE `"##(.){15}"` dans le fichier `tp2.md`, soit le premier titre de section.

La variable `sectionEx` représente le bon format de la première section.

Le troisième `if` utilise un test `[=]` afin de comparer les deux variables `$section` et `$sectionEx` afin de s'assurer que la première section est bien formatée. La variable `ident` est modifiée selon le résultat.

Le quatrième `if` utilise un `grep -E` afin de reconnaitre l'expression ERE `'^\-\ Groupe\ \ \ \ \ : (2[01]|30)$'` dans le fichier `tp2.md` et ainsi confirmer que le numéro de groupe est `20`,`21` ou `30`. La redirection `1>/dev/null` redirige l'entrée standard afin de ne pas afficher le résultat du `grep`. La variable `groupe` est modifiée selon le résultat.

Le cinquième `if` utilise un `grep -E` afin de reconnaitre l'expression ERE `'^\-\ Enseignant\ :\ (Jean Privat|Alexandre Blondin Massé)$'` dans le fichier `tp2.md` et ainsi confirmer que le nom de l'enseignant est valide. La redirection `1>/dev/null` redirige l'entrée standard afin de ne pas afficher le résultat du `grep`. La variable `prof` est modifiée selon le résultat.

La variable `nbAuteur` utilise un `grep -c -E` afin de représenter la nombre d'occurences de l'expression ERE `'^\-\ Auteur\ \ \ \ \ : .*$'` dans le fichier `tp2.md`, soit le nombre de lignes d'identification des auteurs.

Le sixième `if` utilise deux tests `[-eq]` lié par un ou `||` afin de tester si la variable `nbAuteur` est bien égale à `1` ou `2`. La variable `auteur` est modifiée selon le résultat.

La variable `nbNomCp` utilise un `grep -c -E` afin de représenter la nombre d'occurences de l'expression ERE `'\-\ Auteur\ \ \ \ \ : [[:alpha:]]+\ [[:alpha:]]+\ \([[:upper:]]{4}[[:digit:]]{8}\)'` dans le fichier `tp2.md`, soit le nombre de lignes d'idenfications bien formatées au document.

Le septième `if` utilise un test `[=]` afin de tester si la variable `nbAuteur` est égale à la variable `nbNomCp` afin de tester si toutes les identifications d'auteurs sont bien formatés. La variable `auteur` est modifiée selon le résultat.

La variable `nbSections` utilise un `grep -c` afin de représenter la nombre d'occurences de l'expression ERE `"^## Solution de l'exercice [0-9]$"` dans le fichier `tp2.md`, soit le nombre de sections bien formatés.

Le neuvième `if` utilise un test `[-eq]` afin de tester si la variable `nbSections` est bien égale à 9. La variable `sections` est modifiée selon le résultat.

La variable `nbSSections` utilise un `grep -c` afin de représenter la nombre d'occurences de l'expression ERE `"^### État de l'exercice: \(résolu\|partiellement résolu\|non résolu\)$"` dans le fichier `tp2.md`, soit le nombre de sous-sections bien formatés.

Le dixième `if` utilise un test `[-eq]` afin de tester si la variable `nbSSections` est bien égale à 9. La variable `ssections` est modifiée selon le résultat.

Un heredoc et la commande `cat` sont ensuite utilisés afin d'afficher les résultats.

## Solution de l'exercice 6

### État de l'exercice: résolu

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




