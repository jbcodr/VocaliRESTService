USE [master]
GO
/****** Object:  Database [Company]    Script Date: 10/17/2016 02:28:00 ******/
CREATE DATABASE [Company] ON  PRIMARY 
( NAME = N'Company', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.NCS_2008\MSSQL\DATA\Company.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Company_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.NCS_2008\MSSQL\DATA\Company_1.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Company] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Company].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Company] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Company] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Company] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Company] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Company] SET ARITHABORT OFF
GO
ALTER DATABASE [Company] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Company] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Company] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Company] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Company] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Company] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Company] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Company] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Company] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Company] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Company] SET  DISABLE_BROKER
GO
ALTER DATABASE [Company] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Company] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Company] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Company] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Company] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Company] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Company] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Company] SET  READ_WRITE
GO
ALTER DATABASE [Company] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Company] SET  MULTI_USER
GO
ALTER DATABASE [Company] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Company] SET DB_CHAINING OFF
GO
USE [Company]
GO
/****** Object:  Table [dbo].[Transcripcion]    Script Date: 10/17/2016 02:28:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Transcripcion](
	[IdTranscripcion] [int] IDENTITY(1,1) NOT NULL,
	[Login] [varchar](50) NOT NULL,
	[Estado] [smallint] NOT NULL,
	[NombreFichero] [varchar](255) NULL,
	[Fichero] [varbinary](max) NULL,
	[FechaRecepcion] [datetime] NOT NULL,
	[FechaTranscripcion] [datetime] NULL,
	[TextoTranscripcion] [varchar](max) NULL,
 CONSTRAINT [PK_Transcripcion] PRIMARY KEY CLUSTERED 
(
	[IdTranscripcion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Transcripcion] ([Login], [Estado], [NombreFichero], [Fichero], [FechaRecepcion], [FechaTranscripcion], [TextoTranscripcion]) VALUES (N'rafael', 0, N'audio-r-001.mp3', NULL, CAST(0x0000A69700C8AEB4 AS DateTime), NULL, NULL)
INSERT [dbo].[Transcripcion] ([Login], [Estado], [NombreFichero], [Fichero], [FechaRecepcion], [FechaTranscripcion], [TextoTranscripcion]) VALUES (N'gabriel', 0, N'audio-g-001.mp3', NULL, CAST(0x0000A69700D92974 AS DateTime), NULL, NULL)
INSERT [dbo].[Transcripcion] ([Login], [Estado], [NombreFichero], [Fichero], [FechaRecepcion], [FechaTranscripcion], [TextoTranscripcion]) VALUES (N'miguel', 0, N'audio-m-001.mp3', NULL, CAST(0x0000A698014C84B4 AS DateTime), NULL, NULL)
INSERT [dbo].[Transcripcion] ([Login], [Estado], [NombreFichero], [Fichero], [FechaRecepcion], [FechaTranscripcion], [TextoTranscripcion]) VALUES (N'gabriel', 0, N'audio-g-002.mp3', NULL, CAST(0x0000A69A014DB1C0 AS DateTime), NULL, NULL)
INSERT [dbo].[Transcripcion] ([Login], [Estado], [NombreFichero], [Fichero], [FechaRecepcion], [FechaTranscripcion], [TextoTranscripcion]) VALUES (N'rafael', 2, N'audio-r-002.mp3', 0x373839, CAST(0x0000A69C014E3983 AS DateTime), CAST(0x0000A6A2001A17B0 AS DateTime), N'La suerte favorece solo a la mente preparada')
INSERT [dbo].[Transcripcion] ([Login], [Estado], [NombreFichero], [Fichero], [FechaRecepcion], [FechaTranscripcion], [TextoTranscripcion]) VALUES (N'miguel', 0, N'audio-m-002.mp3', NULL, CAST(0x0000A69D015F9000 AS DateTime), NULL, NULL)
INSERT [dbo].[Transcripcion] ([Login], [Estado], [NombreFichero], [Fichero], [FechaRecepcion], [FechaTranscripcion], [TextoTranscripcion]) VALUES (N'azrael', 0, N'audio-az-001.mp3', NULL, CAST(0x0000A6A000041EB0 AS DateTime), NULL, NULL)
