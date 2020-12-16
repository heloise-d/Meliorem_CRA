# Meliorem : Application web de Compte Rendu d'Activité

## Manuel d'installation
- [Pré-requis](#pré-requis)
- [Installation](#installation)
  * [Installer la Base de données](#Installer-la-Base-de-données)
  * [Configurer le projet](#Configurer-le-projet)
- [Execution](#execution)

## Pré-requis

Vous devez avoir installé au préalable Visual Studio et Microsoft SQL Server Management Studio.

[Télécharger et installer Visual Studio](https://visualstudio.microsoft.com/fr/)
[Télécharger et installer Microsoft SQL Server Management Studio](https://docs.microsoft.com/fr-fr/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver15)

Vous devez utiliser un ordinateur qui dispose du système d'exploitation **Microsoft Windows**.


## Installation
Télécharger le code source avec git : 
```text
git clone https://github.com/heloise-d/ApplicationCRA
```

### Installer la Base de données

Placez-vous au niveau de la racine du projet, et ouvrez le dossier nommé "DataBase". Trois fichiers s'y trouvent :
- **create_BDD.sql** : permet la création de la Base de données nommée "CRA_BDD"
- **create_table.sql** : permet la création des tables faisant parties de la Base de données
- **insert.sql** : permet d'insérer des jeux de données tests dans la Base de données

#### Créer la base de données :
Lancez Microsoft SQL Server Management Studio. Dans l'Explorateur d'objets, connectez-vous à une instance du Moteur de base de données SQL Server.
Pour créer la Base de données, vous avez 2 possibilités :
- Soit vous créez manuellement une Base de données nommée "CRA_BDD" : dans Microsoft SQL Server Management Studio, cliquez avec le bouton droit sur **Bases de données**, puis cliquez sur **Nouvelle base de données**. Dans **Nouvelle base de données**, entrez le nom suivant : **CRA_BDD** puis validez.
- Soit vous utilisez le fichier **create_BDD.sql** fourni : ouvrez le fichier **create_BDD.sql** avec un éditeur de texte (ex : Sublime Text, Visual Studio, gedit). Au niveau de la ligne 8 et 10, modifiez les 2 **"[NameUser]"** par votre nom d'utilisateur sur votre PC. Pour connaître votre nom d'utilisateur, naviguez dans un Explorateur de fichiers de votre PC, et allez à la localisation suivante : **C:\Users\***. Cliquez sur l'utilisateur et copiez le chemin qui a été généré dans votre Explorateur de fichiers. Collez-ce chemin à la place de **C:\Users\[NameUser]** dans le fichier **create_BDD.sql**. Ensuite dans Microsoft SQL Server Management Studio, cliquez sur **Nouvelle requête** et collez l'entièreté du fichier **create_BDD.sql** que vous avez modifié dans la fenêtre qui est apparu dans le logiciel. Cliquez sur **Executer** pour éxecuter la requête et créer la base de données.

#### Créer les tables de la base de données :
Ensuite, suivez les instructions suivantes pour créer les tables de la base de données : dans Microsoft SQL Server Management Studio, cliquez sur **Nouvelle requête** et collez l'entièreté du fichier **create_table.sql** dans la fenêtre qui est apparu. Cliquez ensuite sur **Executer** pour éxecuter la requête et créer les tables constituants la base de données.

#### Insérer les jeux de données tests dans la base de données :
Enfin, suivez les instructions suivantes pour insérer des jeux de données tests dans la base de données : dans Microsoft SQL Server Management Studio, cliquez sur **Nouvelle requête** et collez l'entièreté du fichier **insert.sql** dans la fenêtre qui est apparu. Cliquez ensuite sur **Executer** pour éxecuter la requête et insérer les jeux de données.


### Configurer le projet

Lancez Visual Studio. Cliquez sur **Ouvrir un projet ou une solution**. Dans l'explorateur de fichiers qui apparaît, allez au niveau de la racine du projet, et ouvez le dossier nommé **"Meliorem"**. Sélectionnez ensuite **Meliorem.sln** et cliquez sur **Ouvrir**. Une nouvelle fenêtre apparaît contenant le projet. 

Dans Visual Studio, ouvez le fichier nommé **Web.config**. Entre les balises **\<connectionStrings>**, allez au niveau de "**data source =**" (ligne 53), et modifiez **LAPTOP-C76HCSIQ\MSSQLSERVER_CRA** par le nom de votre serveur contenant la base de données.
Pour connaître le nom de votre serveur, lancez Microsoft SQL Server Management Studio. Une fenêtre **Se connecter au serveur** apparaît. Au niveau de **Nom du serveur**, copiez le nom du serveur contenant la base de données **CRA_BDD** préalablement créée (Voir précedemment "[Installer la base de données](#Installer-la-Base-de-données)"). Collez-le à la place de **LAPTOP-C76HCSIQ\MSSQLSERVER_CRA** dans le fichier Web.config


## Execution
Dans Visual Studio en ayant au préalable ouvert le projet (Voir précedemment "[Configurer le projet](#configurer-le-projet)"), cliquez sur le bouton **IIS Express** afin de lancer l'application.


