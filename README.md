# Travail pratique 2

## Mises-à-jour

* 25 novembre: Déplacement de la date de remise
* 14 novembre: Première version

## Énoncé

Ce court document contient l'énoncé du travail pratique 2 donné dans le cadre
du cours INF1070 Utilisation et administration des systèmes informatiques au
trimestre d'automne 2018, enseigné par Jean Privat et Alexandre Blondin Massé,
à l'Université du Québec à Montréal. Ce TP est commun aux 3 groupes.

L'objectif du second travail pratique est de vous familiariser avec l'écriture
de scripts Shell en utilisant les différentes commandes Unix vues en classe.

Le travail peut être réalisé **seul** ou en équipe d'au plus **2 étudiants**.

## Travail à réaliser

Vous devez compléter chacun des 8 exercices décrits plus loin (l'exercice 0
étant déjà résolu). Lors de la remise, vous devrez rendre une archive nommée
`tp2.tgz` contenant l'ensemble des fichiers de ce projet.

- Un fichier `tp2.md` (le gabarit est disponible dans ce répertoire) qui
  identifie l'étudiant ou l'équipe d'étudiants qui a réalisé le travail
  pratique, puis qui décrit en détails chacune de vos solutions, ainsi que leur
  état lors de la remise (*résolu*, *partiellement résolu*, *non résolu*).  Ce
  fichier doit respecter le format Markdown.
- Vos huit scripts de solution. Chacun d'entre eux doit se trouver dans le
  répertoire correspondant à la mission.

## Consignes générales

Chacun des scripts que vous fournirez doivent être des scripts Shell ou Bash.
En d'autres termes, les seuls choix permis pour le *shebang* sont `#!/bin/sh`
ou `#!/bin/bash`.

Par ailleurs, ne choisissez Bash que lorsque vous utilisez des bashismes à
l'intérieur de votre script.

## Exercices

Les énoncés des exercices s'obtiennent en suivant les liens ci-bas:

- Exercice 0: [Archivage et compression du travail pratique](./remise)
- Exercice 1: [Processus gourmands](./tops)
- Exercice 2: [Date de dernier démarrage du système](./uptime)
- Exercice 3: [Décompression d'une archive](./compresse)
- Exercice 4: [Statistiques d'une séquence d'ADN](./adn)
- Exercice 5: [Validation du travail pratique](./verif)
- Exercice 6: [Génération de graphiques sur `mtime`](./stats)
- Exercice 7: [Génération de pdf](./debug)
- Exercice 8: [Téléchargement des diapositives du cours](./curl)

## Modalités de remise

Votre travail doit être remis au plus tard le **13 décembre 2018** à **23h55**
par l'intermédiaire de la plateforme [Moodle](https://www.moodle.uqam.ca).
Vous ne devez remettre qu'un seul fichier nommé exactement `tp2.tgz`.  Une
pénalité de **2 points** par heure de retard sera appliquée.  Notez que vous
pouvez faire autant de dépôt que vous le souhaitez, seule la dernière version
sera prise en considération.

**Aucune remise par courriel ne sera acceptée**, peu importe le motif. Plus
précisément, si vous envoyez votre travail par courriel, il sera considéré
comme non remis. Il est donc de votre responsabilité de vous assurer d'être
capable de faire une remise par l'intermédiaire de Moodle quelques jours avant
la remise.

Si vous êtes en équipe de deux, un seul des deux étudiants doit effectuer la
remise.

## Le format Markdown

Le gabarit `tp2.md` que vous allez remettre doit respecter le format Markdown,
qui est un format texte à balisage léger. Le site officiel qui décrit ce format
se trouve [ici](https://daringfireball.net/projects/markdown/).

## Barème de correction

Les points suivants seront considérés lors de l'évaluation:

- Votre travail sera calculé sur un total de **100 points**.
- Chacun des exercices compte pour **10 points** (il y a 8 exercices à
  compléter).
- La qualité de la remise compte pour **20 points**. Elle inclut notamment
  celle du fichier Markdown remis, la qualité du français, le soin apporté au
  format de fichier, mais également celle des scripts eux-mêmes.
- Tel que mentionné plus haut, une pénalité de **2 points** par heure de retard
  sera appliquée.

L'élégance et la simplicité des solutions fonctionnelles seront prises en compte
dans la notation. Des solutions inutilement complexes pourront être en partie
pénalisées. Des points *boni* pourront être attribués à des solutions
particulièrement élégantes.