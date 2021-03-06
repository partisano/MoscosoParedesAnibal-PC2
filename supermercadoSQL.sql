USE [master]
GO
/****** Object:  Database [DBSupermercado]    Script Date: 7/11/2020 14:59:03 ******/
CREATE DATABASE [DBSupermercado]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBSupermercado', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBSupermercado.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBSupermercado_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBSupermercado_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBSupermercado] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBSupermercado].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBSupermercado] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBSupermercado] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBSupermercado] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBSupermercado] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBSupermercado] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBSupermercado] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DBSupermercado] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBSupermercado] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBSupermercado] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBSupermercado] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBSupermercado] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBSupermercado] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBSupermercado] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBSupermercado] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBSupermercado] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBSupermercado] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBSupermercado] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBSupermercado] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBSupermercado] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBSupermercado] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBSupermercado] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBSupermercado] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBSupermercado] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBSupermercado] SET  MULTI_USER 
GO
ALTER DATABASE [DBSupermercado] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBSupermercado] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBSupermercado] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBSupermercado] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBSupermercado] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBSupermercado] SET QUERY_STORE = OFF
GO
USE [DBSupermercado]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 7/11/2020 14:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[IDarea] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](255) NULL,
 CONSTRAINT [PK_idArea] PRIMARY KEY CLUSTERED 
(
	[IDarea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AreaSucursal]    Script Date: 7/11/2020 14:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreaSucursal](
	[idAreaSucursal] [int] IDENTITY(1,1) NOT NULL,
	[idArea] [int] NOT NULL,
	[idSucursal] [int] NOT NULL,
 CONSTRAINT [PK_idAreaSucursal] PRIMARY KEY CLUSTERED 
(
	[idAreaSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AreaTrabajador]    Script Date: 7/11/2020 14:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreaTrabajador](
	[idAreatrabajador] [int] IDENTITY(1,1) NOT NULL,
	[idArea] [int] NOT NULL,
	[idTrabajador] [int] NOT NULL,
 CONSTRAINT [PK_idAreatrabajador] PRIMARY KEY CLUSTERED 
(
	[idAreatrabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asignacion]    Script Date: 7/11/2020 14:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignacion](
	[idAsignacion] [int] IDENTITY(1,1) NOT NULL,
	[idturno] [int] NOT NULL,
	[idtrabajador] [int] NOT NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_idasignacion] PRIMARY KEY CLUSTERED 
(
	[idAsignacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 7/11/2020 14:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [varchar](40) NOT NULL,
	[apellidos] [varchar](40) NOT NULL,
	[dni] [char](8) NOT NULL,
	[fechNacimineto] [date] NOT NULL,
	[genero] [bit] NOT NULL,
	[tipocliente] [bit] NOT NULL,
	[ruc] [char](20) NOT NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_idCliente] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalleventa]    Script Date: 7/11/2020 14:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalleventa](
	[iDdetalleventa] [int] IDENTITY(1,1) NOT NULL,
	[cantidad] [int] NOT NULL,
	[descuento] [float] NOT NULL,
	[idproducto] [int] NOT NULL,
	[idventa] [int] NOT NULL,
 CONSTRAINT [PK_iDdetalleventa] PRIMARY KEY CLUSTERED 
(
	[iDdetalleventa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[direccion]    Script Date: 7/11/2020 14:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direccion](
	[iddireccion] [int] IDENTITY(1,1) NOT NULL,
	[idcliente] [int] NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[estado] [bit] NOT NULL,
	[principal] [bit] NOT NULL,
 CONSTRAINT [PK_iddireccion] PRIMARY KEY CLUSTERED 
(
	[iddireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[email]    Script Date: 7/11/2020 14:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email](
	[iDemail] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](40) NOT NULL,
	[principal] [bit] NOT NULL,
	[idcliente] [int] NOT NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_iDemail] PRIMARY KEY CLUSTERED 
(
	[iDemail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empresatelefonica]    Script Date: 7/11/2020 14:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empresatelefonica](
	[idempresa] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](40) NOT NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_idempresa] PRIMARY KEY CLUSTERED 
(
	[idempresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estante]    Script Date: 7/11/2020 14:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estante](
	[idEstante] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](40) NOT NULL,
	[estado] [bit] NOT NULL,
	[idzona] [int] NOT NULL,
 CONSTRAINT [PK_idEstante] PRIMARY KEY CLUSTERED 
(
	[idEstante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lineaProducto]    Script Date: 7/11/2020 14:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lineaProducto](
	[idlinea] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](40) NOT NULL,
	[estado] [char](1) NOT NULL,
 CONSTRAINT [PK_idlinea] PRIMARY KEY CLUSTERED 
(
	[idlinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 7/11/2020 14:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[idproducto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[descripcion] [varchar](255) NULL,
	[precio] [money] NOT NULL,
	[fechavencimiento] [date] NOT NULL,
	[codigo] [char](8) NOT NULL,
	[cantidad] [int] NOT NULL,
	[idlinea] [int] NOT NULL,
	[estado] [char](1) NOT NULL,
	[idEstante] [int] NOT NULL,
 CONSTRAINT [PK_idproducto] PRIMARY KEY CLUSTERED 
(
	[idproducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 7/11/2020 14:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursal](
	[idsucursal] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](80) NOT NULL,
	[descripcion] [varchar](255) NULL,
	[direccion] [varchar](125) NOT NULL,
	[telefono] [varchar](20) NOT NULL,
	[email] [varchar](80) NULL,
	[estado] [char](1) NOT NULL,
 CONSTRAINT [PK_idSucursal] PRIMARY KEY CLUSTERED 
(
	[idsucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_emailSucursal] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[telefono]    Script Date: 7/11/2020 14:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[telefono](
	[idtelefono] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[idempresa] [int] NOT NULL,
	[telefono] [varchar](20) NOT NULL,
	[estado] [bit] NOT NULL,
	[principal] [bit] NOT NULL,
 CONSTRAINT [PK_idtelefono] PRIMARY KEY CLUSTERED 
(
	[idtelefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipoTrabajador]    Script Date: 7/11/2020 14:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoTrabajador](
	[idtipo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](40) NOT NULL,
 CONSTRAINT [PK_idtipo] PRIMARY KEY CLUSTERED 
(
	[idtipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_nombreTipoTrab] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trabajador]    Script Date: 7/11/2020 14:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trabajador](
	[idtrabajador] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](40) NOT NULL,
	[apellido] [varchar](40) NOT NULL,
	[fechanac] [date] NOT NULL,
	[dni] [varchar](8) NOT NULL,
	[telefono] [varchar](10) NULL,
	[email] [varchar](40) NULL,
	[idtipo] [int] NOT NULL,
	[estado] [char](1) NOT NULL,
	[Sueldo] [float] NULL,
 CONSTRAINT [PK_idtrabajador] PRIMARY KEY CLUSTERED 
(
	[idtrabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turno]    Script Date: 7/11/2020 14:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turno](
	[idturno] [int] IDENTITY(1,1) NOT NULL,
	[horainicio] [time](7) NOT NULL,
	[horasalida] [time](7) NOT NULL,
	[nombre] [varchar](20) NOT NULL,
 CONSTRAINT [PK_idturno] PRIMARY KEY CLUSTERED 
(
	[idturno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_nombreTurno] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 7/11/2020 14:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[idVenta] [int] IDENTITY(1,1) NOT NULL,
	[TotalVenta] [money] NOT NULL,
	[idTrabajador] [int] NOT NULL,
	[idCliente] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[estado] [char](1) NOT NULL,
	[tipoPago] [bit] NOT NULL,
	[descuento] [float] NOT NULL,
	[IGV] [float] NOT NULL,
 CONSTRAINT [PK_idVenta] PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zona]    Script Date: 7/11/2020 14:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zona](
	[idZona] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](40) NOT NULL,
	[idsucursal] [int] NOT NULL,
 CONSTRAINT [PK_idzona] PRIMARY KEY CLUSTERED 
(
	[idZona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Asignacion] ADD  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ((0)) FOR [genero]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [dbo].[direccion] ADD  DEFAULT ((0)) FOR [principal]
GO
ALTER TABLE [dbo].[email] ADD  DEFAULT ((0)) FOR [principal]
GO
ALTER TABLE [dbo].[Estante] ADD  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [dbo].[lineaProducto] ADD  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [dbo].[Producto] ADD  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [dbo].[telefono] ADD  DEFAULT ((0)) FOR [principal]
GO
ALTER TABLE [dbo].[Trabajador] ADD  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [dbo].[AreaSucursal]  WITH CHECK ADD  CONSTRAINT [FK_idArea] FOREIGN KEY([idArea])
REFERENCES [dbo].[Area] ([IDarea])
GO
ALTER TABLE [dbo].[AreaSucursal] CHECK CONSTRAINT [FK_idArea]
GO
ALTER TABLE [dbo].[AreaSucursal]  WITH CHECK ADD  CONSTRAINT [FK_idSucursal] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[Sucursal] ([idsucursal])
GO
ALTER TABLE [dbo].[AreaSucursal] CHECK CONSTRAINT [FK_idSucursal]
GO
ALTER TABLE [dbo].[AreaTrabajador]  WITH CHECK ADD  CONSTRAINT [FK_idareaAreaTrabajador] FOREIGN KEY([idArea])
REFERENCES [dbo].[Area] ([IDarea])
GO
ALTER TABLE [dbo].[AreaTrabajador] CHECK CONSTRAINT [FK_idareaAreaTrabajador]
GO
ALTER TABLE [dbo].[AreaTrabajador]  WITH CHECK ADD  CONSTRAINT [FK_idtrabajadorAreaTrabajador] FOREIGN KEY([idTrabajador])
REFERENCES [dbo].[Trabajador] ([idtrabajador])
GO
ALTER TABLE [dbo].[AreaTrabajador] CHECK CONSTRAINT [FK_idtrabajadorAreaTrabajador]
GO
ALTER TABLE [dbo].[Asignacion]  WITH CHECK ADD FOREIGN KEY([idturno])
REFERENCES [dbo].[Turno] ([idturno])
GO
ALTER TABLE [dbo].[Asignacion]  WITH CHECK ADD  CONSTRAINT [FK_trabajadorAsignacion] FOREIGN KEY([idtrabajador])
REFERENCES [dbo].[Trabajador] ([idtrabajador])
GO
ALTER TABLE [dbo].[Asignacion] CHECK CONSTRAINT [FK_trabajadorAsignacion]
GO
ALTER TABLE [dbo].[detalleventa]  WITH CHECK ADD  CONSTRAINT [FK_detalleventa_Producto1] FOREIGN KEY([idproducto])
REFERENCES [dbo].[Producto] ([idproducto])
GO
ALTER TABLE [dbo].[detalleventa] CHECK CONSTRAINT [FK_detalleventa_Producto1]
GO
ALTER TABLE [dbo].[detalleventa]  WITH CHECK ADD  CONSTRAINT [FK_detalleventa_Venta] FOREIGN KEY([idventa])
REFERENCES [dbo].[Venta] ([idVenta])
GO
ALTER TABLE [dbo].[detalleventa] CHECK CONSTRAINT [FK_detalleventa_Venta]
GO
ALTER TABLE [dbo].[direccion]  WITH CHECK ADD  CONSTRAINT [FK_idclienteDireccion] FOREIGN KEY([idcliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[direccion] CHECK CONSTRAINT [FK_idclienteDireccion]
GO
ALTER TABLE [dbo].[email]  WITH CHECK ADD  CONSTRAINT [FK_iclienteEmail] FOREIGN KEY([idcliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[email] CHECK CONSTRAINT [FK_iclienteEmail]
GO
ALTER TABLE [dbo].[Estante]  WITH CHECK ADD  CONSTRAINT [FK_idzonaEstante] FOREIGN KEY([idzona])
REFERENCES [dbo].[Zona] ([idZona])
GO
ALTER TABLE [dbo].[Estante] CHECK CONSTRAINT [FK_idzonaEstante]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_IDEstante] FOREIGN KEY([idEstante])
REFERENCES [dbo].[Estante] ([idEstante])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_IDEstante]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_idlineaProducto] FOREIGN KEY([idlinea])
REFERENCES [dbo].[lineaProducto] ([idlinea])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_idlineaProducto]
GO
ALTER TABLE [dbo].[telefono]  WITH CHECK ADD  CONSTRAINT [FK_idclienteTelefono] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[telefono] CHECK CONSTRAINT [FK_idclienteTelefono]
GO
ALTER TABLE [dbo].[telefono]  WITH CHECK ADD  CONSTRAINT [FK_idempresaTelefono] FOREIGN KEY([idempresa])
REFERENCES [dbo].[empresatelefonica] ([idempresa])
GO
ALTER TABLE [dbo].[telefono] CHECK CONSTRAINT [FK_idempresaTelefono]
GO
ALTER TABLE [dbo].[Trabajador]  WITH CHECK ADD  CONSTRAINT [FK_idtipoTrabajador] FOREIGN KEY([idtipo])
REFERENCES [dbo].[tipoTrabajador] ([idtipo])
GO
ALTER TABLE [dbo].[Trabajador] CHECK CONSTRAINT [FK_idtipoTrabajador]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_idclienteVenta] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_idclienteVenta]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_idtrabajadorVenta] FOREIGN KEY([idTrabajador])
REFERENCES [dbo].[Trabajador] ([idtrabajador])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_idtrabajadorVenta]
GO
ALTER TABLE [dbo].[Zona]  WITH CHECK ADD  CONSTRAINT [FK_idsucursalZona] FOREIGN KEY([idsucursal])
REFERENCES [dbo].[Sucursal] ([idsucursal])
GO
ALTER TABLE [dbo].[Zona] CHECK CONSTRAINT [FK_idsucursalZona]
GO
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD  CONSTRAINT [CH_EstadoSucursal] CHECK  (([estado]='I' OR [estado]='A'))
GO
ALTER TABLE [dbo].[Sucursal] CHECK CONSTRAINT [CH_EstadoSucursal]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [CH_EstadoVenta] CHECK  (([estado]='A' OR [estado]='T' OR [estado]='P'))
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [CH_EstadoVenta]
GO
/****** Object:  StoredProcedure [dbo].[listarcliente]    Script Date: 7/11/2020 14:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[listarcliente]
as
BEGIN
	SELECT TOP 20 *
	from Cliente
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_BuscarCliente]    Script Date: 7/11/2020 14:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_BuscarCliente]
@texto as varchar(40)
as
begin
	SELECT *
	from Cliente
	where apellidos like @texto + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarCliente]    Script Date: 7/11/2020 14:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_RegistrarCliente]

@nombres varchar(40),
@apellidos varchar(40),
@dni char(8),
@fechNacimiento date,
@genero bit,
@tipocliente bit,
@ruc char (20),
@estado bit

AS
BEGIN
insert into Cliente
values (@nombres, 
        @apellidos, 
		@dni, 
		@fechNacimiento, 
		@genero, 
		@tipocliente, 
		@ruc, 
		@estado)

END
GO
USE [master]
GO
ALTER DATABASE [DBSupermercado] SET  READ_WRITE 
GO
