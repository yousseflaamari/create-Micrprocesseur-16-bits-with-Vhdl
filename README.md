# create-Micrprocesseur-16-bits-with-Vhdl
## Objectif du projet :
Concevoir et simuler un processeur 14 bits basé sur une architecture simple en utilisant VHDL.
## INTRODUCTION :
Lors de la conception d'un processeur 14 bits basé sur une architecture simple en utilisant VHDL, plusieurs composantes clés sont utilisées, notamment le Program Counter (compteur de programme), la mémoire, l'ALU (unité arithmétique et logique), les registres, la valeur du mutex et l'unité de contrôle. Dans cette introduction, nous allons définir le langage VHDL et passer en revue ces différentes composantes.
Le VHDL (VHSIC Hardware Description Language) est un langage de description matériel utilisé pour concevoir et simuler des circuits numériques. Il offre la possibilité de spécifier le comportement, la structure et les propriétés temporelles des circuits. Le VHDL permet de créer des modèles abstraits du matériel et de simuler leur fonctionnement avant de les mettre en œuvre physiquement.
Maintenant, passons en revue les différentes composantes utilisées dans la conception d'un processeur 14 bits en utilisant VHDL :


### 1 ) Program Counter (Compteur de programme) :
Le Program Counter est un registre spécial qui stocke l'adresse de l'instruction en cours d'exécution dans le processeur. Il est utilisé pour accéder à l'instruction suivante dans la mémoire.
### 2 ) Mémoire : La mémoire est utilisée pour stocker les instructions et les données nécessaires au fonctionnement du processeur. Dans ce cas, une mémoire de 14 bits est utilisée pour stocker les instructions du programme et les données temporaires.
### 3 ) ALU (Unité arithmétique et logique) : L'ALU est responsable de l'exécution des opérations arithmétiques et logiques telles que l'addition, la soustraction, la multiplication, la division et les opérations logiques (ET, OU, NON, etc.) sur les données du processeur.
### 4 ) Registres : Les registres sont utilisés pour stocker temporairement les données et les résultats des opérations. Dans ce processeur, des registres de 14 bits peuvent être utilisés pour stocker les données en cours de traitement.
### 5 ) Valeur du mutex : La valeur du mutex est un indicateur utilisé pour synchroniser l'accès à certaines ressources partagées dans le processeur. Elle peut être utilisée pour éviter les problèmes de concurrence lors de l'accès à des données partagées entre différentes parties du processeur.
### 6 ) Unité de contrôle : L'unité de contrôle est responsable de la séquence d'opérations exécutées par le processeur. Elle décode les instructions et génère les signaux de contrôle nécessaires pour coordonner les différentes composantes du processeur.
En combinant ces différentes composantes dans une architecture cohérente, il est possible de concevoir et de simuler un processeur 14 bits basé sur une architecture simple en utilisant VHDL. Le langage VHDL permet de décrire le comportement et les interactions entre ces composantes, ainsi que de simuler le fonctionnement du processeur pour vérifier sa fonctionnalité avant sa mise en production.



