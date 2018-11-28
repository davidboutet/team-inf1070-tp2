# Décompression de fichiers

Écrivez un script nommé `decompresser` qui permet de décompresser un fichier
compressé. Vous devez reconnaître les trois formats vus en classe (`gz`, `xz`
et `bz2`). Si le fichier considéré ne correspond pas à un de ces trois formats,
un message en conséquence doit être affiché.

Par exemple, on s'attend à ce que les commandes

```sh
./decompresser extrait1.txt.gz
./decompresser extrait2.txt.xz
./decompresser extrait3.txt.bz2
./decompresser extrait4
```

produisent des fichiers non compressés `extrait1.txt`, `extrait2.txt`,
`extrait3.txt` et `extrait4.txt` (noter que dans le dernier cas, l'extension
peut être différente).

Et que la commande

```sh
./decompresser README.md
```

affiche

```
Impossible de décompresser le fichier: format non reconnu
```

puisque `README.md` n'est pas un fichier compressé.

## Remarques

* Votre solution doit être générale, c'est-à-dire qu'elle ne doit pas uniquement
  se baser sur l'extension du fichier.
* Le fichier original doit être conservé. Autrement dit, votre script doit
  produire un nouveau fichier et conserver l'ancien.

## Aide

La commande `file` vous sera utile. Étudiez bien ses options.

En shell, il est possible d'utiliser des structures conditionnelle à l'aide des
mots réservés `if`, `elif`, `else` et `fi`. Par exemple:

```sh
fruit=pomme
if [ "$fruit" = banane ]; then
    echo "Je suis une banane"
elif [ "$fruit" = pomme ]; then
    echo "Je suis une pomme"
else
    echo "Je ne suis ni une banane ni une pomme"
fi
```
