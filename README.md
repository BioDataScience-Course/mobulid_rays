Modélisation de la masse de raie à partir de la largeur du disque.
================

<!--- DO NOT EDIT README.MD. EDIT ONLY README.RMD ----->

## Contexte

Rambahiniarison et son équipe (2018) ont étudié différents espèces de
raies : *Mobula thurstoni*, *Mobula japanica*, *Mobula tarapacana*, et
*Manta birostris*.

*Pour en apprendre d’avantages, utilisez la référence présente dans la
bibliographie.*

Ces chercheurs ont décidé de mettre à dispositon les données relatives à
cette recherche. Ils ont utilisé la plateforme
[DRYAD](https://datadryad.org). Les données ont un D.O.I. et sont
disponible via l’URL suivant <https://doi.org/10.5061/dryad.f3bm7>.

Les données brutes se trouve `data/raw`. Ces données sont les données
brutes proposées par DRYAD. Les données de travail conseillés se nomme
`data/growth.rds`. Ce jeu de données est obtenu avec le script R
`dataset.R`

## Objectifs

Utilisez les outils de modélisation afin de modéliser la masse de
*Mobula thurstoni* en fonction de la largeur du disque.

La figure ci-dessus présente la masse de *Mobula thurstoni* en fonction
de la largeur du disque.

``` r
read("data/growth.rds") %>.%
  chart(., body_weight ~ dw) +
  geom_point() +
  labs(y = "Masse", x = "Largeur du disque")
```

![Variation de la masse en fonction de la largeur du disque de *M.
thurstoni* (n=1958).](README_files/figure-gfm/unnamed-chunk-1-1.png)

Utilisez les outils du module 1 à 4 du cours en ligne
<http://biodatascience-course.sciviews.org/sdd-umons2/>

## Consignes

Proposez un projet portable dont l’ensemble des fichiers sont
exécutables. L’ensemble de ces fichiers doit être organisé. Soyez
attentif à donner des noms corrects à vos fichiers.

Ce projet doit contenir au minimum 2 fichiers dont un carnet de notes
(**growth\_notes.Rmd**) et un rapport scientifique
(**growth\_reports.Rmd**).

### Carnet de notes

Le carnet de notes doit débuter par une mise en contexte du carnet de
notes. Chaque carnet de notes doit débuter par une mise en contexte qui
explique l’objectif de ce dernier. Le carnet de notes contient
l’ensemble des réflexions sur une thématique précise.

Ce carnet de notes doit comprendre une section pour chaque module
utilisées du cours.

### Rapport scientifique

Le rapport scientifique ne comprend que l’information la plus
pertinente. Ce rapport doit être synthétique et reprendre les analyses
les plus utiles du carnet de notes.

Le rapport scientifique doit être compréhensible sans devoir lire le
carnet de notes.

La section introduction doit comprendre une description sur l’espèce
d’intérêt et le contexte de l’expérience.

Le rapport doit comprendre un but court qui résume la question de
recherche de ce rapport scientifique.

Le rapport doit comprendre un matériel et méthode complet. Un M\&M
complet comprend une explication sur les données. Il doit également
comprendre une description des techniques statistiques employées dans ce
rapport. Enfin, il doit comprendre une description des outils et des
versions de ces derniers.

La section résultat de votre rapport scientifique doit comprendre des
graphiques, des tableaux et un/des modèle(s) sélectionné(s)
judicieusement. Ils doivent être décrits dans la section résultat. Les
résultats doivent être uniquement décrits.

La section discussion doit comprendre une discussion de vos résultats.
Ne confondez pas la description et la discussion de vos analyses.

Utilisez la grille d’évaluation pour vous assurer que votre projet est
complet.

## Notes

<img src="figures/biodatascience.png" width="75" height="50" align="right"/>
Ce projet entre dans le cadre des cours de sciences des données
biologiques.

Pour en apprendre plus, visitez : <https://www.sciviews.org/course/>

-----

<img src="figures/site-title.png" width="130" height="50" align="left"/>
Ce projet a été élaboré avec la SciViews Box 2019.

Pour en apprendre plus, visitez : <http://www.sciviews.org>

-----

## Bibliographie

<div id="refs" class="references">

<div id="ref-2018rambahiniarison">

Rambahiniarison, Joshua M., Mary Jane Lamoste, Christoph A. Rohner, Ryan
Murray, Sally Snow, Jessica Labaja, Gonzalo Araujo, and Alessandro
Ponzo. 2018. “Life History, Growth, and Reproductive Biology of Four
Mobulid Species in the Bohol Sea, Philippines.” *Frontiers in Marine
Science* 5: 269. <https://doi.org/10.3389/fmars.2018.00269>.

</div>

</div>
