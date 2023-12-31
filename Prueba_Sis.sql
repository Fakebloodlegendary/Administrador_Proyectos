USE [master]
GO
/****** Object:  Database [prueba_sis]    Script Date: 26/07/2023 10:38:08 ******/
CREATE DATABASE [prueba_sis]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'prueba_sis', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\prueba_sis.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'prueba_sis_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\prueba_sis_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [prueba_sis] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [prueba_sis].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [prueba_sis] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [prueba_sis] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [prueba_sis] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [prueba_sis] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [prueba_sis] SET ARITHABORT OFF 
GO
ALTER DATABASE [prueba_sis] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [prueba_sis] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [prueba_sis] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [prueba_sis] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [prueba_sis] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [prueba_sis] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [prueba_sis] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [prueba_sis] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [prueba_sis] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [prueba_sis] SET  ENABLE_BROKER 
GO
ALTER DATABASE [prueba_sis] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [prueba_sis] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [prueba_sis] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [prueba_sis] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [prueba_sis] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [prueba_sis] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [prueba_sis] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [prueba_sis] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [prueba_sis] SET  MULTI_USER 
GO
ALTER DATABASE [prueba_sis] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [prueba_sis] SET DB_CHAINING OFF 
GO
ALTER DATABASE [prueba_sis] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [prueba_sis] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [prueba_sis] SET DELAYED_DURABILITY = DISABLED 
GO
USE [prueba_sis]
GO
/****** Object:  Table [dbo].[Componentes]    Script Date: 26/07/2023 10:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Componentes](
	[component_id] [int] NOT NULL,
	[nombre_componente] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[component_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Componentes_Subcomponentes]    Script Date: 26/07/2023 10:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Componentes_Subcomponentes](
	[Id_Componentes_SubComponentes] [int] IDENTITY(1,1) NOT NULL,
	[component_id] [int] NULL,
	[subcomponent_id] [int] NULL,
 CONSTRAINT [PK_Componentes_Subcomponentes] PRIMARY KEY CLUSTERED 
(
	[Id_Componentes_SubComponentes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Proyectos]    Script Date: 26/07/2023 10:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proyectos](
	[project_id] [int] NOT NULL,
	[nombre_proyecto] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proyectos_Componentes]    Script Date: 26/07/2023 10:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proyectos_Componentes](
	[project_id] [int] NOT NULL,
	[component_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[project_id] ASC,
	[component_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Proyectos_Subcomponentes]    Script Date: 26/07/2023 10:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proyectos_Subcomponentes](
	[project_id] [int] NOT NULL,
	[subcomponent_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[project_id] ASC,
	[subcomponent_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subcomponentes]    Script Date: 26/07/2023 10:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Subcomponentes](
	[subcomponent_id] [int] NOT NULL,
	[nombre_subcomponente] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[subcomponent_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Componentes] ([component_id], [nombre_componente]) VALUES (1, N'Server Front End')
INSERT [dbo].[Componentes] ([component_id], [nombre_componente]) VALUES (2, N'Server Web')
INSERT [dbo].[Componentes] ([component_id], [nombre_componente]) VALUES (3, N'Server Back End')
SET IDENTITY_INSERT [dbo].[Componentes_Subcomponentes] ON 

INSERT [dbo].[Componentes_Subcomponentes] ([Id_Componentes_SubComponentes], [component_id], [subcomponent_id]) VALUES (1, 1, 1)
INSERT [dbo].[Componentes_Subcomponentes] ([Id_Componentes_SubComponentes], [component_id], [subcomponent_id]) VALUES (2, 1, 2)
INSERT [dbo].[Componentes_Subcomponentes] ([Id_Componentes_SubComponentes], [component_id], [subcomponent_id]) VALUES (3, 2, 1)
INSERT [dbo].[Componentes_Subcomponentes] ([Id_Componentes_SubComponentes], [component_id], [subcomponent_id]) VALUES (4, 2, 2)
INSERT [dbo].[Componentes_Subcomponentes] ([Id_Componentes_SubComponentes], [component_id], [subcomponent_id]) VALUES (5, 3, 1)
INSERT [dbo].[Componentes_Subcomponentes] ([Id_Componentes_SubComponentes], [component_id], [subcomponent_id]) VALUES (6, 3, 3)
INSERT [dbo].[Componentes_Subcomponentes] ([Id_Componentes_SubComponentes], [component_id], [subcomponent_id]) VALUES (7, 1, 1)
INSERT [dbo].[Componentes_Subcomponentes] ([Id_Componentes_SubComponentes], [component_id], [subcomponent_id]) VALUES (8, 1, 3)
INSERT [dbo].[Componentes_Subcomponentes] ([Id_Componentes_SubComponentes], [component_id], [subcomponent_id]) VALUES (9, 3, NULL)
INSERT [dbo].[Componentes_Subcomponentes] ([Id_Componentes_SubComponentes], [component_id], [subcomponent_id]) VALUES (10, 2, NULL)
INSERT [dbo].[Componentes_Subcomponentes] ([Id_Componentes_SubComponentes], [component_id], [subcomponent_id]) VALUES (11, NULL, 4)
SET IDENTITY_INSERT [dbo].[Componentes_Subcomponentes] OFF
INSERT [dbo].[Proyectos] ([project_id], [nombre_proyecto]) VALUES (1, N'Estructura de Datos')
INSERT [dbo].[Proyectos] ([project_id], [nombre_proyecto]) VALUES (2, N'Algoritmos')
INSERT [dbo].[Proyectos] ([project_id], [nombre_proyecto]) VALUES (3, N'Desarrollo Aspx')
INSERT [dbo].[Proyectos] ([project_id], [nombre_proyecto]) VALUES (4, N'Inteligencia Artificial')
INSERT [dbo].[Proyectos_Componentes] ([project_id], [component_id]) VALUES (1, 1)
INSERT [dbo].[Proyectos_Componentes] ([project_id], [component_id]) VALUES (1, 2)
INSERT [dbo].[Proyectos_Componentes] ([project_id], [component_id]) VALUES (2, 1)
INSERT [dbo].[Proyectos_Componentes] ([project_id], [component_id]) VALUES (2, 3)
INSERT [dbo].[Proyectos_Componentes] ([project_id], [component_id]) VALUES (3, 2)
INSERT [dbo].[Proyectos_Componentes] ([project_id], [component_id]) VALUES (3, 3)
INSERT [dbo].[Proyectos_Subcomponentes] ([project_id], [subcomponent_id]) VALUES (1, 1)
INSERT [dbo].[Proyectos_Subcomponentes] ([project_id], [subcomponent_id]) VALUES (1, 2)
INSERT [dbo].[Proyectos_Subcomponentes] ([project_id], [subcomponent_id]) VALUES (2, 1)
INSERT [dbo].[Proyectos_Subcomponentes] ([project_id], [subcomponent_id]) VALUES (2, 3)
INSERT [dbo].[Proyectos_Subcomponentes] ([project_id], [subcomponent_id]) VALUES (4, 4)
INSERT [dbo].[Subcomponentes] ([subcomponent_id], [nombre_subcomponente]) VALUES (1, N'DB')
INSERT [dbo].[Subcomponentes] ([subcomponent_id], [nombre_subcomponente]) VALUES (2, N'SP')
INSERT [dbo].[Subcomponentes] ([subcomponent_id], [nombre_subcomponente]) VALUES (3, N'DTSX')
INSERT [dbo].[Subcomponentes] ([subcomponent_id], [nombre_subcomponente]) VALUES (4, N'ChatVirtual')
ALTER TABLE [dbo].[Componentes_Subcomponentes]  WITH CHECK ADD  CONSTRAINT [FK__Component__compo__49C3F6B7] FOREIGN KEY([component_id])
REFERENCES [dbo].[Componentes] ([component_id])
GO
ALTER TABLE [dbo].[Componentes_Subcomponentes] CHECK CONSTRAINT [FK__Component__compo__49C3F6B7]
GO
ALTER TABLE [dbo].[Componentes_Subcomponentes]  WITH CHECK ADD  CONSTRAINT [FK__Component__subco__4AB81AF0] FOREIGN KEY([subcomponent_id])
REFERENCES [dbo].[Subcomponentes] ([subcomponent_id])
GO
ALTER TABLE [dbo].[Componentes_Subcomponentes] CHECK CONSTRAINT [FK__Component__subco__4AB81AF0]
GO
ALTER TABLE [dbo].[Proyectos_Componentes]  WITH CHECK ADD FOREIGN KEY([component_id])
REFERENCES [dbo].[Componentes] ([component_id])
GO
ALTER TABLE [dbo].[Proyectos_Componentes]  WITH CHECK ADD FOREIGN KEY([project_id])
REFERENCES [dbo].[Proyectos] ([project_id])
GO
ALTER TABLE [dbo].[Proyectos_Subcomponentes]  WITH CHECK ADD FOREIGN KEY([project_id])
REFERENCES [dbo].[Proyectos] ([project_id])
GO
ALTER TABLE [dbo].[Proyectos_Subcomponentes]  WITH CHECK ADD FOREIGN KEY([subcomponent_id])
REFERENCES [dbo].[Subcomponentes] ([subcomponent_id])
GO
USE [master]
GO
ALTER DATABASE [prueba_sis] SET  READ_WRITE 
GO
