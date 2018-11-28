# Génération de pdf

Le programme `debug` prend un ensemble de fichiers Markdown en argument et les
convertit en pdf.  Les fichier pdf sont générés dans le même répertoire et sous
le même nom que les fichiers Markdown originaux mais avec une extension `.pdf`
(qui remplace l'extension `.md` si elle existe).

## Exemple d'utilisation

Les commandes suivantes se comportent comme on s'y attend:

```sh
$ ls *bon.md
test1.bon.md  test2.bon.md
$ ./debug *bon.md
$ ls *bon*
test1.bon.md  test1.bon.pdf  test2.bon.md  test2.bon.pdf
```

Par contre, `debug` fonctionne parfois mal. Par exemple les deux commandes
suivantes affichent des messages d'erreur bizarres:

```sh
$ ./debug *brute.md
$ ./debug *truand.md
```

Et la commande suivante ne crée pas les pdf dans les bons répertoires:

```sh
$ ./debug */test.md
```

## Objectif

Vous devez déboguer le programme pour qu'il fonctionne de façon conforme à sa
spécification, décrite dans le premier paragraphe.

Pour chaque bogue que vous trouvez dans le script `debug`, vous devez

1. expliquer la nature du bogue et ses conséquences néfastes
2. proposer une correction justifiée

## Note

L'objectif ici n'est pas de réécrire une version qui fonctionne de zéro mais
d'identifier et de corriger les bogues existants.
