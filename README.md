# create-Micrprocesseur-16-bits-with-Vhdl
## Objectif du projet :
Concevoir et simuler un processeur 14 bits basé sur une architecture simple en utilisant VHDL.
## INTRODUCTION :
Lors de la conception d'un processeur 14 bits basé sur une architecture simple en utilisant VHDL, plusieurs composantes clés sont utilisées, notamment le Program Counter (compteur de programme), la mémoire, l'ALU (unité arithmétique et logique), les registres, la valeur du mutex et l'unité de contrôle. Dans cette introduction, nous allons définir le langage VHDL et passer en revue ces différentes composantes.
Le VHDL (VHSIC Hardware Description Language) est un langage de description matériel utilisé pour concevoir et simuler des circuits numériques. Il offre la possibilité de spécifier le comportement, la structure et les propriétés temporelles des circuits. Le VHDL permet de créer des modèles abstraits du matériel et de simuler leur fonctionnement avant de les mettre en œuvre physiquement.
Maintenant, passons en revue les différentes composantes utilisées dans la conception d'un processeur 14 bits en utilisant VHDL :


### 1 ) Program Counter (Compteur de programme) :
Le Program Counter est un registre spécial qui stocke l'adresse de l'instruction en cours d'exécution dans le processeur. Il est utilisé pour accéder à l'instruction suivante dans la mémoire.
### 2 ) Mémoire :
La mémoire est utilisée pour stocker les instructions et les données nécessaires au fonctionnement du processeur. Dans ce cas, une mémoire de 14 bits est utilisée pour stocker les instructions du programme et les données temporaires.
### 3 ) ALU (Unité arithmétique et logique) :
L'ALU est responsable de l'exécution des opérations arithmétiques et logiques telles que l'addition, la soustraction, la multiplication, la division et les opérations logiques (ET, OU, NON, etc.) sur les données du processeur.
### 4 ) Registres : 
Les registres sont utilisés pour stocker temporairement les données et les résultats des opérations. Dans ce processeur, des registres de 14 bits peuvent être utilisés pour stocker les données en cours de traitement.
### 5 ) Valeur du mutex :
La valeur du mutex est un indicateur utilisé pour synchroniser l'accès à certaines ressources partagées dans le processeur. Elle peut être utilisée pour éviter les problèmes de concurrence lors de l'accès à des données partagées entre différentes parties du processeur.
### 6 ) Unité de contrôle : 
L'unité de contrôle est responsable de la séquence d'opérations exécutées par le processeur. Elle décode les instructions et génère les signaux de contrôle nécessaires pour coordonner les différentes composantes du processeur.
En combinant ces différentes composantes dans une architecture cohérente, il est possible de concevoir et de simuler un processeur 14 bits basé sur une architecture simple en utilisant VHDL. Le langage VHDL permet de décrire le comportement et les interactions entre ces composantes, ainsi que de simuler le fonctionnement du processeur pour vérifier sa fonctionnalité avant sa mise en production.

## 1 )  Program Counter ( PC ) .
![image](https://github.com/yousseflaamari/create-Micrprocesseur-16-bits-with-Vhdl/assets/96209336/d2da956f-4957-4cfe-8421-092d67b9fc14)

Le Program Counter (compteur de programme) est une composante essentielle d'un processeur qui permet de gérer la séquence d'exécution des instructions. Il prend en entrée une horloge (clk) qui synchronise son fonctionnement, et il fournit en sortie une adresse d'instruction codée sur 5 bits, également appelée instruction address.
Lorsque le signal d'horloge (clk) change d'état, le Program Counter est déclenché et incrémente sa valeur actuelle pour passer à l'instruction suivante. Il fonctionne comme un compteur, ajoutant 1 à la valeur de l'instruction address à chaque front montant ou descendant de l'horloge, en fonction de la configuration du processeur.
L'instruction address de 5 bits fournie par le Program Counter est utilisée pour accéder à la mémoire du processeur et extraire l'instruction correspondante. Cette adresse est transmise à d'autres composantes du processeur, telles que l'unité de contrôle, qui décode cette instruction et génère les signaux de contrôle appropriés pour les autres composantes.
En résumé, le Program Counter utilise un signal d'horloge pour incrémenter séquentiellement une valeur d'instruction address de 5 bits, fournissant ainsi une adresse à la mémoire pour récupérer les instructions. Cela permet une exécution ordonnée du programme dans le processeur.
## 2 ) Mémoire : 
![image](https://github.com/yousseflaamari/create-Micrprocesseur-16-bits-with-Vhdl/assets/96209336/1d2c4819-e8a7-448e-973d-6a6d91f44579)

La mémoire dans un processeur prend en entrée une instruction address de 5 bits provenant du Program Counter et fournit en sortie l'instruction correspondante codée sur 14 bits.
Lorsque l'instruction address est reçue, la mémoire accède à l'emplacement mémoire correspondant à cette adresse et extrait l'instruction qui y est stockée. L'instruction est ensuite renvoyée en tant que sortie, généralement codée sur 14 bits, pour être utilisée par d'autres composantes du processeur.
En utilisant l'instruction address fournie par le Program Counter, la mémoire assure l'accès séquentiel aux instructions du programme, permettant ainsi leur exécution dans l'ordre correct.
En résumé, la mémoire d'un processeur reçoit une instruction address de 5 bits provenant du Program Counter et renvoie l'instruction correspondante, codée sur 14 bits. Elle joue un rôle essentiel dans le stockage et l'accès aux instructions du programme, permettant ainsi leur exécution dans le processeur.

#### L'instruction en sortie est sous cette forme :
![image](https://github.com/yousseflaamari/create-Micrprocesseur-16-bits-with-Vhdl/assets/96209336/798bf27e-61fa-4527-95ac-22802c5a4016)

## 3) Control Unit :
![image](https://github.com/yousseflaamari/create-Micrprocesseur-16-bits-with-Vhdl/assets/96209336/de6e9383-3683-4fa1-83ad-8b67ff2950a7)


L'unité de contrôle (control unit) dans un processeur reçoit en entrée une instruction codée sur 14 bits et génère plusieurs signaux de contrôle pour coordonner les différentes composantes du processeur. Dans ce cas, l'unité de contrôle génère six sorties : rs_address, rt_address, rd_address, operation, sel (sélecteur pour l'ALU) et value (valeur pour le mutex) lorsqu'une instruction de type "load" est détectée.
L'unité de contrôle est responsable de déterminer les opérations à effectuer en fonction de l'instruction reçue, de sélectionner les registres appropriés et de configurer l'ALU en conséquence. Elle contrôle également l'accès au mutex (si nécessaire) en fournissant la valeur appropriée lorsque l'instruction "load" est détectée.
En résumé, l'unité de contrôle dans un processeur reçoit une instruction codée sur 14 bits et génère plusieurs sorties, y compris les adresses des registres source et de destination, le code de l'opération, les signaux de sélection pour l'ALU, ainsi que la valeur nécessaire pour le mutex lorsqu'une instruction "load" est détectée. Ces sorties sont utilisées pour coordonner les différentes opérations du processeur, notamment l'accès aux registres, l'exécution de l'opération par l'ALU et la gestion du mutex si nécessaire.


## 4) Register :
![image](https://github.com/yousseflaamari/create-Micrprocesseur-16-bits-with-Vhdl/assets/96209336/75b9fb14-d571-4e0f-a4b8-2248339d3ece)

Le registre (register) dans un processeur prend en entrée plusieurs signaux, notamment le signal d'horloge (clk), les adresses rs_addr, rd_addr et rt_addr (sous forme de bits), ainsi que le signal wr_data (donnée à écrire dans le registre). En sortie, on obtient la valeur des registres rs et rd, codée sur 8 bits.
Lorsqu'un front montant ou descendant de l'horloge (clk) est détecté, le registre est déclenché pour effectuer une opération. Les signaux rs_addr, rd_addr et rt_addr fournissent les adresses des registres source et de destination, respectivement. Ces adresses indiquent quel registre doit être utilisé pour l'opération en cours.
Si l'opération est une écriture (écriture d'une donnée dans le registre), le signal wr_data contient la donnée à écrire dans le registre spécifié par l'adresse rd_addr. Le registre enregistre cette donnée et la conserve pour une utilisation ultérieure.
En sortie, le registre fournit la valeur des registres rs et rd, codée sur 8 bits. Cela signifie que la valeur des registres source et de destination est extraite et convertie en une représentation sur 8 bits pour être utilisée par d'autres composantes du processeur notamment l'ALU.
Les registres sont utilisés pour stocker temporairement des données dans le processeur. Ils jouent un rôle important dans l'exécution des opérations et le transfert des données entre différentes étapes du pipeline.
En résumé, le registre dans un processeur reçoit le signal d'horloge, les adresses des registres source et de destination, ainsi que la donnée à écrire. Il stocke la donnée dans le registre approprié et fournit en sortie les valeurs des registres source et de destination, codées sur 8 bits. Cela permet le stockage temporaire des données et le transfert des valeurs entre les différentes composantes du processeur.

## 5) ALU ( Arithmetic Logical Unit ) :

![image](https://github.com/yousseflaamari/create-Micrprocesseur-16-bits-with-Vhdl/assets/96209336/ffb61ae7-e22f-48fe-b18e-59f6aa662fd3)

L'ALU (unité arithmétique et logique) dans un processeur prend en entrée plusieurs signaux, notamment l'opération fournie par l'unité de contrôle, ainsi que les valeurs rs et rt codées sur 8 bits. En sortie, l'ALU fournit la valeur de rd (registre de destination) correspondante, également codée sur 8 bits.
L'opération fournie par l'unité de contrôle indique le type d'opération arithmétique ou logique à effectuer, telle que l'addition, la soustraction, la multiplication, la division, ou encore des opérations logiques comme l'ET, l'OU, etc.
Les valeurs rs et rt représentent les opérandes provenant des registres source spécifiés par l'unité de contrôle. Elles sont codées sur 8 bits et fournissent les données sur lesquelles l'opération sera effectuée.
Lorsque les signaux d'opération, rs et rt sont reçus, l'ALU exécute l'opération demandée en fonction de l'opération spécifiée. Par exemple, pour une addition, l'ALU additionne les valeurs rs et rt. Le résultat de l'opération est ensuite renvoyé en tant que sortie, représentant la valeur de rd, également codée sur 8 bits.
L'ALU est conçue pour effectuer diverses opérations arithmétiques et logiques sur les données du processeur. Elle peut également effectuer des opérations de comparaison, des décalages, des rotations, des opérations logiques bit à bit, et bien d'autres encore.
En résumé, l'ALU dans un processeur reçoit l'opération spécifiée par l'unité de contrôle, ainsi que les valeurs rs et rt provenant des registres source. Elle effectue l'opération demandée, telle que l'addition, la soustraction, ou des opérations logiques, et renvoie la valeur de rd correspondante, codée sur 8 bits. Cela permet d'effectuer des calculs et des opérations sur les données du processeur.

## 6) Valeur du mutex ( mutex_value ) :
 Les différentes opérations :
L'architecture du microprocesseur :
Les fonctionnalités LOAD et NEW :
Simulation :
 




























