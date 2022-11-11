USE [maracuya_store]
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 10/11/2022 21:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](30) NULL,
	[Id_Foto] [int] NULL,
	[Precio] [float] NULL,
	[Cantidad] [int] NULL,
	[Codigo] [varchar](30) NULL,
	[Id_Categoria] [int] NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bancos]    Script Date: 10/11/2022 21:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bancos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](20) NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 10/11/2022 21:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](30) NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fotos_Usuarios]    Script Date: 10/11/2022 21:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fotos_Usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Base_64] [varchar](max) NULL,
	[Descripcion] [varchar](20) NULL,
	[Estado] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Generos]    Script Date: 10/11/2022 21:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Generos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](30) NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medios_Pago]    Script Date: 10/11/2022 21:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medios_Pago](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](20) NULL,
	[Id_Banco] [int] NULL,
	[Cus] [varchar](30) NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modulos]    Script Date: 10/11/2022 21:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modulos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](20) NULL,
	[Url] [varchar](60) NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 10/11/2022 21:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](20) NULL,
	[Id_Usuarios] [int] NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles_Modulos]    Script Date: 10/11/2022 21:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles_Modulos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Roles] [int] NULL,
	[Id_Modulos] [int] NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 10/11/2022 21:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido_1] [varchar](50) NOT NULL,
	[Apellido_2] [varchar](50) NOT NULL,
	[Correo] [varchar](100) NOT NULL,
	[Contrasena] [varchar](50) NOT NULL,
	[Id_Genero] [int] NOT NULL,
	[Id_Tipo_Documento] [int] NOT NULL,
	[Num_Documento] [varchar](20) NOT NULL,
	[Id_Foto] [int] NULL,
	[Direccion] [varchar](50) NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 10/11/2022 21:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NULL,
	[Total] [float] NULL,
	[Id_Usuarios] [int] NULL,
	[Id_Medios_Pago] [int] NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas_Articulos]    Script Date: 10/11/2022 21:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas_Articulos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Venta] [int] NULL,
	[Id_Articulo] [int] NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]
GO
