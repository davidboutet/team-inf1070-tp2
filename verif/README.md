# Validation de la remise

Écrivez un script `verif` qui vérifie si la remise de votre travail pratique
est conforme.

## Éléments à valider

Le script doit valider les éléments suivants:

1. Il doit s'assurer que le fichier `tp2.md` existe
2. Il n'y a qu'un seul titre (`#`) nommé `Travail pratique 2`
3. La première section (`##`) est nommée `Identification`
4. Les seuls groupes possibles sont les groupes `20`, `21` et `30`
5. Les seuls enseignants possibles sont `Jean Privat` et
   `Alexandre Blondin Massé`
6. Les auteurs sont de la forme `Nom (CP)`, où `Nom` est une suite de
   caractères quelconques et `CP` est de la forme `LLLLCCCCCCCC` (`L` = lettre
   majuscule, `C` = chiffre)
7. Il y a au moins 1 auteur et au plus 2 auteurs
8. Il y a 9 sections (`##`) de la forme `Solution de l'exercice <i>`, où `<i>`
   est un nombre
9. Il y a 9 sous-sections (`###`) e la forme `État de l'exercice: <etat>`, où
   `<etat>` vaut `résolu`, `partiellement résolu` ou `non résolu`

### Affichage

Si vous vous situez à la racine de votre projet et que vous entrez la commande

```sh
verif/verif
```

alors vous devriez obtenir le rapport suivant

```
Vérifications effectuées:

[X] Présence du fichier `tp2.md`
[X] Titre conforme
[X] Titre de la section d'identification conforme
[X] Numéro de groupe conforme
[X] Nom de l'enseignant conforme
[X] Identification des auteurs conforme (nom + code permanent)
[X] Nombre d'auteurs est 1 ou 2 (il y en a 2)
[X] Sections de solutions conformes
[X] Sous-sections d'état de l'exercice conformes
```

Un `[X]` indique que le critère est vérifié, alors que `[ ]` indique le
contraire.

## Indices

Les commandes suivantes devraient suffire:

- `echo`
- `cat`
- `grep`
- `test`
- `head`

Aussi, pour l'affichage du rapport, n'hésitez pas à utiliser un document en
ligne (*heredoc*).
