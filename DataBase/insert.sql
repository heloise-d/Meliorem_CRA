USE [CRA_BDD]
GO

INSERT INTO [dbo].[UTILISATEUR]
           ([MATRICULE]
           ,[MOTDEPASSE]
           ,[NOM]
           ,[PRENOM]
           ,[ISADMIN])
     VALUES
           ('admin', 'xxxx', 'Admin', 'Admin', 'true'),
		   ('anna.durand', '123456', 'Durand', 'Anna', 'false'),
		   ('pierre.dup', '123456', 'Dupont', 'Pierre', 'false'),
		   ('elsa.r', '123456', 'Ruti', 'Elsa', 'false')


GO


USE [CRA_BDD]
GO

INSERT INTO [dbo].[MISSION]
           ([CODE]
           ,[LIBELLE]
           ,[DATE_DEBUT]
           ,[DATE_FIN]
           ,[ETAT]
           ,[UTILISATEUR_MATRICULE])
     VALUES
	 ('XDP25', 'Dev web', '2020-12-07', '2021-02-07', 'EnCours', 'anna.durand'),
	 ('AFN12', 'Dev mobile', '2020-10-01', '2021-03-30', 'EnCours', 'anna.durand'),
	 ('WXG87', 'Cahier charges', '2020-11-02', '2020-11-22', 'Archivé', 'anna.durand'),
	 ('VBY23', 'Tests unitaires', '2020-11-28', '2020-12-28', 'EnCours', 'anna.durand'),
	 ('AQJ96', 'Analyse', '2020-11-02', '2020-11-22', 'Archivé', 'anna.durand'),
	 ('OIH54', 'Ergonomie', '2020-09-03', '2021-01-03', 'EnCours', 'anna.durand'),
	 ('XCV98', 'Dev IA', '2020-09-10', '2020-12-31', 'EnCours', 'anna.durand'),
	 ('FGH90', 'Maintenance', '2020-12-01', '2020-12-30', 'EnCours', 'anna.durand'),
	 ('TYH76', 'Front-end', '2020-10-01', '2020-12-16', 'Archivé', 'anna.durand'),
	 ('PYD25', 'Dev mobile', '2020-12-05', '2021-01-07', 'EnCours', 'pierre.dup'),
	 ('OUP55', 'Spéc. fonct.', '2020-12-07', '2021-01-07', 'EnCours', 'pierre.dup'),
	 ('5MP5X', 'Ergonomie', '2020-12-07', '2021-01-07', 'EnCours', 'pierre.dup'),
	 ('69X6D', 'Dev IA', '2020-12-07', '2021-01-07', 'EnCours', 'pierre.dup'),
	 ('58XD6', 'Front-end', '2020-12-07', '2021-01-02', 'EnCours', 'pierre.dup'),
	 ('5SSD6', 'Back-end', '2020-12-07', '2021-01-05', 'EnCours', 'pierre.dup'),
	 ('SSSD9', 'Maintenance', '2020-12-07', '2021-01-07', 'EnCours', 'pierre.dup'),	 ('UYT77', 'Reunion', '2020-01-01', '2021-01-01', 'EnCours', 'elsa.r')
      
GO


USE [CRA_BDD]
GO

INSERT INTO [dbo].[MISSIONJOUR]
           ([MISSION_CODE]
           ,[TEMPS_ACCORDE]
           ,[ETAT]
           ,[JOUR])
     VALUES
	 ('VBY23', 0.2, 'Accepté', '2020-12-14'),
	 ('XDP25', 0.3, 'Accepté', '2020-12-14'),
	  ('TYH76', 0.4, 'Refusé', '2020-12-14'),
	 ('OIH54', 0.1, 'Refusé', '2020-12-14'),
	 ('TYH76', 0.5, 'Accepté', '2020-12-15'),
	 ('XDP25', 0.3, 'EnAttenteValidation', '2020-12-16'), 
	 ('OIH54', 0.5, 'EnAttenteValidation', '2020-12-16'), 
	 ('FGH90', 0.2, 'EnAttenteValidation', '2020-12-16'), 
	 ('XDP25', 0.1, 'Sauvegardé', '2020-12-17'),
	 ('XDP25', 0.5, 'Accepté', '2020-12-07'),
	 ('AFN12', 0.3, 'Accepté', '2020-12-07'),
	 ('AFN12', 0.5, 'Accepté', '2020-12-08'),
	 ('OIH54', 0.2, 'Accepté', '2020-12-07'),
	 ('OIH54', 0.2, 'Accepté', '2020-12-08'),
	 ('WXG87', 0.1, 'Accepté', '2020-12-08'),
	 ('AQJ96', 0.1, 'Accepté', '2020-12-08'),
	 ('AQJ96', 0.1, 'Accepté', '2020-12-08'),
	 ('XDP25', 0.3, 'Accepté', '2020-12-09'),
	 ('VBY23', 0.2, 'Refusé', '2020-12-09'),
	 ('FGH90', 0.5, 'Accepté', '2020-12-09'),
	 ('XCV98', 1.0, 'Accepté', '2020-12-10'),
	 ('AFN12', 0.5, 'Accepté', '2020-12-11'),
	 ('VBY23', 0.2, 'EnAttenteValidation', '2020-12-11'),
	 ('OIH54', 0.2, 'Accepté', '2020-12-12'),
	 ('XDP25', 0.1, 'EnAttenteValidation', '2020-12-11'),
	 ('FGH90', 0.2, 'Accepté', '2020-12-11'),
	 ('SSSD9', 0.3, 'EnAttenteValidation', '2020-12-14'),
	 ('5SSD6', 0.7, 'EnAttenteValidation', '2020-12-14'),
	 ('5MP5X', 0.1, 'EnAttenteValidation', '2020-12-15'),
	 ('SSSD9', 0.3, 'EnAttenteValidation', '2020-12-15'),
	 ('PYD25', 0.3, 'Accepté', '2020-12-07'),
	 ('69X6D', 0.1, 'Accepté', '2020-12-07'),
	 ('5MP5X', 0.6, 'Accepté', '2020-12-07'),
	 ('OUP55', 1.0, 'Accepté', '2020-12-08'),
	 ('5SSD6', 0.5, 'Accepté', '2020-12-09'),
	 ('OUP55', 0.5, 'Accepté', '2020-12-09'),
	 ('5SSD6', 1.0, 'Refusé', '2020-12-10'),
	 ('PYD25', 1.0, 'Refusé', '2020-12-11'),
	 ('58XD6', 0.1, 'EnAttenteValidation', '2020-12-15'),
	 ('5MP5X', 0.5, 'EnAttenteValidation', '2020-12-15'),
	 ('OIH54', 0.1, 'NonSauvegardé', '2020-12-17'),
 	 ('VBY23', 0.2, 'NonSauvegardé', '2020-12-17')

	

	 
     
GO


