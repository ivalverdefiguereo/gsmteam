USE [master]
GO
/****** Object:  Database [GSM]    Script Date: 07/05/2021 20:14:44 ******/
CREATE DATABASE [GSM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GSM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\GSM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GSM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\GSM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [GSM] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GSM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GSM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GSM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GSM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GSM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GSM] SET ARITHABORT OFF 
GO
ALTER DATABASE [GSM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GSM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GSM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GSM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GSM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GSM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GSM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GSM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GSM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GSM] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GSM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GSM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GSM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GSM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GSM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GSM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GSM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GSM] SET RECOVERY FULL 
GO
ALTER DATABASE [GSM] SET  MULTI_USER 
GO
ALTER DATABASE [GSM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GSM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GSM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GSM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GSM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GSM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'GSM', N'ON'
GO
ALTER DATABASE [GSM] SET QUERY_STORE = OFF
GO
USE [GSM]
GO
/****** Object:  Table [dbo].[Alquiler]    Script Date: 07/05/2021 20:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alquiler](
	[idAlquiler] [int] IDENTITY(1,1) NOT NULL,
	[idTraje] [int] NOT NULL,
	[idCliente] [int] NOT NULL,
	[idVendedor] [int] NOT NULL,
	[idMensajero] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Estado] [nvarchar](15) NULL,
 CONSTRAINT [PK__Alquiler__085FBAE17C099E68] PRIMARY KEY CLUSTERED 
(
	[idAlquiler] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 07/05/2021 20:14:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](45) NOT NULL,
	[Nombre] [nvarchar](45) NOT NULL,
	[Telefono] [nvarchar](15) NOT NULL,
	[Direccion] [nvarchar](45) NOT NULL,
	[Correo] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK__Cliente__885457EEF00A6BBC] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mensajero]    Script Date: 07/05/2021 20:14:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mensajero](
	[idMensajero] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](45) NOT NULL,
	[Nombre] [nvarchar](45) NOT NULL,
	[Telefono] [nvarchar](15) NOT NULL,
	[Direccion] [nvarchar](45) NOT NULL,
	[Correo] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK__Mensajer__F0590D2C01F8F79C] PRIMARY KEY CLUSTERED 
(
	[idMensajero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 07/05/2021 20:14:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[idProveedor] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](45) NOT NULL,
	[Nombre] [nvarchar](45) NOT NULL,
	[Telefono] [nvarchar](15) NOT NULL,
	[Direccion] [nvarchar](45) NOT NULL,
	[Correo] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK__Proveedo__A3FA8E6B57ECC385] PRIMARY KEY CLUSTERED 
(
	[idProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Traje]    Script Date: 07/05/2021 20:14:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Traje](
	[idTraje] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](45) NOT NULL,
	[Nombre] [nvarchar](45) NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
	[Tipo] [nvarchar](10) NOT NULL,
	[Talla] [nvarchar](10) NOT NULL,
	[idProveedor] [int] NOT NULL,
 CONSTRAINT [PK__Traje__029302E47798F3E3] PRIMARY KEY CLUSTERED 
(
	[idTraje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendedor]    Script Date: 07/05/2021 20:14:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendedor](
	[idVendedor] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](45) NOT NULL,
	[Nombre] [nvarchar](45) NOT NULL,
	[Telefono] [nvarchar](15) NOT NULL,
	[Direccion] [nvarchar](45) NOT NULL,
	[Correo] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK__Vendedor__A6693F93DAA90A82] PRIMARY KEY CLUSTERED 
(
	[idVendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Alquiler] ON 
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (21, 1, 3, 4, 9, CAST(N'2021-05-07' AS Date), N'Devuelto')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (22, 5, 2, 5, 6, CAST(N'2021-05-07' AS Date), N'Alquilado')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (23, 3, 1, 3, 2, CAST(N'2021-05-07' AS Date), N'Alquilado')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (24, 8, 3, 1, 1, CAST(N'2021-05-07' AS Date), N'Alquilado')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (25, 1, 5, 2, 3, CAST(N'2021-05-07' AS Date), N'Alquilado')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (26, 9, 4, 2, 4, CAST(N'2021-05-07' AS Date), N'Alquilado')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (27, 4, 6, 6, 4, CAST(N'2021-05-07' AS Date), N'Alquilado')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (28, 5, 10, 11, 3, CAST(N'2021-05-07' AS Date), N'Alquilado')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (29, 7, 3, 10, 10, CAST(N'2021-05-07' AS Date), N'Devuelto')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (30, 1, 4, 8, 3, CAST(N'2021-05-07' AS Date), N'Alquilado')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (31, 6, 5, 4, 4, CAST(N'2021-05-07' AS Date), N'Alquilado')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (32, 10, 8, 9, 5, CAST(N'2021-05-07' AS Date), N'Devuelto')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (33, 12, 8, 10, 6, CAST(N'2021-05-07' AS Date), N'Devuelto')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (34, 8, 9, 2, 10, CAST(N'2021-05-07' AS Date), N'Alquilado')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (35, 11, 2, 3, 8, CAST(N'2021-05-07' AS Date), N'Alquilado')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (36, 2, 2, 6, 6, CAST(N'2021-05-07' AS Date), N'Devuelto')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (37, 5, 1, 7, 11, CAST(N'2021-05-07' AS Date), N'Alquilado')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (38, 4, 6, 5, 3, CAST(N'2021-05-07' AS Date), N'Alquilado')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (39, 3, 5, 9, 7, CAST(N'2021-05-07' AS Date), N'Devuelto')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (40, 2, 8, 8, 12, CAST(N'2021-05-07' AS Date), N'Alquilado')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (41, 10, 1, 2, 8, CAST(N'2021-05-07' AS Date), N'Devuelto')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (42, 12, 3, 11, 9, CAST(N'2021-05-07' AS Date), N'Alquilado')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (43, 11, 8, 12, 1, CAST(N'2021-05-07' AS Date), N'Devuelto')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (44, 9, 7, 9, 3, CAST(N'2021-05-07' AS Date), N'Alquilado')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (45, 7, 11, 7, 2, CAST(N'2021-05-07' AS Date), N'Alquilado')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (46, 5, 10, 7, 5, CAST(N'2021-05-07' AS Date), N'Devuelto')
GO
INSERT [dbo].[Alquiler] ([idAlquiler], [idTraje], [idCliente], [idVendedor], [idMensajero], [Fecha], [Estado]) VALUES (47, 7, 9, 5, 10, CAST(N'2021-05-07' AS Date), N'Alquilado')
GO
SET IDENTITY_INSERT [dbo].[Alquiler] OFF
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 
GO
INSERT [dbo].[Cliente] ([idCliente], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (1, N'CL01', N'Ivan Matos', N'809-799-1044', N'Calle Primera, no. 25', N'matosivan@gmail.com')
GO
INSERT [dbo].[Cliente] ([idCliente], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (2, N'CL02', N'Juan Ruiz', N'829-414-7022', N'Calle Las Praderas, No. 30', N'juanruiz@gmail.com')
GO
INSERT [dbo].[Cliente] ([idCliente], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (3, N'CL03', N'Miguel López', N'829-785-1422', N'Calle Las Palmas, No. 13', N'miguellopez@gmail.com')
GO
INSERT [dbo].[Cliente] ([idCliente], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (4, N'CL04', N'Sonia Meran', N'809-878-1820', N'Av. Independencia, No. 25', N'soniameran@gmail.com')
GO
INSERT [dbo].[Cliente] ([idCliente], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (5, N'CL05', N'Julissa Marrero', N'849-748-0720', N'Av. España, No. 215', N'julisamarrero@gmail.com')
GO
INSERT [dbo].[Cliente] ([idCliente], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (6, N'CL06', N'Nicolás Santos', N'809-850-5088', N'Calle La Cruz, No. 30', N'nicolassantos@gmail.com')
GO
INSERT [dbo].[Cliente] ([idCliente], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (7, N'CL07', N'Sebastian Yatra', N'849-889-1425', N'Av. Los Próceres, No. 250', N'yatras@gmail.com')
GO
INSERT [dbo].[Cliente] ([idCliente], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (8, N'CL08', N'Niurbi Del Orbe', N'809-850-9915', N'Calle Diagonal B, No. 9', N'delorben@gmail.com')
GO
INSERT [dbo].[Cliente] ([idCliente], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (9, N'CL09', N'Ninoska Sosa', N'829-556-0715', N'Calle Doña Pacha, No. 45', N'ninoska@gmail.com')
GO
INSERT [dbo].[Cliente] ([idCliente], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (10, N'CL10', N'Santiago Matías', N'809-915-2023', N'Av. Herrera, No. 66', N'santiagomatias@gmail.com')
GO
INSERT [dbo].[Cliente] ([idCliente], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (11, N'CL11', N'Carlos Araujo', N'849-788-0715', N'Intersección Las Colinas, No. 40', N'araujocc@gmail.com')
GO
INSERT [dbo].[Cliente] ([idCliente], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (12, N'CL12', N'Yeni De Óleo', N'809-745-2144', N'Calle Las Praderas, No. 78', N'yenideoleo@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Mensajero] ON 
GO
INSERT [dbo].[Mensajero] ([idMensajero], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (1, N'MN01', N'Santos Trinidad', N'809-799-1044', N'Calle Primera, no. 25', N'santostrinidad@gmail.com')
GO
INSERT [dbo].[Mensajero] ([idMensajero], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (2, N'MN02', N'Nicolas Maquiavelo', N'829-414-7022', N'Calle Las Praderas, No. 30', N'elcorteingles@gmail.com')
GO
INSERT [dbo].[Mensajero] ([idMensajero], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (3, N'MN03', N'Mark Twain', N'829-785-1422', N'Calle Las Palmas, No. 13', N'tomsawyer@gmail.com')
GO
INSERT [dbo].[Mensajero] ([idMensajero], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (4, N'MN04', N'Arthur Conan Doyle', N'809-878-1820', N'Av. Independencia, No. 25', N'sherlokholmes@gmail.com')
GO
INSERT [dbo].[Mensajero] ([idMensajero], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (5, N'MN05', N'San Agustin de Hipona', N'849-748-0720', N'Av. España, No. 215', N'laciudadedios@gmail.com')
GO
INSERT [dbo].[Mensajero] ([idMensajero], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (6, N'MN06', N'Ricardo Manzueta', N'809-850-5088', N'Calle La Cruz, No. 30', N'licmanzueta@gmail.com')
GO
INSERT [dbo].[Mensajero] ([idMensajero], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (7, N'MN07', N'Sebastian Álvarez', N'849-889-1425', N'Av. Los Próceres, No. 250', N'sebastiana@gmail.com')
GO
INSERT [dbo].[Mensajero] ([idMensajero], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (8, N'MN08', N'Carlitos Vásquez', N'809-850-9915', N'Calle Diagonal B, No. 9', N'carlitosvasquez@gmail.com')
GO
INSERT [dbo].[Mensajero] ([idMensajero], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (9, N'MN09', N'Julio Contreras', N'829-556-0715', N'Calle Doña Pacha, No. 45', N'contrerasjulio@gmail.com')
GO
INSERT [dbo].[Mensajero] ([idMensajero], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (10, N'MN10', N'Carina Hernández', N'809-915-2023', N'Av. Herrera, No. 66', N'carinahernandez@gmail.com')
GO
INSERT [dbo].[Mensajero] ([idMensajero], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (11, N'MN11', N'Michael García', N'849-788-0715', N'Intersección Las Colinas, No. 40', N'michaelgarcia@gmail.com')
GO
INSERT [dbo].[Mensajero] ([idMensajero], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (12, N'MN12', N'Adalberto López', N'809-745-2144', N'Calle Las Praderas, No. 78', N'adalbertolopez@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Mensajero] OFF
GO
SET IDENTITY_INSERT [dbo].[Proveedor] ON 
GO
INSERT [dbo].[Proveedor] ([idProveedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (1, N'PR01', N'Sunilda José', N'809-799-1044', N'Calle Primera, no. 25', N'sunildajose@gmail.com')
GO
INSERT [dbo].[Proveedor] ([idProveedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (2, N'PR02', N'Joaquín Sabina', N'829-414-7022', N'Calle Las Praderas, No. 30', N'joaquinasabina@gmail.com')
GO
INSERT [dbo].[Proveedor] ([idProveedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (3, N'PR03', N'Ricardo Arjona', N'829-785-1422', N'Calle Las Palmas, No. 13', N'arjoniano@gmail.com')
GO
INSERT [dbo].[Proveedor] ([idProveedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (4, N'PR04', N'Alejandro Sanz', N'809-878-1820', N'Av. Independencia, No. 25', N'alejandrinos@gmail.com')
GO
INSERT [dbo].[Proveedor] ([idProveedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (5, N'PR05', N'Juan Luis Guerra', N'849-748-0720', N'Av. España, No. 215', N'banda440@gmail.com')
GO
INSERT [dbo].[Proveedor] ([idProveedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (6, N'PR06', N'Sofia Jiménez', N'809-850-5088', N'Calle La Cruz, No. 30', N'jimeness@gmail.com')
GO
INSERT [dbo].[Proveedor] ([idProveedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (7, N'PR07', N'Camilo Hernández', N'849-889-1425', N'Av. Los Próceres, No. 250', N'chernandez@gmail.com')
GO
INSERT [dbo].[Proveedor] ([idProveedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (8, N'PR08', N'Neuris Vásquez', N'809-850-9915', N'Calle Diagonal B, No. 9', N'neurisvasquez@gmail.com')
GO
INSERT [dbo].[Proveedor] ([idProveedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (9, N'PR09', N'Julio Iglesias', N'829-556-0715', N'Calle Doña Pacha, No. 45', N'iglesiasjulio@gmail.com')
GO
INSERT [dbo].[Proveedor] ([idProveedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (10, N'PR10', N'Carlos Zapata', N'809-915-2023', N'Av. Herrera, No. 66', N'carloszapata@gmail.com')
GO
INSERT [dbo].[Proveedor] ([idProveedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (11, N'PR11', N'Félix Contreras', N'849-788-0715', N'Intersección Las Colinas, No. 40', N'ingfelix@gmail.com')
GO
INSERT [dbo].[Proveedor] ([idProveedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (12, N'PR12', N'Nolberto Castro', N'809-745-2144', N'Calle Las Praderas, No. 78', N'nolbertocastro@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Proveedor] OFF
GO
SET IDENTITY_INSERT [dbo].[Traje] ON 
GO
INSERT [dbo].[Traje] ([idTraje], [Codigo], [Nombre], [Precio], [Tipo], [Talla], [idProveedor]) VALUES (1, N'TR01', N'Roberto Cavalli', CAST(1550.00 AS Decimal(18, 2)), N'Hombre', N'M', 1)
GO
INSERT [dbo].[Traje] ([idTraje], [Codigo], [Nombre], [Precio], [Tipo], [Talla], [idProveedor]) VALUES (2, N'TR02', N'Charles Milleston', CAST(1380.00 AS Decimal(18, 2)), N'Hombre', N'S', 1)
GO
INSERT [dbo].[Traje] ([idTraje], [Codigo], [Nombre], [Precio], [Tipo], [Talla], [idProveedor]) VALUES (3, N'TR03', N'Roberto Cavalli', CAST(1250.00 AS Decimal(18, 2)), N'Mujer', N'M', 4)
GO
INSERT [dbo].[Traje] ([idTraje], [Codigo], [Nombre], [Precio], [Tipo], [Talla], [idProveedor]) VALUES (4, N'TR04', N'Michael Kors', CAST(1100.00 AS Decimal(18, 2)), N'Mujer', N'S', 3)
GO
INSERT [dbo].[Traje] ([idTraje], [Codigo], [Nombre], [Precio], [Tipo], [Talla], [idProveedor]) VALUES (5, N'TR05', N'Julissa Cavallier', CAST(1475.00 AS Decimal(18, 2)), N'Hombre', N'L', 5)
GO
INSERT [dbo].[Traje] ([idTraje], [Codigo], [Nombre], [Precio], [Tipo], [Talla], [idProveedor]) VALUES (6, N'TR06', N'Julissa Cavallier', CAST(1200.00 AS Decimal(18, 2)), N'Mujer', N'M', 5)
GO
INSERT [dbo].[Traje] ([idTraje], [Codigo], [Nombre], [Precio], [Tipo], [Talla], [idProveedor]) VALUES (7, N'TR07', N'Roberto Cavalli', CAST(1390.00 AS Decimal(18, 2)), N'Hombre', N'S', 4)
GO
INSERT [dbo].[Traje] ([idTraje], [Codigo], [Nombre], [Precio], [Tipo], [Talla], [idProveedor]) VALUES (8, N'TR08', N'Carolina Herrera', CAST(2050.00 AS Decimal(18, 2)), N'Hombre', N'L', 9)
GO
INSERT [dbo].[Traje] ([idTraje], [Codigo], [Nombre], [Precio], [Tipo], [Talla], [idProveedor]) VALUES (9, N'TR10', N'Crolina Herrera', CAST(1975.00 AS Decimal(18, 2)), N'Mujer', N'M', 9)
GO
INSERT [dbo].[Traje] ([idTraje], [Codigo], [Nombre], [Precio], [Tipo], [Talla], [idProveedor]) VALUES (10, N'TR11', N'Salvatore Ferragamo', CAST(1800.00 AS Decimal(18, 2)), N'Hombre', N'M', 11)
GO
INSERT [dbo].[Traje] ([idTraje], [Codigo], [Nombre], [Precio], [Tipo], [Talla], [idProveedor]) VALUES (11, N'TR12', N'Giancarlo Farusso', CAST(1890.00 AS Decimal(18, 2)), N'Mujer', N'S', 8)
GO
INSERT [dbo].[Traje] ([idTraje], [Codigo], [Nombre], [Precio], [Tipo], [Talla], [idProveedor]) VALUES (12, N'TR12', N'Giancarlo Farusso', CAST(1890.00 AS Decimal(18, 2)), N'Hombre', N'L', 7)
GO
INSERT [dbo].[Traje] ([idTraje], [Codigo], [Nombre], [Precio], [Tipo], [Talla], [idProveedor]) VALUES (13, N'TR12', N'Chacabana', CAST(1850.00 AS Decimal(18, 2)), N'Hombre', N'M', 10)
GO
INSERT [dbo].[Traje] ([idTraje], [Codigo], [Nombre], [Precio], [Tipo], [Talla], [idProveedor]) VALUES (14, N'TR12', N'Chacabana', CAST(2100.00 AS Decimal(18, 2)), N'Mujer', N'M', 6)
GO
SET IDENTITY_INSERT [dbo].[Traje] OFF
GO
SET IDENTITY_INSERT [dbo].[Vendedor] ON 
GO
INSERT [dbo].[Vendedor] ([idVendedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (1, N'VN01', N'María Alt. Sosa', N'809-799-1044', N'Calle Primera, no. 25', N'mariasosa@gmail.com')
GO
INSERT [dbo].[Vendedor] ([idVendedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (2, N'VN02', N'Carla Santana', N'829-414-7022', N'Calle Las Praderas, No. 30', N'carlasantana@gmail.com')
GO
INSERT [dbo].[Vendedor] ([idVendedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (3, N'VN03', N'Nelson Batista', N'829-785-1422', N'Calle Las Palmas, No. 13', N'nelsonbatista@gmail.com')
GO
INSERT [dbo].[Vendedor] ([idVendedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (4, N'VN04', N'Jairo Mercedes', N'809-878-1820', N'Av. Independencia, No. 25', N'jairomercedes@gmail.com')
GO
INSERT [dbo].[Vendedor] ([idVendedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (5, N'VN05', N'Milagros Germán', N'849-748-0720', N'Av. España, No. 215', N'milagrosgerman@gmail.com')
GO
INSERT [dbo].[Vendedor] ([idVendedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (6, N'VN06', N'Antonio Santos', N'809-850-5088', N'Calle La Cruz, No. 30', N'antoniosantos@gmail.com')
GO
INSERT [dbo].[Vendedor] ([idVendedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (7, N'VN07', N'Nani Castro', N'849-889-1425', N'Av. Los Próceres, No. 250', N'castrocastro@gmail.com')
GO
INSERT [dbo].[Vendedor] ([idVendedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (8, N'VN08', N'Antonella Rodríguez', N'809-850-9915', N'Calle Diagonal B, No. 9', N'lachichi@gmail.com')
GO
INSERT [dbo].[Vendedor] ([idVendedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (9, N'VN09', N'Jose Armando Jose', N'829-556-0715', N'Calle Doña Pacha, No. 45', N'jaj94@gmail.com')
GO
INSERT [dbo].[Vendedor] ([idVendedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (10, N'VN10', N'Odani Eustaquio', N'809-915-2023', N'Av. Herrera, No. 66', N'odanieustaquio@gmail.com')
GO
INSERT [dbo].[Vendedor] ([idVendedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (11, N'VN11', N'Domingo Talavera', N'849-788-0715', N'Intersección Las Colinas, No. 40', N'talaverad@gmail.com')
GO
INSERT [dbo].[Vendedor] ([idVendedor], [Codigo], [Nombre], [Telefono], [Direccion], [Correo]) VALUES (12, N'VN12', N'Ramón Núñez', N'809-745-2144', N'Calle Las Praderas, No. 78', N'donramon@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Vendedor] OFF
GO
ALTER TABLE [dbo].[Alquiler]  WITH CHECK ADD  CONSTRAINT [FK__Alquiler__idClie__300424B4] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[Alquiler] CHECK CONSTRAINT [FK__Alquiler__idClie__300424B4]
GO
ALTER TABLE [dbo].[Alquiler]  WITH CHECK ADD  CONSTRAINT [FK__Alquiler__idMens__31EC6D26] FOREIGN KEY([idMensajero])
REFERENCES [dbo].[Mensajero] ([idMensajero])
GO
ALTER TABLE [dbo].[Alquiler] CHECK CONSTRAINT [FK__Alquiler__idMens__31EC6D26]
GO
ALTER TABLE [dbo].[Alquiler]  WITH CHECK ADD  CONSTRAINT [FK__Alquiler__idTraj__2F10007B] FOREIGN KEY([idTraje])
REFERENCES [dbo].[Traje] ([idTraje])
GO
ALTER TABLE [dbo].[Alquiler] CHECK CONSTRAINT [FK__Alquiler__idTraj__2F10007B]
GO
ALTER TABLE [dbo].[Alquiler]  WITH CHECK ADD  CONSTRAINT [FK__Alquiler__idVend__30F848ED] FOREIGN KEY([idVendedor])
REFERENCES [dbo].[Vendedor] ([idVendedor])
GO
ALTER TABLE [dbo].[Alquiler] CHECK CONSTRAINT [FK__Alquiler__idVend__30F848ED]
GO
ALTER TABLE [dbo].[Traje]  WITH CHECK ADD  CONSTRAINT [FK__Traje__idProveed__2C3393D0] FOREIGN KEY([idProveedor])
REFERENCES [dbo].[Proveedor] ([idProveedor])
GO
ALTER TABLE [dbo].[Traje] CHECK CONSTRAINT [FK__Traje__idProveed__2C3393D0]
GO
USE [master]
GO
ALTER DATABASE [GSM] SET  READ_WRITE 
GO
