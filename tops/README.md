# Processus gourmands

Écrivez un script nommé `tops` qui affiche des informations sur les processus
qui sont les plus gourmands en ressource, si on se concentre sur les
statistiques suivantes:

- Le pourcentage du temps de calcul de processeur utilisé (`%CPU`)
- La taille de la mémoire virtuelle (`VSZ`)
- Le pourcentage de mémoire résidente utilisée (`%MEM`)
- Le temps total de processeur utilisé (`TIME`)

Les informations qui doivent être affichées sont les suivantes:

- Le type de ressource (colonne `TOP`)
- L'utilisateur associé au processus (colonne `USER`)
- L'identifiant du processus (colonne `PID`)
- Le pourcentage du temps de calcul (colonne `%CPU`)
- Le pourcentage de mémoire résidente (colonne `%MEM`)
- La taille de la mémoire virtuelle (colonne `VSZ`)
- Le temps CPU total (colonne `TIME`)
- La commande associée au processus (colonne `COMMAND`)

## Exemple d'utilisation

Par exemple, la commande

```sh
./tops
```

affiche

```sh
TOP   USER       PID %CPU %MEM    VSZ     TIME COMMAND
%CPU: ablondin 25049  4.4  4.4 1290292 00:08:30 chrome
VSZ:  ablondin 19088  0.0  1.6 1074225880 00:08:35 ghc
%MEM: ablondin  1485  1.6  9.1 4264488 16:52:40 gnome-shell
TIME: ablondin  1485  1.6  9.1 4264488 16:52:40 gnome-shell
```

Ceci signifie donc que le processus

- `chrome` est celui qui consomme le plus grand pourcentage CPU
- `ghc` est celui qui utilise la plus grand mémoire virtuelle
- `gnome-shell` est celui qui utilise le plus grand pourcentage de mémoire
  résidente
- `gnome-shell` est celui qui a utilisé le plus de temps CPU

## Contraintes

Les seules commandes permises sont

- `echo`
- `ps`
- `head`
- `tail`

# Aide

- L'option `-n` de la commande `echo` permet d'afficher une chaîne sans
  changement de ligne
- Les options `-e`, `-o` et `--sort` de la commande `ps` pourraient vous être
  utiles.
