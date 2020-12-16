USE [master]
GO

/****** Object:  Database [CRA_BDD]    Script Date: 15/12/2020 20:40:37 ******/
CREATE DATABASE [CRA_BDD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CRA_BDD', FILENAME = N'C:\Users\[NameUser]\CRA_BDD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CRA_BDD_log', FILENAME = N'C:\Users\[NameUser]\CRA_BDD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CRA_BDD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [CRA_BDD] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [CRA_BDD] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [CRA_BDD] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [CRA_BDD] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [CRA_BDD] SET ARITHABORT OFF 
GO

ALTER DATABASE [CRA_BDD] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [CRA_BDD] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [CRA_BDD] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [CRA_BDD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [CRA_BDD] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [CRA_BDD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [CRA_BDD] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [CRA_BDD] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [CRA_BDD] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [CRA_BDD] SET  DISABLE_BROKER 
GO

ALTER DATABASE [CRA_BDD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [CRA_BDD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [CRA_BDD] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [CRA_BDD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [CRA_BDD] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [CRA_BDD] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [CRA_BDD] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [CRA_BDD] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [CRA_BDD] SET  MULTI_USER 
GO

ALTER DATABASE [CRA_BDD] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [CRA_BDD] SET DB_CHAINING OFF 
GO

ALTER DATABASE [CRA_BDD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [CRA_BDD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [CRA_BDD] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [CRA_BDD] SET QUERY_STORE = OFF
GO

USE [CRA_BDD]
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE [CRA_BDD] SET  READ_WRITE 
GO


