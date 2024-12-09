# Unity Care Clinic - Conception de la Base de Données et Documentation SQL/ERD

Ce projet se concentre sur la conception et l'implémentation d'un système de gestion de base de données pour Unity Care Clinic. Il a pour objectif de gérer les données de l'hôpital telles que les départements, les médecins, les patients, les admissions, les rendez-vous et plus encore, à travers une structure de base de données efficace, sécurisée et évolutive.

## Table des Matières

1. [Vue d'ensemble du projet](#vue-densemble-du-projet)
2. [Technologies Utilisées](#technologies-utilisées)
3. [Structure des Dossiers](#structure-des-dossiers)
4. [Installation et Configuration](#installation-et-configuration)
5. [Utilisation](#utilisation)
6. [Diagramme ERD](#diagramme-erd)

## Vue d'ensemble du projet

Unity Care Clinic a pour objectif de concevoir une base de données relationnelle pour gérer les opérations hospitalières. La base de données doit soutenir différentes fonctionnalités telles que :
- Gestion des patients et des médecins
- Planification des rendez-vous
- Gestion des départements
- Gestion des prescriptions, admissions et dossiers médicaux

Ce projet inclut la conception du schéma de la base de données, l'écriture des requêtes SQL, ainsi que l'optimisation de la sécurité et des performances.

## Technologies Utilisées

- **MySQL** pour le système de gestion de base de données.
- **Git** pour le contrôle de version.
- **Outils ERD** (par exemple, dbdiagram.io, Lucidchart) pour la création des diagrammes de la base de données.

## Structure des Dossiers
``` bash
/racine-du-projet
│
├── /sql
│   ├── create_tables.sql       # Script SQL pour créer les tables de la base de données
│   ├── insert_data.sql         # Script SQL pour insérer des données d'exemple       
│   └── queries.sql         # Requêtes SQL pour les opérations sur la base de données (CRUD)
│
├── /erd
│   └── hospital_management_erd.png  # Diagramme ERD montrant la structure de la base de données
│
├──                    
└── README.md           # Documentation du projet (ce fichier)
```

## Installation et Configuration

1. **Cloner le repository** :
```bash
   git clone https://github.com/ka-amina/Hospital-Management-Database-Design.git
   cd .\Hospital-Management-Database-Design\
```
2. **Installer MySQL** :
 Assurez-vous que MySQL est installé sur votre machine locale ou utilisez un service MySQL en ligne.
3. **Créer la base de données** :
  Exécutez le script create_tables.sql pour créer les tables nécessaires dans votre base de données.
 ``` bash
   /sql/create_tables.sql
```
4. **Insérer des données d'exemple** :
 Si vous souhaitez peupler la base de données avec des données d'exemple, exécutez le script insert_data.sql.
``` bash
  /sql/insert_data.sql;
```
5. **Exécuter des requêtes :**
 Vous pouvez maintenant exécuter des requêtes depuis le fichier queries.sql ou créer vos propres requêtes selon vos besoins.
# Utilisation

# Diagramme ERD
Le Diagramme Entité-Relation (ERD) fournit une représentation visuelle du schéma de la base de données. Il illustre comment les entités comme patients, médecins, départements, et rendez-vous sont liées entre elles.

Vous pouvez trouver le diagramme ERD dans le dossier /erd sous le nom hospital_management_erd.png.