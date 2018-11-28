# Statistiques d'une séquence d'ADN

Dans cette question, vous devez créer un script nommé `adn` qui affiche des
statistiques sur une séquence d'ADN fournie dans un fichier. Cette séquence est
une suite de lettres `A`, `C`, `G`, `T`.

Les statistiques qui nous intéressent sont les suivantes.

## Le nombre d'occurrences de chaque lettre

Vous devez afficher le nombre d'occurrences de chacune des 4 lettres. Par
exemple, le fichier `adn1.txt` devrait retourner les fréquences suivantes:

```sh
Nombre de A: 236
Nombre de C: 264
Nombre de G: 255
Nombre de T: 245
```

## La présence de marqueurs

En plus du nombre de lettres, nous nous intéressons à la présence de certains
motifs qu'on appelle *marqueurs*, qui augmentent la probabilité que l'organisme
propriétaire de la séquence d'ADN soit atteint de certaines maladies.

Les marqueurs qui nous intéressent sont les suivants:

- `DOM-A` : si le nombre de `A` est strictement plus grand que la somme du
  nombre de `C`, de `G` et de `T` réunis.
- `CONS-6` : s'il existe au moins une lettre qui se répète 6 fois de façon
  consécutive, par exemple `AAAAAA`.
- `PAL-11`: s'il y a présence d'un palindrome de longueur 11. Un palindrome est
  un mot qui est égal à son image miroir, par exemple `ACTCA` ou `AGGCTTTCGGA`.
- `ALT-C10` : s'il y a présence d'un mot formé d'une alternance entre la lettre
  `C` et une lettre différente de `C` de longueur 10. Par exemple, les mots
  `CACGCACTCGCGCACT` et `GCTCACTCACGCACAC`.
- `MUT-13` : s'il y a présence d'un motif de longueur 13 qui se répète plus
  loin, ayant subi au plus une mutation en son centre.
  Par exemple, `ACGAATTGCAGCCACAGTACGAATCGCAGCC` est un motif qui indique la
  présence du marqueur `MUT-13` puisqu'il commence par `ACGAATTGCAGCC` et
  termine par `ACGAATCGCAGCC` (le deuxième mot ne diffère du premier qu'en sa
  lettre centrale)

## Contenu du rapport

Lorsque vous aurez terminé, on s'attend à ce que la commande

```sh
./adn adn1.txt; ./adn adn2.txt; ./adn adn3.txt; ./adn adn4.txt; ./adn adn5.txt
```

affiche le résultat suivant

```sh
Nombre de A: 236
Nombre de C: 264
Nombre de G: 255
Nombre de T: 245
Présence du marqueur DOM-A:   non
Présence du marqueur CONS-6:  non
Présence du marqueur PAL-11:  non
Présence du marqueur ALT-C10: non
Présence du marqueur MUT-13:  non
Nombre de A: 540
Nombre de C: 178
Nombre de G: 134
Nombre de T: 148
Présence du marqueur DOM-A:   oui
Présence du marqueur CONS-6:  oui
Présence du marqueur PAL-11:  oui
Présence du marqueur ALT-C10: non
Présence du marqueur MUT-13:  oui
Nombre de A: 521
Nombre de C: 147
Nombre de G: 175
Nombre de T: 157
Présence du marqueur DOM-A:   oui
Présence du marqueur CONS-6:  oui
Présence du marqueur PAL-11:  oui
Présence du marqueur ALT-C10: non
Présence du marqueur MUT-13:  oui
Nombre de A: 255
Nombre de C: 237
Nombre de G: 254
Nombre de T: 254
Présence du marqueur DOM-A:   non
Présence du marqueur CONS-6:  oui
Présence du marqueur PAL-11:  oui
Présence du marqueur ALT-C10: oui
Présence du marqueur MUT-13:  non
Nombre de A: 248
Nombre de C: 239
Nombre de G: 247
Nombre de T: 266
Présence du marqueur DOM-A:   non
Présence du marqueur CONS-6:  non
Présence du marqueur PAL-11:  oui
Présence du marqueur ALT-C10: non
Présence du marqueur MUT-13:  non
```

## Contraintes

Les seules commandes que vous pouvez appeler dans votre solution sont les
suivantes:

- `echo`
- `wc`
- `grep`
