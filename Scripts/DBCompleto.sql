USE [db_IPV_Ejecucion]
GO
ALTER TABLE [dbo].[TipoCertificado] DROP CONSTRAINT [FK_TipoCertificado_TipoCertificadoCat]
GO
ALTER TABLE [dbo].[Seguimiento] DROP CONSTRAINT [FK_Seguimiento_Obra]
GO
ALTER TABLE [dbo].[relaSeguimientoPersona] DROP CONSTRAINT [FK_relaSeguimientoPersona_Seguimiento]
GO
ALTER TABLE [dbo].[relaSeguimientoPersona] DROP CONSTRAINT [FK_relaSeguimientoPersona_rolSeguimiento]
GO
ALTER TABLE [dbo].[relaSeguimientoPersona] DROP CONSTRAINT [FK_relaSeguimientoPersona_Personas]
GO
ALTER TABLE [dbo].[relaObraPrototipo] DROP CONSTRAINT [FK_relaObraPrototipo_Prototipos]
GO
ALTER TABLE [dbo].[relaObraPrototipo] DROP CONSTRAINT [FK_relaObraPrototipo_Obra]
GO
ALTER TABLE [dbo].[relaObraCertificado] DROP CONSTRAINT [FK_relaObraCertificado2_TipoCertificado]
GO
ALTER TABLE [dbo].[relaObraCertificado] DROP CONSTRAINT [FK_relaObraCertificado2_Obra]
GO
ALTER TABLE [dbo].[relaObraAportes] DROP CONSTRAINT [FK_relaObraAportes_TipoAportes]
GO
ALTER TABLE [dbo].[relaObraAportes] DROP CONSTRAINT [FK_relaObraAportes_Obra]
GO
ALTER TABLE [dbo].[relaObraAnticipoFinanciero] DROP CONSTRAINT [FK_relaObraAnticipoFinanciero_TipoAnticipoFinanciero]
GO
ALTER TABLE [dbo].[relaObraAnticipoFinanciero] DROP CONSTRAINT [FK_relaObraAnticipoFinanciero_Obra]
GO
ALTER TABLE [dbo].[Obra] DROP CONSTRAINT [FK_Obra_Programa]
GO
ALTER TABLE [dbo].[Obra] DROP CONSTRAINT [FK_Obra_EmpresaConstructora]
GO
ALTER TABLE [dbo].[Obra] DROP CONSTRAINT [FK_Obra_DptoProvincia]
GO
ALTER TABLE [dbo].[Entregas] DROP CONSTRAINT [FK_Entregas_relaObraPrototipo]
GO
ALTER TABLE [dbo].[CertificadoPagoDetalle] DROP CONSTRAINT [FK_CertificadoPagoDetalle_TipoCertPagoRubro]
GO
ALTER TABLE [dbo].[CertificadoPagoDetalle] DROP CONSTRAINT [FK_CertificadoPagoDetalle_CertificadoPago]
GO
ALTER TABLE [dbo].[CertificadoPago] DROP CONSTRAINT [FK_CertificadoPago_Param_Meses]
GO
ALTER TABLE [dbo].[CertificadoPago] DROP CONSTRAINT [FK_CertificadoPago_Obra]
GO
ALTER TABLE [dbo].[CertificadoObra] DROP CONSTRAINT [FK_CertificadoObra_Obra]
GO
ALTER TABLE [dbo].[Avance] DROP CONSTRAINT [FK_Avance_Obra]
GO
ALTER TABLE [dbo].[AspNetUsersBlock] DROP CONSTRAINT [FK_AspNetUsersBlock_AspNetUsers]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Table [dbo].[TipoCertPagoRubro]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[TipoCertPagoRubro]
GO
/****** Object:  Table [dbo].[TipoCertificadoCat]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[TipoCertificadoCat]
GO
/****** Object:  Table [dbo].[TipoCertificado]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[TipoCertificado]
GO
/****** Object:  Table [dbo].[TipoAportes]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[TipoAportes]
GO
/****** Object:  Table [dbo].[TipoAnticipoFinanciero]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[TipoAnticipoFinanciero]
GO
/****** Object:  Table [dbo].[Seguimiento]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[Seguimiento]
GO
/****** Object:  Table [dbo].[rolSeguimiento]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[rolSeguimiento]
GO
/****** Object:  Table [dbo].[relaSeguimientoPersona]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[relaSeguimientoPersona]
GO
/****** Object:  Table [dbo].[relaObraPrototipo]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[relaObraPrototipo]
GO
/****** Object:  Table [dbo].[relaObraMovilidad]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[relaObraMovilidad]
GO
/****** Object:  Table [dbo].[relaObraEqInformatico]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[relaObraEqInformatico]
GO
/****** Object:  Table [dbo].[relaObraContratados]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[relaObraContratados]
GO
/****** Object:  Table [dbo].[relaObraCertificado]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[relaObraCertificado]
GO
/****** Object:  Table [dbo].[relaObraAportes]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[relaObraAportes]
GO
/****** Object:  Table [dbo].[relaObraAnticipoFinanciero]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[relaObraAnticipoFinanciero]
GO
/****** Object:  Table [dbo].[Prototipos]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[Prototipos]
GO
/****** Object:  Table [dbo].[Programa]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[Programa]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[Personas]
GO
/****** Object:  Table [dbo].[Param_Meses]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[Param_Meses]
GO
/****** Object:  Table [dbo].[Obra]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[Obra]
GO
/****** Object:  Table [dbo].[Movilidad]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[Movilidad]
GO
/****** Object:  Table [dbo].[EstadoObra]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[EstadoObra]
GO
/****** Object:  Table [dbo].[EquipoInformatico]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[EquipoInformatico]
GO
/****** Object:  Table [dbo].[Entregas]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[Entregas]
GO
/****** Object:  Table [dbo].[EmpresaConstructora]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[EmpresaConstructora]
GO
/****** Object:  Table [dbo].[DptoProvincia]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[DptoProvincia]
GO
/****** Object:  Table [dbo].[Certificados]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[Certificados]
GO
/****** Object:  Table [dbo].[CertificadoPagoDetalle]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[CertificadoPagoDetalle]
GO
/****** Object:  Table [dbo].[CertificadoPago]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[CertificadoPago]
GO
/****** Object:  Table [dbo].[CertificadoObra]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[CertificadoObra]
GO
/****** Object:  Table [dbo].[Avance]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[Avance]
GO
/****** Object:  Table [dbo].[AspNetUsersBlock]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[AspNetUsersBlock]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 5/4/2019 10:14:35 a. m. ******/
DROP TABLE [dbo].[__MigrationHistory]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 5/4/2019 10:14:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/4/2019 10:14:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/4/2019 10:14:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/4/2019 10:14:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/4/2019 10:14:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/4/2019 10:14:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsersBlock]    Script Date: 5/4/2019 10:14:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsersBlock](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[FechaBloqueo] [date] NOT NULL,
 CONSTRAINT [PK_AspNetUsersBlock] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Avance]    Script Date: 5/4/2019 10:14:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Avance](
	[IdAvance] [int] IDENTITY(1,1) NOT NULL,
	[porcentajePrevisto] [float] NOT NULL,
	[porcentajeReal] [float] NULL,
	[porcentajeAtraso] [float] NULL,
	[IdObra] [int] NULL,
	[FechaAvance] [date] NULL,
 CONSTRAINT [PK_Avance] PRIMARY KEY CLUSTERED 
(
	[IdAvance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CertificadoObra]    Script Date: 5/4/2019 10:14:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CertificadoObra](
	[IdCertificadoObra] [int] IDENTITY(1,1) NOT NULL,
	[IdObra] [int] NOT NULL,
	[NroCertificado] [nchar](10) NULL,
	[FechaCertificado] [date] NOT NULL,
	[MesCorresp] [int] NOT NULL,
	[AnioCorresp] [int] NOT NULL,
	[ImporteCertificado] [float] NOT NULL,
	[ImpCertUVI] [float] NOT NULL,
	[ImpRetencion] [float] NOT NULL,
	[ImpRetencionUVI] [float] NOT NULL,
 CONSTRAINT [PK_CertificadoObra] PRIMARY KEY CLUSTERED 
(
	[IdCertificadoObra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CertificadoPago]    Script Date: 5/4/2019 10:14:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CertificadoPago](
	[IdCertPago] [int] IDENTITY(1,1) NOT NULL,
	[IdObra] [int] NOT NULL,
	[NroCertPago] [nchar](50) NOT NULL,
	[FechaCertPago] [date] NOT NULL,
	[CorrespMes] [int] NOT NULL,
	[CorrespAnio] [int] NOT NULL,
 CONSTRAINT [PK_CertificadoPago] PRIMARY KEY CLUSTERED 
(
	[IdCertPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CertificadoPagoDetalle]    Script Date: 5/4/2019 10:14:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CertificadoPagoDetalle](
	[IdCertPagoDetalle] [int] NOT NULL,
	[IdCertPago] [int] NOT NULL,
	[PorcentajePrevMensual] [float] NOT NULL,
	[PorcentajePrevAcumulado] [float] NOT NULL,
	[PorcentajeFisicoMensual] [float] NOT NULL,
	[PorcentajeFisicoAcumuladol] [float] NOT NULL,
	[IdRubro] [int] NOT NULL,
 CONSTRAINT [PK_CertificadoPagoDetalle] PRIMARY KEY CLUSTERED 
(
	[IdCertPagoDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Certificados]    Script Date: 5/4/2019 10:14:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certificados](
	[IdCertificado] [int] IDENTITY(1,1) NOT NULL,
	[Certificado] [varchar](50) NOT NULL,
	[IdTipoCertificado] [int] NULL,
 CONSTRAINT [PK_Certificados] PRIMARY KEY CLUSTERED 
(
	[IdCertificado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DptoProvincia]    Script Date: 5/4/2019 10:14:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DptoProvincia](
	[IdDptoProvincia] [int] IDENTITY(1,1) NOT NULL,
	[DptoProvincia] [varchar](100) NOT NULL,
 CONSTRAINT [PK_DptoProvincia] PRIMARY KEY CLUSTERED 
(
	[IdDptoProvincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpresaConstructora]    Script Date: 5/4/2019 10:14:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpresaConstructora](
	[IdEmpConstructora] [int] IDENTITY(1,1) NOT NULL,
	[EmpresaConstructora] [varchar](100) NOT NULL,
 CONSTRAINT [PK_EmpresaConstructora] PRIMARY KEY CLUSTERED 
(
	[IdEmpConstructora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entregas]    Script Date: 5/4/2019 10:14:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entregas](
	[IdEntrega] [int] IDENTITY(1,1) NOT NULL,
	[FechaEntrega] [date] NOT NULL,
	[CantEntregada] [int] NOT NULL,
	[IdrelaObraPrototipo] [int] NOT NULL,
 CONSTRAINT [PK_Entregas] PRIMARY KEY CLUSTERED 
(
	[IdEntrega] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipoInformatico]    Script Date: 5/4/2019 10:14:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipoInformatico](
	[IdEquipoInformatico] [int] IDENTITY(1,1) NOT NULL,
	[EquipoInformático] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EquipoInformatico] PRIMARY KEY CLUSTERED 
(
	[IdEquipoInformatico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoObra]    Script Date: 5/4/2019 10:14:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoObra](
	[IdEstadoObra] [int] IDENTITY(1,1) NOT NULL,
	[EstadoObra] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EstadoObra] PRIMARY KEY CLUSTERED 
(
	[IdEstadoObra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movilidad]    Script Date: 5/4/2019 10:14:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movilidad](
	[IdMovilidad] [int] IDENTITY(1,1) NOT NULL,
	[Movilidad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Movilidad] PRIMARY KEY CLUSTERED 
(
	[IdMovilidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Obra]    Script Date: 5/4/2019 10:14:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Obra](
	[IdObra] [int] IDENTITY(1,1) NOT NULL,
	[expMatriz] [varchar](50) NULL,
	[Obra] [varchar](100) NOT NULL,
	[ACCU] [varchar](50) NULL,
	[IdDptoProvincia] [int] NULL,
	[IdPrograma] [int] NULL,
	[IdEmpConstructora] [int] NULL,
	[cantParaSorteo] [int] NULL,
	[montoOriginal] [float] NULL,
	[licitacionResolucion] [varchar](50) NULL,
	[plazoOriginal] [int] NULL,
	[fechaFinalizacion] [date] NULL,
	[MontoContratoPesos] [float] NULL,
	[MontoContratoUVI] [float] NULL,
	[FechaOferta] [date] NULL,
	[FechaInicio] [date] NULL,
 CONSTRAINT [PK_Obra] PRIMARY KEY CLUSTERED 
(
	[IdObra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Param_Meses]    Script Date: 5/4/2019 10:14:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Param_Meses](
	[IdMes] [int] NOT NULL,
	[Mes] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Param_Meses] PRIMARY KEY CLUSTERED 
(
	[IdMes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 5/4/2019 10:14:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personas](
	[IdPersona] [int] IDENTITY(1,1) NOT NULL,
	[ApellidoNombre] [varchar](100) NOT NULL,
	[Documento] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Contratados] PRIMARY KEY CLUSTERED 
(
	[IdPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Programa]    Script Date: 5/4/2019 10:14:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programa](
	[IdPrograma] [int] IDENTITY(1,1) NOT NULL,
	[Programa] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Programa] PRIMARY KEY CLUSTERED 
(
	[IdPrograma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prototipos]    Script Date: 5/4/2019 10:14:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prototipos](
	[IdPrototipo] [int] IDENTITY(1,1) NOT NULL,
	[Prototipo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Prototipos] PRIMARY KEY CLUSTERED 
(
	[IdPrototipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[relaObraAnticipoFinanciero]    Script Date: 5/4/2019 10:14:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[relaObraAnticipoFinanciero](
	[IdRelaObraAnticipoF] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoAntFinanciero] [int] NOT NULL,
	[IdObra] [int] NOT NULL,
	[FechaAnticipo] [date] NOT NULL,
	[ImporteAnticipo] [float] NOT NULL,
	[ImporteUviAnticipo] [float] NULL,
 CONSTRAINT [PK_relaObraAnticipoFinanciero] PRIMARY KEY CLUSTERED 
(
	[IdRelaObraAnticipoF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[relaObraAportes]    Script Date: 5/4/2019 10:14:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[relaObraAportes](
	[IdRelaAportesObra] [int] IDENTITY(1,1) NOT NULL,
	[Idaportes] [int] NOT NULL,
	[IdObra] [int] NOT NULL,
	[FechaAporte] [date] NOT NULL,
	[ImporteAporte] [float] NOT NULL,
	[ImpAporteUVI] [float] NOT NULL,
 CONSTRAINT [PK_relaObraAportes] PRIMARY KEY CLUSTERED 
(
	[IdRelaAportesObra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[relaObraCertificado]    Script Date: 5/4/2019 10:14:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[relaObraCertificado](
	[IdrelaObraCertificado] [int] IDENTITY(1,1) NOT NULL,
	[FechaPresentacion] [date] NOT NULL,
	[IdTipoCertificado] [int] NOT NULL,
	[IdObra] [int] NOT NULL,
	[Certificado] [nchar](50) NOT NULL,
 CONSTRAINT [PK_relaObraCertificado2] PRIMARY KEY CLUSTERED 
(
	[IdrelaObraCertificado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[relaObraContratados]    Script Date: 5/4/2019 10:14:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[relaObraContratados](
	[IdrelaObraContratado] [int] IDENTITY(1,1) NOT NULL,
	[IdObra] [int] NULL,
	[IdPersona] [int] NULL,
	[FechaDesde] [date] NULL,
	[FechaHasta] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[relaObraEqInformatico]    Script Date: 5/4/2019 10:14:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[relaObraEqInformatico](
	[IdrelaObraEqInformatico] [int] NOT NULL,
	[IdEquipoInformatico] [int] NULL,
	[IdObra] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[relaObraMovilidad]    Script Date: 5/4/2019 10:14:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[relaObraMovilidad](
	[IdrelaObraMovilidad] [int] IDENTITY(1,1) NOT NULL,
	[FechaDesde] [date] NULL,
	[FechaHasta] [date] NULL,
	[IdMovilidad] [int] NULL,
	[IdObra] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[relaObraPrototipo]    Script Date: 5/4/2019 10:14:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[relaObraPrototipo](
	[IdrelaObraPrototipo] [int] IDENTITY(1,1) NOT NULL,
	[Cantidad] [int] NOT NULL,
	[IdObra] [int] NULL,
	[IdPrototipo] [int] NULL,
	[CantidadParaSorteo] [int] NULL,
 CONSTRAINT [PK_relaObraPrototipo] PRIMARY KEY CLUSTERED 
(
	[IdrelaObraPrototipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[relaSeguimientoPersona]    Script Date: 5/4/2019 10:14:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[relaSeguimientoPersona](
	[IdRelaseguimientoPersona] [int] IDENTITY(1,1) NOT NULL,
	[IdRolSeguimiento] [int] NOT NULL,
	[IdSeguimiento] [int] NOT NULL,
	[IdPersona] [int] NOT NULL,
 CONSTRAINT [PK_relaSeguimientoPersona] PRIMARY KEY CLUSTERED 
(
	[IdRelaseguimientoPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rolSeguimiento]    Script Date: 5/4/2019 10:14:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rolSeguimiento](
	[IdRolSeguimiento] [int] IDENTITY(1,1) NOT NULL,
	[RolSeguimiento] [varchar](50) NOT NULL,
 CONSTRAINT [PK_rolSeguimiento] PRIMARY KEY CLUSTERED 
(
	[IdRolSeguimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seguimiento]    Script Date: 5/4/2019 10:14:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seguimiento](
	[IdSeguimiento] [int] IDENTITY(1,1) NOT NULL,
	[FechaSeguimiento] [date] NOT NULL,
	[IdObra] [int] NOT NULL,
	[IdEstadoObra] [int] NOT NULL,
 CONSTRAINT [PK_Seguimiento] PRIMARY KEY CLUSTERED 
(
	[IdSeguimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoAnticipoFinanciero]    Script Date: 5/4/2019 10:14:40 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoAnticipoFinanciero](
	[IdTipoAntFinanciero] [int] IDENTITY(1,1) NOT NULL,
	[TipoAntFinanciero] [nchar](50) NOT NULL,
 CONSTRAINT [PK_TipoAnticipoFinanciero] PRIMARY KEY CLUSTERED 
(
	[IdTipoAntFinanciero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoAportes]    Script Date: 5/4/2019 10:14:40 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoAportes](
	[IdAportes] [int] IDENTITY(1,1) NOT NULL,
	[AportesDesc] [nchar](50) NOT NULL,
 CONSTRAINT [PK_TipoAportes] PRIMARY KEY CLUSTERED 
(
	[IdAportes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoCertificado]    Script Date: 5/4/2019 10:14:40 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCertificado](
	[IdTipoCertificado] [int] IDENTITY(1,1) NOT NULL,
	[TipoCertificado] [varchar](100) NOT NULL,
	[idTipoCertificadoCat] [int] NOT NULL,
 CONSTRAINT [PK_TipoCertificado] PRIMARY KEY CLUSTERED 
(
	[IdTipoCertificado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoCertificadoCat]    Script Date: 5/4/2019 10:14:40 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCertificadoCat](
	[idCatCertificado] [int] IDENTITY(1,1) NOT NULL,
	[CatCertificado] [nchar](50) NOT NULL,
 CONSTRAINT [PK_TipoCertificadoCat] PRIMARY KEY CLUSTERED 
(
	[idCatCertificado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoCertPagoRubro]    Script Date: 5/4/2019 10:14:40 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCertPagoRubro](
	[IdTipoCertPagoRubro] [int] IDENTITY(1,1) NOT NULL,
	[TipoCertPagoRubro] [nchar](50) NOT NULL,
 CONSTRAINT [PK_TipoCertPagoRubro] PRIMARY KEY CLUSTERED 
(
	[IdTipoCertPagoRubro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201901301230558_InitialCreate', N'WebAppEjecucion.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE336107D2FD07F10F4D416A9954B77B10DEC2E52276983E68675B6EDDB829668475D89D24A549AA0E897F5A19FD45FE850A26EBCE8622BB6B32850AC45F2CC7078480E87C3FCF7CFBFE3B78FBE673CE028760332310F46FBA681891D382E594ECC842EBE7D63BEFDE1CB2FC6678EFF68FC9AD73B62F5A0258927E63DA5E1B165C5F63DF6513CF25D3B0AE260414776E05BC809ACC3FDFDEFAD83030B0384095886317E9710EAFA38FD013FA701B1714813E45D050EF662FE1D4A6629AA718D7C1C87C8C613F3373C3F09C3B33FB09DD8A0CB286B611A279E8B409B19F616A681080928A2507EFC3EC6331A0564390BE103F2EE9E420CF516C88B31EFC37159BD6B77F60F5977ACB2610E6527310DFC9E800747DC3E96D87C252B9B85FDC082676069FAC47A9D5A71625E3838FDF42EF0C000A2C0E3A917B1CA13F3AA10711287D7988EF286A30CF23C02B83F83E8E3A88AB867746EB757F0E970B4CFFEDB33A6894793084F084E6884BC3DE336997BAEFD0B7EBA0B3E6232393A982F8EDEBC7A8D9CA3D7DFE1A357D59E425FA15EED037CBA8D821047A01B5E14FD370DABDECE121B16CD2A6D32AB0097606A98C6157ABCC46449EF61D21CBE318D73F7113BF9174EAEF7C48599048D6894C0CFEBC4F3D0DCC345B9D52893FDBF41EAE1ABD78348BD460FEE321D7A413E4C9C08E6D53BECA5A5F1BD1B66D3AB36DE1F78B5F328F0D9EF3ABFB2D20FB320896CD699405BE50E454B4CEBDA8DAD92BC9D28CDA086A7758EBAFBD4669ACAF45656651D5A6526E422363D1B727D9F576E67C6C116048397528B59A48970EA0D6B2420EC1942BD9242075D2944A06B9FF38A78E623D71B6049EC20053C92851BF9B8E8E58F01101091DE3ADFA2388615C1F919C5F70DAAC33F07507D06DC8980A8338AFCF0D9A5DDDE07045F27FE9CF17F73B2061B9ABB3F837364D3203A23ACD5DA789781FD3148E819714E11C5EFA99D03B29F77AEDF1D6010754E6C1BC7F13990193BD3001CEE1CF082D0A3C3DE706C91DAB64B32F590EBAB7D126139FD90572DFD12750DC937D15453F9274DAA5E064B97745335AFAA5735ABD1AA2AAFD6575506D64D535E53AF685AA155CFACD6601E5F3A42C3BB7C29ECEEFB7CEB6DDEBAB5A062C619AC90F8274C7004CB98738B28C5112947A0CBBAB10D67211D3E26F4D9F7A654D2AFC84B8616B5D26C481781E167430ABBFBB32155133E3FB80EF34A3A1C84F2CA00DFA9BEFA8CD53EE704CD363D1D6ADDDCB4F0CDAC01BAE97212C781EDA6B3401102E3018CBAFEE0C319EDD18CAC376244043A064477D996075FA06FA648AA1B728A3D4CB171626721C2298A6DE4C866840E393D14CB775485626564A4AEDC37924C603A8E5823C40E4131CC549750795AB8C47643E4B55A4968D9710B637D2F648825A738C484096CB54417E1EA400853A090230C4A9B85C6568571CD44D478ADBA316F7361CB7197E2131BE1648BEFACE125F7DF9E8598CD16DB00399B4DD245016D506F1B04E56795AE04100F2EBB4650E1C4A4212877A93642D0BAC5B640D0BA495E1C41B3236AD7F117CEABBB46CFFA4179F3DB7AA3B9B6C0CD9A3D768C9A99EF096D28B4C0914CCFD3392BC48F547138033DF9F92CE6AEAE4811063EC3B41EB229FD5DA51F6A358388246A022C89D602CAAF0325206942F5502E8FE5356AC7BD881EB079DCAD1196AFFD026C85033276F55AB452517F792A92B3D3E9A3E859C10689E49D0E0B151C0521C4C5ABDEF10E46D1C56565C374F185FB78C3958EF1C16830508BE7AA3152DE99C1AD9453B3DD4A2A87AC8F4BB6969504F74963A5BC33835B8973B4DD480AA7A0875BB09689EA5BF840932D8F7414BB4D5136B6B28C29FE616C6952ABC657280C5DB2ACA45AF12FC62CCBB39A7E3BEB9F7CE46718961D2B72900A6D0B493488D0120BA5201A343D77A3989E228AE688C579A68E2F5553EEAD9AE53F1759DD3EE541CCF781BC36FB77D64273895FDB6F658784E39C432F7DE6D5A4A1740507D4CD0D96FE863C1429A2F7D3C04B7CA277B2F4ADB33BBC6AFBEC8B8C30B604FD25274AB298E4EAD6CDDF6970E48931E040157ECCEA83A587D0993CF742AB46D779A67A943C505545D105AFB636783A87A6F78089FE62FFF16A45789EF9C59354AA00FC534F8C4A9E83045629EB8E5A4F45A962D64BBA230AF9265548A1A88796D5AC929A92D58295F0341655D7E82E41CE23A9A2CBA5DD91151925556845F10AD80A9DC5B2EEA88AA4932AB0A2B83B769981222EA43BBC83694F316B6D61D96177BD3D4C83F13CABE2305B60E54EBF0A54F9DC138BDFDA4B60FCFB4E324A7BE25B8B51599C633D466930F42B50ED46BCBE00355EE3EB316BD7DCB545BEE99A5F8FD78FB7CFCA0EE9D0275629A417873FE19037E607AEF64736D2092CAB621AB91961837F8A29F647ACC268F6C99B7A2E66CB795EE10A117781639AA5769887FB0787C21B9DDD792F63C5B1E3290EACBA4733F531DB4096167940917D8F223967628D372525A8148EBE200E7E9C987FA5AD8ED3C806FB57FA79CFB888DF13F75302057751828DBFE51CD06172EC9B0F5C3BFA22A2BB552F7EFF9035DD336E229831C7C6BE60CB5546B8FE4EA2973659D335B459F9F5C4CB9D50B527094A546142ACFE0261EED2415E1FE45A7EE5A3C7AFFBAAA67C61B016A2E215C15078839850F74A60152CED0B01077ED2F48540BFCEAA5F0CACA29AF6B5804BFA83896F05BA2F4379CB2D6E358A73D12696A4D4CEADB9D66B255E6E7B6F9252B2D79AE872DA750FB83552AB5760C60BCB4A1E6C7754241D0F86BD4D6A3F7BA6F1AE241797691FDBCD29DE641A71C315D167953DBC03F96E8AFC9DEDE7086F9A6BBA58EE8E275AF6CB04DE31B2F1ACAEEDE7FB6E9A6CBA30EF8E93AD5756EF8E716D5BFBE79699D6790BDD7A8EAE9C6EA4B99351C582DB7270B3C0399CF0E7019020F328B3A793EAA4AFA684D516816515BD507DB69928589A38925CA946B3D87E7DE51B7E6367799D66B19A1CCD26D97CFD6F94CDEB34CBD6643E6E237B58997BA8CAE86E59C79A12A25E52B670AD272DC9E96D3E6BE305FB4B4A0E1EC428B5D9A3B9237E39B9C0839864C8A9D323F757BEEE85BDB3F2971761FF8EDD6509C1FE0E23C1766DD72CEA5C9045906FDE82467915214273852972604B3D89A8BB4036856216634EDF7EA7713B76D331C7CE05B949689850E832F6E75E2DE0C59C8026F96982735DE7F14D98FE199321BA006ABA2C367F437E4C5CCF29F43E57C4843410CCBBE0115D3696944576974F05D275403A0271F3154ED11DF6430FC0E21B32430F7815DD807E977889ECA73202A803691F88BAD9C7A72E5A46C88F3946D91E7E02871DFFF187FF0165C3AB7580540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'34ffbbc3-a8f0-4c7a-b86b-923e93995853', N'Administrador')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'343fcfb7-3abb-4167-a61c-65ea294d8eef', N'Certificador')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'204a50f1-a156-4f1a-ac73-3f5d3ca2e9af', N'EmpleadoIPV')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'b29bb34f-d153-47df-a7c4-e973ab6409a9', N'Inspector')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'63f7d560-59b8-42de-a60d-a6953c7fb326', N'Interventor')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3166c108-bf15-4f06-87e6-153d1035b08e', N'204a50f1-a156-4f1a-ac73-3f5d3ca2e9af')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4a161cb9-6442-4456-a6b6-82420ed89dcc', N'204a50f1-a156-4f1a-ac73-3f5d3ca2e9af')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8bff89ec-f16b-404d-8f1e-fcd832c4ad97', N'204a50f1-a156-4f1a-ac73-3f5d3ca2e9af')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cdc60c53-dda6-4d9d-94e0-3f8b84e7f4db', N'204a50f1-a156-4f1a-ac73-3f5d3ca2e9af')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0ceebb83-1e9a-4a07-bab3-fc88ca14a082', N'343fcfb7-3abb-4167-a61c-65ea294d8eef')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0ceebb83-1e9a-4a07-bab3-fc88ca14a082', N'34ffbbc3-a8f0-4c7a-b86b-923e93995853')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4a161cb9-6442-4456-a6b6-82420ed89dcc', N'34ffbbc3-a8f0-4c7a-b86b-923e93995853')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cdc60c53-dda6-4d9d-94e0-3f8b84e7f4db', N'34ffbbc3-a8f0-4c7a-b86b-923e93995853')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'0ceebb83-1e9a-4a07-bab3-fc88ca14a082', N'administrador@ipvsj.com.ar', 0, N'AOkt/mwHbh0I/wwWCMavLIBX/HOQZClJKsHmBMgg2+OqN8+/My9SvJlDHQY90LybJg==', N'a07a1674-4776-442a-bea3-9f85cfa33d17', N'4205264', 0, 0, NULL, 1, 0, N'administrador@ipvsj.com.ar')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3166c108-bf15-4f06-87e6-153d1035b08e', N'hpaez@ipvsj.com.ar', 0, N'ANjqWWDtXHjmNuEYfWwHsjLKTrAPvCUnTVXVHxy8+whxv19zG3Lw5xQv4Q7C3uL3cA==', N'0c818f0d-1c5d-4d38-8c6d-3f388b9c9450', NULL, 0, 0, NULL, 0, 0, N'hpaez@ipvsj.com.ar')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'4a161cb9-6442-4456-a6b6-82420ed89dcc', N'jamarfil@ipvsj.com.ar', 0, N'AFM0rYGVpbhFHUJcc5jQUBgdHG+7oXJZ9FLBZXyacBW8iNOXxEwrEYr1ZUnqoEmdRg==', N'8a187a97-3f8f-4ce6-9f42-58d84ce65785', N'2645201646', 0, 0, NULL, 1, 0, N'jamarfil@ipvsj.com.ar')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'4a1eaf34-7557-4118-bfaf-c5c8c1e70685', N'jcastro@ipvs.com.ar', 0, N'ADf5DH8aMXGIQ0Sgornsigk6HuTf6jGCLou5ah0A8QDReYTjv0vme+mGam2THfNfUg==', N'd9c4f26e-0071-424b-8a17-4b9b1e21b8a6', NULL, 0, 0, NULL, 0, 0, N'jcastro@ipvs.com.ar')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'8bff89ec-f16b-404d-8f1e-fcd832c4ad97', N'juampi@sanjuan.gov.ar', 0, N'AIK8XgITdYNSEsEGb5AuMZvmfm5AZpverrZUALtDPLJLwoYhzgEF8r6AtQNsrIzKZQ==', N'603fa9bb-5b0e-46de-b400-c8bcb65479c8', NULL, 0, 0, NULL, 0, 0, N'juampi@sanjuan.gov.ar')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'cdc60c53-dda6-4d9d-94e0-3f8b84e7f4db', N'ldiaz@ipvsj.com.ar', 0, N'AEDt7BPTQV20aJZhmwFvMPliygvBDP8xXa8GcqQkq+blefd921YGHN5RKEOLElSubQ==', N'3fc8752b-f43f-42fe-8d2f-3c93498e91a6', NULL, 0, 0, NULL, 0, 0, N'ldiaz@ipvsj.com.ar')
SET IDENTITY_INSERT [dbo].[Avance] ON 

INSERT [dbo].[Avance] ([IdAvance], [porcentajePrevisto], [porcentajeReal], [porcentajeAtraso], [IdObra], [FechaAvance]) VALUES (2, 15, 13, 2, 3, CAST(N'2019-01-02' AS Date))
INSERT [dbo].[Avance] ([IdAvance], [porcentajePrevisto], [porcentajeReal], [porcentajeAtraso], [IdObra], [FechaAvance]) VALUES (3, 15, 10, 5, 2, CAST(N'2019-01-10' AS Date))
INSERT [dbo].[Avance] ([IdAvance], [porcentajePrevisto], [porcentajeReal], [porcentajeAtraso], [IdObra], [FechaAvance]) VALUES (4, 30, 30, 0, 2, CAST(N'2019-01-29' AS Date))
INSERT [dbo].[Avance] ([IdAvance], [porcentajePrevisto], [porcentajeReal], [porcentajeAtraso], [IdObra], [FechaAvance]) VALUES (5, 35, 33, 2, 2, CAST(N'2019-01-31' AS Date))
INSERT [dbo].[Avance] ([IdAvance], [porcentajePrevisto], [porcentajeReal], [porcentajeAtraso], [IdObra], [FechaAvance]) VALUES (6, 50, 50, 0, 2, CAST(N'2019-01-31' AS Date))
INSERT [dbo].[Avance] ([IdAvance], [porcentajePrevisto], [porcentajeReal], [porcentajeAtraso], [IdObra], [FechaAvance]) VALUES (7, 35, 32, 3, 3, CAST(N'2019-01-25' AS Date))
INSERT [dbo].[Avance] ([IdAvance], [porcentajePrevisto], [porcentajeReal], [porcentajeAtraso], [IdObra], [FechaAvance]) VALUES (8, 70, 60, 10, 2, CAST(N'2019-01-31' AS Date))
INSERT [dbo].[Avance] ([IdAvance], [porcentajePrevisto], [porcentajeReal], [porcentajeAtraso], [IdObra], [FechaAvance]) VALUES (10, 70, 75, 0, 3, CAST(N'2019-01-31' AS Date))
INSERT [dbo].[Avance] ([IdAvance], [porcentajePrevisto], [porcentajeReal], [porcentajeAtraso], [IdObra], [FechaAvance]) VALUES (11, 90, 87, 3, 3, CAST(N'2019-02-14' AS Date))
INSERT [dbo].[Avance] ([IdAvance], [porcentajePrevisto], [porcentajeReal], [porcentajeAtraso], [IdObra], [FechaAvance]) VALUES (12, 80, 60, 20, 2, CAST(N'2019-03-06' AS Date))
INSERT [dbo].[Avance] ([IdAvance], [porcentajePrevisto], [porcentajeReal], [porcentajeAtraso], [IdObra], [FechaAvance]) VALUES (13, 90, 90, 0, 2, CAST(N'2019-03-07' AS Date))
SET IDENTITY_INSERT [dbo].[Avance] OFF
SET IDENTITY_INSERT [dbo].[DptoProvincia] ON 

INSERT [dbo].[DptoProvincia] ([IdDptoProvincia], [DptoProvincia]) VALUES (1, N'Capital')
INSERT [dbo].[DptoProvincia] ([IdDptoProvincia], [DptoProvincia]) VALUES (2, N'San Martin')
INSERT [dbo].[DptoProvincia] ([IdDptoProvincia], [DptoProvincia]) VALUES (3, N'Sarmiento')
INSERT [dbo].[DptoProvincia] ([IdDptoProvincia], [DptoProvincia]) VALUES (4, N'Chimbas')
INSERT [dbo].[DptoProvincia] ([IdDptoProvincia], [DptoProvincia]) VALUES (5, N'Rivadavia')
INSERT [dbo].[DptoProvincia] ([IdDptoProvincia], [DptoProvincia]) VALUES (6, N'Valle Fertil')
INSERT [dbo].[DptoProvincia] ([IdDptoProvincia], [DptoProvincia]) VALUES (7, N'9 de Julio')
INSERT [dbo].[DptoProvincia] ([IdDptoProvincia], [DptoProvincia]) VALUES (8, N'Caucete')
INSERT [dbo].[DptoProvincia] ([IdDptoProvincia], [DptoProvincia]) VALUES (9, N'Rawson')
INSERT [dbo].[DptoProvincia] ([IdDptoProvincia], [DptoProvincia]) VALUES (10, N'Pocito')
INSERT [dbo].[DptoProvincia] ([IdDptoProvincia], [DptoProvincia]) VALUES (11, N'Albardón')
INSERT [dbo].[DptoProvincia] ([IdDptoProvincia], [DptoProvincia]) VALUES (12, N'Angaco')
INSERT [dbo].[DptoProvincia] ([IdDptoProvincia], [DptoProvincia]) VALUES (13, N'Jachal')
INSERT [dbo].[DptoProvincia] ([IdDptoProvincia], [DptoProvincia]) VALUES (14, N'Zonda')
INSERT [dbo].[DptoProvincia] ([IdDptoProvincia], [DptoProvincia]) VALUES (15, N'Iglesia')
INSERT [dbo].[DptoProvincia] ([IdDptoProvincia], [DptoProvincia]) VALUES (16, N'Calingasta')
INSERT [dbo].[DptoProvincia] ([IdDptoProvincia], [DptoProvincia]) VALUES (17, N'Santa Lucia')
INSERT [dbo].[DptoProvincia] ([IdDptoProvincia], [DptoProvincia]) VALUES (18, N'Zonda')
INSERT [dbo].[DptoProvincia] ([IdDptoProvincia], [DptoProvincia]) VALUES (19, N'Ullum')
SET IDENTITY_INSERT [dbo].[DptoProvincia] OFF
SET IDENTITY_INSERT [dbo].[EmpresaConstructora] ON 

INSERT [dbo].[EmpresaConstructora] ([IdEmpConstructora], [EmpresaConstructora]) VALUES (1, N'SICON')
INSERT [dbo].[EmpresaConstructora] ([IdEmpConstructora], [EmpresaConstructora]) VALUES (2, N'PERFIL')
INSERT [dbo].[EmpresaConstructora] ([IdEmpConstructora], [EmpresaConstructora]) VALUES (3, N'NACUSI 2')
INSERT [dbo].[EmpresaConstructora] ([IdEmpConstructora], [EmpresaConstructora]) VALUES (4, N'SIMIL')
SET IDENTITY_INSERT [dbo].[EmpresaConstructora] OFF
SET IDENTITY_INSERT [dbo].[Entregas] ON 

INSERT [dbo].[Entregas] ([IdEntrega], [FechaEntrega], [CantEntregada], [IdrelaObraPrototipo]) VALUES (5, CAST(N'2019-01-02' AS Date), 99, 1)
INSERT [dbo].[Entregas] ([IdEntrega], [FechaEntrega], [CantEntregada], [IdrelaObraPrototipo]) VALUES (12, CAST(N'2019-02-27' AS Date), 10, 22)
SET IDENTITY_INSERT [dbo].[Entregas] OFF
SET IDENTITY_INSERT [dbo].[EstadoObra] ON 

INSERT [dbo].[EstadoObra] ([IdEstadoObra], [EstadoObra]) VALUES (1, N'En Ejecución')
INSERT [dbo].[EstadoObra] ([IdEstadoObra], [EstadoObra]) VALUES (2, N'En Proceso de Adjudicación')
INSERT [dbo].[EstadoObra] ([IdEstadoObra], [EstadoObra]) VALUES (3, N'En Proyecto')
INSERT [dbo].[EstadoObra] ([IdEstadoObra], [EstadoObra]) VALUES (4, N'En Proceso de Licitación')
INSERT [dbo].[EstadoObra] ([IdEstadoObra], [EstadoObra]) VALUES (5, N'Entregado')
INSERT [dbo].[EstadoObra] ([IdEstadoObra], [EstadoObra]) VALUES (6, N'Asistencia Financiera')
INSERT [dbo].[EstadoObra] ([IdEstadoObra], [EstadoObra]) VALUES (7, N'Banco de Tierra - Planificado')
INSERT [dbo].[EstadoObra] ([IdEstadoObra], [EstadoObra]) VALUES (8, N'Contratación Directa')
INSERT [dbo].[EstadoObra] ([IdEstadoObra], [EstadoObra]) VALUES (9, N'Remanente de Licitación')
INSERT [dbo].[EstadoObra] ([IdEstadoObra], [EstadoObra]) VALUES (10, N'Paralizada')
SET IDENTITY_INSERT [dbo].[EstadoObra] OFF
SET IDENTITY_INSERT [dbo].[Obra] ON 

INSERT [dbo].[Obra] ([IdObra], [expMatriz], [Obra], [ACCU], [IdDptoProvincia], [IdPrograma], [IdEmpConstructora], [cantParaSorteo], [montoOriginal], [licitacionResolucion], [plazoOriginal], [fechaFinalizacion], [MontoContratoPesos], [MontoContratoUVI], [FechaOferta], [FechaInicio]) VALUES (2, N'500-453545345', N'Barrio Maipu', N'1000', 1, 1, 2, 150, 5000, N'4234234', 400, CAST(N'2020-01-22' AS Date), 10000, 10000, CAST(N'2020-01-16' AS Date), CAST(N'2020-01-08' AS Date))
INSERT [dbo].[Obra] ([IdObra], [expMatriz], [Obra], [ACCU], [IdDptoProvincia], [IdPrograma], [IdEmpConstructora], [cantParaSorteo], [montoOriginal], [licitacionResolucion], [plazoOriginal], [fechaFinalizacion], [MontoContratoPesos], [MontoContratoUVI], [FechaOferta], [FechaInicio]) VALUES (3, N'500-15615-5156', N'Barrio Solares de San Juan', N'1500', 1, 1, 2, 200, 15000, N'4234234', 500, CAST(N'2019-01-31' AS Date), 10000, 15000, CAST(N'2019-01-15' AS Date), CAST(N'2018-12-04' AS Date))
INSERT [dbo].[Obra] ([IdObra], [expMatriz], [Obra], [ACCU], [IdDptoProvincia], [IdPrograma], [IdEmpConstructora], [cantParaSorteo], [montoOriginal], [licitacionResolucion], [plazoOriginal], [fechaFinalizacion], [MontoContratoPesos], [MontoContratoUVI], [FechaOferta], [FechaInicio]) VALUES (4, N'500-4535-1516', N'Barrio Santa Barbara 2', N'1000', 11, 3, 3, 100, 1500000, N'Resolucion 12212', 365, CAST(N'2019-04-25' AS Date), 10000, 10000, CAST(N'2019-01-16' AS Date), CAST(N'2019-01-29' AS Date))
SET IDENTITY_INSERT [dbo].[Obra] OFF
INSERT [dbo].[Param_Meses] ([IdMes], [Mes]) VALUES (1, N'Enero                                             ')
INSERT [dbo].[Param_Meses] ([IdMes], [Mes]) VALUES (2, N'Febrero                                           ')
INSERT [dbo].[Param_Meses] ([IdMes], [Mes]) VALUES (3, N'Marzo                                             ')
INSERT [dbo].[Param_Meses] ([IdMes], [Mes]) VALUES (4, N'Abril                                             ')
INSERT [dbo].[Param_Meses] ([IdMes], [Mes]) VALUES (5, N'Mayo                                              ')
INSERT [dbo].[Param_Meses] ([IdMes], [Mes]) VALUES (6, N'Junio                                             ')
INSERT [dbo].[Param_Meses] ([IdMes], [Mes]) VALUES (7, N'Julio                                             ')
INSERT [dbo].[Param_Meses] ([IdMes], [Mes]) VALUES (8, N'Agosto                                            ')
INSERT [dbo].[Param_Meses] ([IdMes], [Mes]) VALUES (9, N'Septiembre                                        ')
INSERT [dbo].[Param_Meses] ([IdMes], [Mes]) VALUES (10, N'Octubre                                           ')
INSERT [dbo].[Param_Meses] ([IdMes], [Mes]) VALUES (11, N'Noviembre                                         ')
INSERT [dbo].[Param_Meses] ([IdMes], [Mes]) VALUES (12, N'Diciembre                                         ')
SET IDENTITY_INSERT [dbo].[Personas] ON 

INSERT [dbo].[Personas] ([IdPersona], [ApellidoNombre], [Documento]) VALUES (1, N'Jose Antonio Amarfil Aguirre', N'35851601')
INSERT [dbo].[Personas] ([IdPersona], [ApellidoNombre], [Documento]) VALUES (2, N'Luis Aldo Díaz', N'20130004')
INSERT [dbo].[Personas] ([IdPersona], [ApellidoNombre], [Documento]) VALUES (3, N'Hector Paez', N'20156156')
INSERT [dbo].[Personas] ([IdPersona], [ApellidoNombre], [Documento]) VALUES (4, N'Guillermo Aceituno', N'33654521')
INSERT [dbo].[Personas] ([IdPersona], [ApellidoNombre], [Documento]) VALUES (5, N'Juan Perez', N'33252895')
INSERT [dbo].[Personas] ([IdPersona], [ApellidoNombre], [Documento]) VALUES (6, N'Pedro Luna', N'20369851')
INSERT [dbo].[Personas] ([IdPersona], [ApellidoNombre], [Documento]) VALUES (7, N'Pedro Perez', N'34534555')
INSERT [dbo].[Personas] ([IdPersona], [ApellidoNombre], [Documento]) VALUES (8, N'fulano', N'35851601')
SET IDENTITY_INSERT [dbo].[Personas] OFF
SET IDENTITY_INSERT [dbo].[Programa] ON 

INSERT [dbo].[Programa] ([IdPrograma], [Programa]) VALUES (1, N'PROGRAMA FEDERAL  DE CONSTRUCCION "TECHO DIGNO"')
INSERT [dbo].[Programa] ([IdPrograma], [Programa]) VALUES (2, N'PROMEBA NACION')
INSERT [dbo].[Programa] ([IdPrograma], [Programa]) VALUES (3, N'FONAVI II')
SET IDENTITY_INSERT [dbo].[Programa] OFF
SET IDENTITY_INSERT [dbo].[Prototipos] ON 

INSERT [dbo].[Prototipos] ([IdPrototipo], [Prototipo]) VALUES (1, N'Monoblock')
INSERT [dbo].[Prototipos] ([IdPrototipo], [Prototipo]) VALUES (2, N'Casa de 2 Habitaciones')
INSERT [dbo].[Prototipos] ([IdPrototipo], [Prototipo]) VALUES (3, N'Departamento')
INSERT [dbo].[Prototipos] ([IdPrototipo], [Prototipo]) VALUES (5, N'Duplex')
SET IDENTITY_INSERT [dbo].[Prototipos] OFF
SET IDENTITY_INSERT [dbo].[relaObraPrototipo] ON 

INSERT [dbo].[relaObraPrototipo] ([IdrelaObraPrototipo], [Cantidad], [IdObra], [IdPrototipo], [CantidadParaSorteo]) VALUES (1, 150, 2, 3, 150)
INSERT [dbo].[relaObraPrototipo] ([IdrelaObraPrototipo], [Cantidad], [IdObra], [IdPrototipo], [CantidadParaSorteo]) VALUES (3, 300, 3, 2, 295)
INSERT [dbo].[relaObraPrototipo] ([IdrelaObraPrototipo], [Cantidad], [IdObra], [IdPrototipo], [CantidadParaSorteo]) VALUES (4, 4, 2, 3, 555)
INSERT [dbo].[relaObraPrototipo] ([IdrelaObraPrototipo], [Cantidad], [IdObra], [IdPrototipo], [CantidadParaSorteo]) VALUES (5, 4, 2, 2, 2)
INSERT [dbo].[relaObraPrototipo] ([IdrelaObraPrototipo], [Cantidad], [IdObra], [IdPrototipo], [CantidadParaSorteo]) VALUES (6, 4, 3, 2, 2)
INSERT [dbo].[relaObraPrototipo] ([IdrelaObraPrototipo], [Cantidad], [IdObra], [IdPrototipo], [CantidadParaSorteo]) VALUES (7, 4, 3, 2, 2)
INSERT [dbo].[relaObraPrototipo] ([IdrelaObraPrototipo], [Cantidad], [IdObra], [IdPrototipo], [CantidadParaSorteo]) VALUES (8, 4, 3, 2, 2)
INSERT [dbo].[relaObraPrototipo] ([IdrelaObraPrototipo], [Cantidad], [IdObra], [IdPrototipo], [CantidadParaSorteo]) VALUES (11, 50, 3, 3, 50)
INSERT [dbo].[relaObraPrototipo] ([IdrelaObraPrototipo], [Cantidad], [IdObra], [IdPrototipo], [CantidadParaSorteo]) VALUES (12, 50, 3, 3, 50)
INSERT [dbo].[relaObraPrototipo] ([IdrelaObraPrototipo], [Cantidad], [IdObra], [IdPrototipo], [CantidadParaSorteo]) VALUES (13, 50, 3, 3, 50)
INSERT [dbo].[relaObraPrototipo] ([IdrelaObraPrototipo], [Cantidad], [IdObra], [IdPrototipo], [CantidadParaSorteo]) VALUES (14, 50, 3, 3, 50)
INSERT [dbo].[relaObraPrototipo] ([IdrelaObraPrototipo], [Cantidad], [IdObra], [IdPrototipo], [CantidadParaSorteo]) VALUES (19, 50, 2, 3, 50)
INSERT [dbo].[relaObraPrototipo] ([IdrelaObraPrototipo], [Cantidad], [IdObra], [IdPrototipo], [CantidadParaSorteo]) VALUES (22, 100, 4, 3, 95)
INSERT [dbo].[relaObraPrototipo] ([IdrelaObraPrototipo], [Cantidad], [IdObra], [IdPrototipo], [CantidadParaSorteo]) VALUES (23, 100, 4, 1, 95)
INSERT [dbo].[relaObraPrototipo] ([IdrelaObraPrototipo], [Cantidad], [IdObra], [IdPrototipo], [CantidadParaSorteo]) VALUES (24, 50, 4, 5, 50)
SET IDENTITY_INSERT [dbo].[relaObraPrototipo] OFF
SET IDENTITY_INSERT [dbo].[relaSeguimientoPersona] ON 

INSERT [dbo].[relaSeguimientoPersona] ([IdRelaseguimientoPersona], [IdRolSeguimiento], [IdSeguimiento], [IdPersona]) VALUES (1, 1, 5, 1)
INSERT [dbo].[relaSeguimientoPersona] ([IdRelaseguimientoPersona], [IdRolSeguimiento], [IdSeguimiento], [IdPersona]) VALUES (2, 1, 3, 1)
INSERT [dbo].[relaSeguimientoPersona] ([IdRelaseguimientoPersona], [IdRolSeguimiento], [IdSeguimiento], [IdPersona]) VALUES (3, 2, 3, 2)
INSERT [dbo].[relaSeguimientoPersona] ([IdRelaseguimientoPersona], [IdRolSeguimiento], [IdSeguimiento], [IdPersona]) VALUES (6, 1, 1, 2)
INSERT [dbo].[relaSeguimientoPersona] ([IdRelaseguimientoPersona], [IdRolSeguimiento], [IdSeguimiento], [IdPersona]) VALUES (10, 1, 3, 4)
INSERT [dbo].[relaSeguimientoPersona] ([IdRelaseguimientoPersona], [IdRolSeguimiento], [IdSeguimiento], [IdPersona]) VALUES (11, 1, 3, 1)
INSERT [dbo].[relaSeguimientoPersona] ([IdRelaseguimientoPersona], [IdRolSeguimiento], [IdSeguimiento], [IdPersona]) VALUES (12, 1, 6, 2)
INSERT [dbo].[relaSeguimientoPersona] ([IdRelaseguimientoPersona], [IdRolSeguimiento], [IdSeguimiento], [IdPersona]) VALUES (15, 2, 3, 8)
INSERT [dbo].[relaSeguimientoPersona] ([IdRelaseguimientoPersona], [IdRolSeguimiento], [IdSeguimiento], [IdPersona]) VALUES (19, 2, 11, 5)
INSERT [dbo].[relaSeguimientoPersona] ([IdRelaseguimientoPersona], [IdRolSeguimiento], [IdSeguimiento], [IdPersona]) VALUES (20, 2, 14, 3)
INSERT [dbo].[relaSeguimientoPersona] ([IdRelaseguimientoPersona], [IdRolSeguimiento], [IdSeguimiento], [IdPersona]) VALUES (21, 1, 9, 1)
INSERT [dbo].[relaSeguimientoPersona] ([IdRelaseguimientoPersona], [IdRolSeguimiento], [IdSeguimiento], [IdPersona]) VALUES (23, 1, 11, 3)
INSERT [dbo].[relaSeguimientoPersona] ([IdRelaseguimientoPersona], [IdRolSeguimiento], [IdSeguimiento], [IdPersona]) VALUES (24, 2, 10, 6)
INSERT [dbo].[relaSeguimientoPersona] ([IdRelaseguimientoPersona], [IdRolSeguimiento], [IdSeguimiento], [IdPersona]) VALUES (25, 1, 10, 5)
INSERT [dbo].[relaSeguimientoPersona] ([IdRelaseguimientoPersona], [IdRolSeguimiento], [IdSeguimiento], [IdPersona]) VALUES (26, 2, 5, 2)
SET IDENTITY_INSERT [dbo].[relaSeguimientoPersona] OFF
SET IDENTITY_INSERT [dbo].[rolSeguimiento] ON 

INSERT [dbo].[rolSeguimiento] ([IdRolSeguimiento], [RolSeguimiento]) VALUES (1, N'Inspector')
INSERT [dbo].[rolSeguimiento] ([IdRolSeguimiento], [RolSeguimiento]) VALUES (2, N'Sobrestante')
SET IDENTITY_INSERT [dbo].[rolSeguimiento] OFF
SET IDENTITY_INSERT [dbo].[Seguimiento] ON 

INSERT [dbo].[Seguimiento] ([IdSeguimiento], [FechaSeguimiento], [IdObra], [IdEstadoObra]) VALUES (1, CAST(N'2019-01-29' AS Date), 3, 1)
INSERT [dbo].[Seguimiento] ([IdSeguimiento], [FechaSeguimiento], [IdObra], [IdEstadoObra]) VALUES (3, CAST(N'2019-01-30' AS Date), 2, 2)
INSERT [dbo].[Seguimiento] ([IdSeguimiento], [FechaSeguimiento], [IdObra], [IdEstadoObra]) VALUES (5, CAST(N'2019-01-31' AS Date), 2, 6)
INSERT [dbo].[Seguimiento] ([IdSeguimiento], [FechaSeguimiento], [IdObra], [IdEstadoObra]) VALUES (6, CAST(N'2019-02-14' AS Date), 4, 4)
INSERT [dbo].[Seguimiento] ([IdSeguimiento], [FechaSeguimiento], [IdObra], [IdEstadoObra]) VALUES (9, CAST(N'2019-03-31' AS Date), 4, 2)
INSERT [dbo].[Seguimiento] ([IdSeguimiento], [FechaSeguimiento], [IdObra], [IdEstadoObra]) VALUES (10, CAST(N'2019-02-27' AS Date), 4, 1)
INSERT [dbo].[Seguimiento] ([IdSeguimiento], [FechaSeguimiento], [IdObra], [IdEstadoObra]) VALUES (11, CAST(N'2019-02-28' AS Date), 4, 5)
INSERT [dbo].[Seguimiento] ([IdSeguimiento], [FechaSeguimiento], [IdObra], [IdEstadoObra]) VALUES (12, CAST(N'2019-02-27' AS Date), 3, 2)
INSERT [dbo].[Seguimiento] ([IdSeguimiento], [FechaSeguimiento], [IdObra], [IdEstadoObra]) VALUES (13, CAST(N'2019-02-28' AS Date), 3, 3)
INSERT [dbo].[Seguimiento] ([IdSeguimiento], [FechaSeguimiento], [IdObra], [IdEstadoObra]) VALUES (14, CAST(N'2019-02-18' AS Date), 4, 10)
SET IDENTITY_INSERT [dbo].[Seguimiento] OFF
SET IDENTITY_INSERT [dbo].[TipoAnticipoFinanciero] ON 

INSERT [dbo].[TipoAnticipoFinanciero] ([IdTipoAntFinanciero], [TipoAntFinanciero]) VALUES (1, N'NACION - PFPCV                                    ')
INSERT [dbo].[TipoAnticipoFinanciero] ([IdTipoAntFinanciero], [TipoAntFinanciero]) VALUES (2, N'NACION - SPFMHUOIyC                               ')
INSERT [dbo].[TipoAnticipoFinanciero] ([IdTipoAntFinanciero], [TipoAntFinanciero]) VALUES (3, N'REDE - PFPCV                                      ')
INSERT [dbo].[TipoAnticipoFinanciero] ([IdTipoAntFinanciero], [TipoAntFinanciero]) VALUES (4, N'REDE - SPFMHUOIyC                                 ')
INSERT [dbo].[TipoAnticipoFinanciero] ([IdTipoAntFinanciero], [TipoAntFinanciero]) VALUES (5, N'REDETERM - Bis PFPCV                              ')
INSERT [dbo].[TipoAnticipoFinanciero] ([IdTipoAntFinanciero], [TipoAntFinanciero]) VALUES (6, N'REDE BIS - SPFMHUOIyC                             ')
INSERT [dbo].[TipoAnticipoFinanciero] ([IdTipoAntFinanciero], [TipoAntFinanciero]) VALUES (7, N'REDE - DEF                                        ')
SET IDENTITY_INSERT [dbo].[TipoAnticipoFinanciero] OFF
SET IDENTITY_INSERT [dbo].[TipoAportes] ON 

INSERT [dbo].[TipoAportes] ([IdAportes], [AportesDesc]) VALUES (1, N'NACION - PFPCV                                    ')
INSERT [dbo].[TipoAportes] ([IdAportes], [AportesDesc]) VALUES (2, N'NACION - SPFMHUOIyC                               ')
INSERT [dbo].[TipoAportes] ([IdAportes], [AportesDesc]) VALUES (3, N'PROVINCIA                                         ')
SET IDENTITY_INSERT [dbo].[TipoAportes] OFF
SET IDENTITY_INSERT [dbo].[TipoCertificado] ON 

INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (1, N'Especif. Técnicas de Urbanización', 1)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (2, N'Especif. Técnicas de Infraestructura', 1)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (3, N'Plano de Mensura y División', 1)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (4, N'Planimetria de Urbanización, C.O.', 1)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (7, N'Planos de Rasantes De Calles, Niveles y Fondo de Cuneta C.O.', 1)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (8, N'Plano de Sistema de Riego de Arbolado Publico CO', 1)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (9, N'Plano de Red de Agua CO', 1)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (10, N'Plano de Red de Cloaca CO', 1)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (11, N'Plano de Red De Gas y Diagramas CO', 1)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (12, N'Plano de Alumbrado Público CO', 1)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (13, N'Plano de Espacios Verdes, CO', 1)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (14, N'Estudios de Suelo', 1)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (15, N'Final de OSSE', 2)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (16, N'Recepción Provisorio de Vialidad', 2)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (17, N'Final de Hidraulica', 2)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (18, N'Final de Urbanización de la DPDU', 2)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (19, N'Esp. Técnicas Particulares, CO', 3)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (20, N'Plano General y Estructura CO.- DPDU', 3)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (21, N'Plano de Instalaciones Sanitarias CO.- OSSE', 3)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (22, N'Plano de Instalación de Gas CO', 3)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (23, N'Plano de Instalación Electrica, CO.- Municipalidad', 3)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (24, N'Plano de carpinteria', 3)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (25, N'Plano de Detalles de Ubicación de artefactos, CO', 3)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (26, N'Plano de Detalles Constructivos, CO', 3)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (27, N'Cert. de Inspección Final de Obra y Licencia de uso de la la DPDU', 3)
INSERT [dbo].[TipoCertificado] ([IdTipoCertificado], [TipoCertificado], [idTipoCertificadoCat]) VALUES (29, N'Planilla de Inspecciones', 3)
SET IDENTITY_INSERT [dbo].[TipoCertificado] OFF
SET IDENTITY_INSERT [dbo].[TipoCertificadoCat] ON 

INSERT [dbo].[TipoCertificadoCat] ([idCatCertificado], [CatCertificado]) VALUES (1, N'Carpeta Final de Obra                             ')
INSERT [dbo].[TipoCertificadoCat] ([idCatCertificado], [CatCertificado]) VALUES (2, N'Certificados                                      ')
INSERT [dbo].[TipoCertificadoCat] ([idCatCertificado], [CatCertificado]) VALUES (3, N'Final de Vivienda                                 ')
SET IDENTITY_INSERT [dbo].[TipoCertificadoCat] OFF
SET IDENTITY_INSERT [dbo].[TipoCertPagoRubro] ON 

INSERT [dbo].[TipoCertPagoRubro] ([IdTipoCertPagoRubro], [TipoCertPagoRubro]) VALUES (1, N'Vivienda                                          ')
INSERT [dbo].[TipoCertPagoRubro] ([IdTipoCertPagoRubro], [TipoCertPagoRubro]) VALUES (2, N'Infraestructura                                   ')
INSERT [dbo].[TipoCertPagoRubro] ([IdTipoCertPagoRubro], [TipoCertPagoRubro]) VALUES (3, N'Nexo                                              ')
SET IDENTITY_INSERT [dbo].[TipoCertPagoRubro] OFF
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsersBlock]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsersBlock_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsersBlock] CHECK CONSTRAINT [FK_AspNetUsersBlock_AspNetUsers]
GO
ALTER TABLE [dbo].[Avance]  WITH CHECK ADD  CONSTRAINT [FK_Avance_Obra] FOREIGN KEY([IdObra])
REFERENCES [dbo].[Obra] ([IdObra])
GO
ALTER TABLE [dbo].[Avance] CHECK CONSTRAINT [FK_Avance_Obra]
GO
ALTER TABLE [dbo].[CertificadoObra]  WITH CHECK ADD  CONSTRAINT [FK_CertificadoObra_Obra] FOREIGN KEY([IdObra])
REFERENCES [dbo].[Obra] ([IdObra])
GO
ALTER TABLE [dbo].[CertificadoObra] CHECK CONSTRAINT [FK_CertificadoObra_Obra]
GO
ALTER TABLE [dbo].[CertificadoPago]  WITH CHECK ADD  CONSTRAINT [FK_CertificadoPago_Obra] FOREIGN KEY([IdObra])
REFERENCES [dbo].[Obra] ([IdObra])
GO
ALTER TABLE [dbo].[CertificadoPago] CHECK CONSTRAINT [FK_CertificadoPago_Obra]
GO
ALTER TABLE [dbo].[CertificadoPago]  WITH CHECK ADD  CONSTRAINT [FK_CertificadoPago_Param_Meses] FOREIGN KEY([CorrespMes])
REFERENCES [dbo].[Param_Meses] ([IdMes])
GO
ALTER TABLE [dbo].[CertificadoPago] CHECK CONSTRAINT [FK_CertificadoPago_Param_Meses]
GO
ALTER TABLE [dbo].[CertificadoPagoDetalle]  WITH CHECK ADD  CONSTRAINT [FK_CertificadoPagoDetalle_CertificadoPago] FOREIGN KEY([IdCertPago])
REFERENCES [dbo].[CertificadoPago] ([IdCertPago])
GO
ALTER TABLE [dbo].[CertificadoPagoDetalle] CHECK CONSTRAINT [FK_CertificadoPagoDetalle_CertificadoPago]
GO
ALTER TABLE [dbo].[CertificadoPagoDetalle]  WITH CHECK ADD  CONSTRAINT [FK_CertificadoPagoDetalle_TipoCertPagoRubro] FOREIGN KEY([IdRubro])
REFERENCES [dbo].[TipoCertPagoRubro] ([IdTipoCertPagoRubro])
GO
ALTER TABLE [dbo].[CertificadoPagoDetalle] CHECK CONSTRAINT [FK_CertificadoPagoDetalle_TipoCertPagoRubro]
GO
ALTER TABLE [dbo].[Entregas]  WITH CHECK ADD  CONSTRAINT [FK_Entregas_relaObraPrototipo] FOREIGN KEY([IdrelaObraPrototipo])
REFERENCES [dbo].[relaObraPrototipo] ([IdrelaObraPrototipo])
GO
ALTER TABLE [dbo].[Entregas] CHECK CONSTRAINT [FK_Entregas_relaObraPrototipo]
GO
ALTER TABLE [dbo].[Obra]  WITH CHECK ADD  CONSTRAINT [FK_Obra_DptoProvincia] FOREIGN KEY([IdDptoProvincia])
REFERENCES [dbo].[DptoProvincia] ([IdDptoProvincia])
GO
ALTER TABLE [dbo].[Obra] CHECK CONSTRAINT [FK_Obra_DptoProvincia]
GO
ALTER TABLE [dbo].[Obra]  WITH CHECK ADD  CONSTRAINT [FK_Obra_EmpresaConstructora] FOREIGN KEY([IdEmpConstructora])
REFERENCES [dbo].[EmpresaConstructora] ([IdEmpConstructora])
GO
ALTER TABLE [dbo].[Obra] CHECK CONSTRAINT [FK_Obra_EmpresaConstructora]
GO
ALTER TABLE [dbo].[Obra]  WITH CHECK ADD  CONSTRAINT [FK_Obra_Programa] FOREIGN KEY([IdPrograma])
REFERENCES [dbo].[Programa] ([IdPrograma])
GO
ALTER TABLE [dbo].[Obra] CHECK CONSTRAINT [FK_Obra_Programa]
GO
ALTER TABLE [dbo].[relaObraAnticipoFinanciero]  WITH CHECK ADD  CONSTRAINT [FK_relaObraAnticipoFinanciero_Obra] FOREIGN KEY([IdObra])
REFERENCES [dbo].[Obra] ([IdObra])
GO
ALTER TABLE [dbo].[relaObraAnticipoFinanciero] CHECK CONSTRAINT [FK_relaObraAnticipoFinanciero_Obra]
GO
ALTER TABLE [dbo].[relaObraAnticipoFinanciero]  WITH CHECK ADD  CONSTRAINT [FK_relaObraAnticipoFinanciero_TipoAnticipoFinanciero] FOREIGN KEY([IdTipoAntFinanciero])
REFERENCES [dbo].[TipoAnticipoFinanciero] ([IdTipoAntFinanciero])
GO
ALTER TABLE [dbo].[relaObraAnticipoFinanciero] CHECK CONSTRAINT [FK_relaObraAnticipoFinanciero_TipoAnticipoFinanciero]
GO
ALTER TABLE [dbo].[relaObraAportes]  WITH CHECK ADD  CONSTRAINT [FK_relaObraAportes_Obra] FOREIGN KEY([IdObra])
REFERENCES [dbo].[Obra] ([IdObra])
GO
ALTER TABLE [dbo].[relaObraAportes] CHECK CONSTRAINT [FK_relaObraAportes_Obra]
GO
ALTER TABLE [dbo].[relaObraAportes]  WITH CHECK ADD  CONSTRAINT [FK_relaObraAportes_TipoAportes] FOREIGN KEY([Idaportes])
REFERENCES [dbo].[TipoAportes] ([IdAportes])
GO
ALTER TABLE [dbo].[relaObraAportes] CHECK CONSTRAINT [FK_relaObraAportes_TipoAportes]
GO
ALTER TABLE [dbo].[relaObraCertificado]  WITH CHECK ADD  CONSTRAINT [FK_relaObraCertificado2_Obra] FOREIGN KEY([IdObra])
REFERENCES [dbo].[Obra] ([IdObra])
GO
ALTER TABLE [dbo].[relaObraCertificado] CHECK CONSTRAINT [FK_relaObraCertificado2_Obra]
GO
ALTER TABLE [dbo].[relaObraCertificado]  WITH CHECK ADD  CONSTRAINT [FK_relaObraCertificado2_TipoCertificado] FOREIGN KEY([IdTipoCertificado])
REFERENCES [dbo].[TipoCertificado] ([IdTipoCertificado])
GO
ALTER TABLE [dbo].[relaObraCertificado] CHECK CONSTRAINT [FK_relaObraCertificado2_TipoCertificado]
GO
ALTER TABLE [dbo].[relaObraPrototipo]  WITH CHECK ADD  CONSTRAINT [FK_relaObraPrototipo_Obra] FOREIGN KEY([IdObra])
REFERENCES [dbo].[Obra] ([IdObra])
GO
ALTER TABLE [dbo].[relaObraPrototipo] CHECK CONSTRAINT [FK_relaObraPrototipo_Obra]
GO
ALTER TABLE [dbo].[relaObraPrototipo]  WITH CHECK ADD  CONSTRAINT [FK_relaObraPrototipo_Prototipos] FOREIGN KEY([IdPrototipo])
REFERENCES [dbo].[Prototipos] ([IdPrototipo])
GO
ALTER TABLE [dbo].[relaObraPrototipo] CHECK CONSTRAINT [FK_relaObraPrototipo_Prototipos]
GO
ALTER TABLE [dbo].[relaSeguimientoPersona]  WITH CHECK ADD  CONSTRAINT [FK_relaSeguimientoPersona_Personas] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[Personas] ([IdPersona])
GO
ALTER TABLE [dbo].[relaSeguimientoPersona] CHECK CONSTRAINT [FK_relaSeguimientoPersona_Personas]
GO
ALTER TABLE [dbo].[relaSeguimientoPersona]  WITH CHECK ADD  CONSTRAINT [FK_relaSeguimientoPersona_rolSeguimiento] FOREIGN KEY([IdRolSeguimiento])
REFERENCES [dbo].[rolSeguimiento] ([IdRolSeguimiento])
GO
ALTER TABLE [dbo].[relaSeguimientoPersona] CHECK CONSTRAINT [FK_relaSeguimientoPersona_rolSeguimiento]
GO
ALTER TABLE [dbo].[relaSeguimientoPersona]  WITH CHECK ADD  CONSTRAINT [FK_relaSeguimientoPersona_Seguimiento] FOREIGN KEY([IdSeguimiento])
REFERENCES [dbo].[Seguimiento] ([IdSeguimiento])
GO
ALTER TABLE [dbo].[relaSeguimientoPersona] CHECK CONSTRAINT [FK_relaSeguimientoPersona_Seguimiento]
GO
ALTER TABLE [dbo].[Seguimiento]  WITH CHECK ADD  CONSTRAINT [FK_Seguimiento_Obra] FOREIGN KEY([IdObra])
REFERENCES [dbo].[Obra] ([IdObra])
GO
ALTER TABLE [dbo].[Seguimiento] CHECK CONSTRAINT [FK_Seguimiento_Obra]
GO
ALTER TABLE [dbo].[TipoCertificado]  WITH CHECK ADD  CONSTRAINT [FK_TipoCertificado_TipoCertificadoCat] FOREIGN KEY([idTipoCertificadoCat])
REFERENCES [dbo].[TipoCertificadoCat] ([idCatCertificado])
GO
ALTER TABLE [dbo].[TipoCertificado] CHECK CONSTRAINT [FK_TipoCertificado_TipoCertificadoCat]
GO
