


USE [CRA_BDD]
GO

/****** Object:  Table [dbo].[UTILISATEUR]    Script Date: 15/12/2020 19:10:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UTILISATEUR](
	[MATRICULE] [nchar](40) NOT NULL,
	[MOTDEPASSE] [nchar](40) NOT NULL,
	[NOM] [nchar](40) NOT NULL,
	[PRENOM] [nchar](40) NOT NULL,
	[ISADMIN] [bit] NOT NULL,
 CONSTRAINT [PK_UTILISATEUR] PRIMARY KEY CLUSTERED 
(
	[MATRICULE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO






USE [CRA_BDD]
GO

/****** Object:  Table [dbo].[MISSION]    Script Date: 15/12/2020 19:01:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MISSION](
	[CODE] [nchar](40) NOT NULL,
	[LIBELLE] [nchar](40) NOT NULL,
	[DATE_DEBUT] [date] NOT NULL,
	[DATE_FIN] [date] NOT NULL,
	[ETAT] [nchar](40) NOT NULL,
	[UTILISATEUR_MATRICULE] [nchar](40) NULL,
 CONSTRAINT [PK_MISSION] PRIMARY KEY CLUSTERED 
(
	[CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[MISSION]  WITH CHECK ADD  CONSTRAINT [FK_MISSION_UTILISATEUR] FOREIGN KEY([UTILISATEUR_MATRICULE])
REFERENCES [dbo].[UTILISATEUR] ([MATRICULE])
ON UPDATE SET NULL
ON DELETE SET NULL
GO

ALTER TABLE [dbo].[MISSION] CHECK CONSTRAINT [FK_MISSION_UTILISATEUR]
GO


USE [CRA_BDD]
GO

/****** Object:  Table [dbo].[MISSIONJOUR]    Script Date: 15/12/2020 19:10:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MISSIONJOUR](
	[IDJOUR] [int] IDENTITY(1,1) NOT NULL,
	[MISSION_CODE] [nchar](40) NOT NULL,
	[TEMPS_ACCORDE] [float] NOT NULL,
	[ETAT] [nchar](40) NOT NULL,
	[JOUR] [date] NOT NULL,
 CONSTRAINT [PK_MISSIONJOUR_1] PRIMARY KEY CLUSTERED 
(
	[IDJOUR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[MISSIONJOUR]  WITH CHECK ADD  CONSTRAINT [FK_MISSIONJOUR_MISSION] FOREIGN KEY([MISSION_CODE])
REFERENCES [dbo].[MISSION] ([CODE])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[MISSIONJOUR] CHECK CONSTRAINT [FK_MISSIONJOUR_MISSION]
GO




