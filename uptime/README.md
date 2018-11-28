# Date de dernier démarrage du système

Écrivez un script nommé `quand` qui affiche une phrase indiquant depuis quand
le système tourne. Par exemple, on s'attend à ce que la commande

```sh
./quand
```

affiche la phrase.

```sh
Le système tourne depuis le DD MMM YY
```

où `DD` est le jour, `MMM` sont les trois lettres qui désignent le mois et `YY`
les deux derniers chiffres de l'année.

Par exemple, on pourrait obtenir
```sh
Le système tourne depuis le 02 Oct 18
```

## Contraintes

- Seules les commandes `uptime` et `date` sont permises
- Le programme doit tenir en 2 lignes: la première ligne pour le *shebang* et
  la seconde pour la commande principale
- Vous ne pouvez utiliser ni `|`, ni `;`

## Remarque

Vous n'avez pas à vous soucier de la langue pour les trois lettres qui
identifien le mois. Par exemple, `Feb` est acceptable pour représenter le mois
de février.
