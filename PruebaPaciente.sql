USE [master]
GO
/****** Object:  Database [PruebaPaciente]    Script Date: 06/06/2022 17:05:58 ******/
CREATE DATABASE [PruebaPaciente]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PruebaPaciente', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PruebaPaciente.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PruebaPaciente_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PruebaPaciente_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PruebaPaciente] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PruebaPaciente].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PruebaPaciente] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PruebaPaciente] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PruebaPaciente] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PruebaPaciente] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PruebaPaciente] SET ARITHABORT OFF 
GO
ALTER DATABASE [PruebaPaciente] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PruebaPaciente] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PruebaPaciente] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PruebaPaciente] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PruebaPaciente] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PruebaPaciente] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PruebaPaciente] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PruebaPaciente] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PruebaPaciente] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PruebaPaciente] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PruebaPaciente] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PruebaPaciente] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PruebaPaciente] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PruebaPaciente] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PruebaPaciente] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PruebaPaciente] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PruebaPaciente] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PruebaPaciente] SET RECOVERY FULL 
GO
ALTER DATABASE [PruebaPaciente] SET  MULTI_USER 
GO
ALTER DATABASE [PruebaPaciente] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PruebaPaciente] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PruebaPaciente] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PruebaPaciente] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PruebaPaciente] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PruebaPaciente] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PruebaPaciente', N'ON'
GO
ALTER DATABASE [PruebaPaciente] SET QUERY_STORE = OFF
GO
USE [PruebaPaciente]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 06/06/2022 17:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[ID_Paciente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Paciente] [varchar](20) NOT NULL,
	[Apellido_Paciente] [varchar](20) NOT NULL,
	[Fecha_Nacimiento] [date] NOT NULL,
	[Tipo_Documento] [varchar](20) NOT NULL,
	[Numero_Documento] [varchar](20) NOT NULL,
	[Sexo_Paciente] [varchar](1) NOT NULL,
	[Direccion_Paciente] [varchar](30) NOT NULL,
	[Ciudad_Residencia] [varchar](30) NOT NULL,
	[Correo_Paciente] [varchar](50) NOT NULL,
	[Telefono_Paciente] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [PruebaPaciente] SET  READ_WRITE 
GO
