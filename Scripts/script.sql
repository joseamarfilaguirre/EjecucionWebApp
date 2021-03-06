USE [db_IPV_Ejecucion]
GO
/****** Object:  StoredProcedure [dbo].[sp_DptoPciaTraer]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP PROCEDURE [dbo].[sp_DptoPciaTraer]
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_TipoCertificadoCat]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP PROCEDURE [dbo].[sp_ABM_TipoCertificadoCat]
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_TipoCertificado]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP PROCEDURE [dbo].[sp_ABM_TipoCertificado]
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_Seguimiento]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP PROCEDURE [dbo].[sp_ABM_Seguimiento]
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_relaSeguimientoPersona]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP PROCEDURE [dbo].[sp_ABM_relaSeguimientoPersona]
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_relaObraPrototipo]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP PROCEDURE [dbo].[sp_ABM_relaObraPrototipo]
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_relaObraCertificado]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP PROCEDURE [dbo].[sp_ABM_relaObraCertificado]
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_relaObraAportes]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP PROCEDURE [dbo].[sp_ABM_relaObraAportes]
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_Prototipos]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP PROCEDURE [dbo].[sp_ABM_Prototipos]
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_Programa]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP PROCEDURE [dbo].[sp_ABM_Programa]
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_Personas]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP PROCEDURE [dbo].[sp_ABM_Personas]
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_Obra]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP PROCEDURE [dbo].[sp_ABM_Obra]
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_Entregas]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP PROCEDURE [dbo].[sp_ABM_Entregas]
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_EmpresaConstructora]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP PROCEDURE [dbo].[sp_ABM_EmpresaConstructora]
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_Certificados]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP PROCEDURE [dbo].[sp_ABM_Certificados]
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_CertificadoObra]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP PROCEDURE [dbo].[sp_ABM_CertificadoObra]
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_Avance]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP PROCEDURE [dbo].[sp_ABM_Avance]
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
ALTER TABLE [dbo].[relaObraCertificado] DROP CONSTRAINT [FK_relaObraCertificado_Obra]
GO
ALTER TABLE [dbo].[relaObraCertificado] DROP CONSTRAINT [FK_relaObraCertificado_Certificados]
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
ALTER TABLE [dbo].[Entregas] DROP CONSTRAINT [FK_Entregas_Obra]
GO
ALTER TABLE [dbo].[Certificados] DROP CONSTRAINT [FK_Certificados_TipoCertificado]
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
/****** Object:  Table [dbo].[TipoCertPagoRubro]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[TipoCertPagoRubro]
GO
/****** Object:  Table [dbo].[TipoCertificadoCat]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[TipoCertificadoCat]
GO
/****** Object:  Table [dbo].[TipoCertificado]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[TipoCertificado]
GO
/****** Object:  Table [dbo].[TipoAportes]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[TipoAportes]
GO
/****** Object:  Table [dbo].[TipoAnticipoFinanciero]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[TipoAnticipoFinanciero]
GO
/****** Object:  Table [dbo].[Seguimiento]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[Seguimiento]
GO
/****** Object:  Table [dbo].[rolSeguimiento]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[rolSeguimiento]
GO
/****** Object:  Table [dbo].[relaSeguimientoPersona]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[relaSeguimientoPersona]
GO
/****** Object:  Table [dbo].[relaObraPrototipo]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[relaObraPrototipo]
GO
/****** Object:  Table [dbo].[relaObraMovilidad]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[relaObraMovilidad]
GO
/****** Object:  Table [dbo].[relaObraEqInformatico]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[relaObraEqInformatico]
GO
/****** Object:  Table [dbo].[relaObraContratados]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[relaObraContratados]
GO
/****** Object:  Table [dbo].[relaObraCertificado]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[relaObraCertificado]
GO
/****** Object:  Table [dbo].[relaObraAportes]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[relaObraAportes]
GO
/****** Object:  Table [dbo].[relaObraAnticipoFinanciero]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[relaObraAnticipoFinanciero]
GO
/****** Object:  Table [dbo].[Prototipos]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[Prototipos]
GO
/****** Object:  Table [dbo].[Programa]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[Programa]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[Personas]
GO
/****** Object:  Table [dbo].[Param_Meses]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[Param_Meses]
GO
/****** Object:  Table [dbo].[Obra]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[Obra]
GO
/****** Object:  Table [dbo].[Movilidad]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[Movilidad]
GO
/****** Object:  Table [dbo].[EstadoObra]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[EstadoObra]
GO
/****** Object:  Table [dbo].[EquipoInformatico]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[EquipoInformatico]
GO
/****** Object:  Table [dbo].[Entregas]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[Entregas]
GO
/****** Object:  Table [dbo].[EmpresaConstructora]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[EmpresaConstructora]
GO
/****** Object:  Table [dbo].[DptoProvincia]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[DptoProvincia]
GO
/****** Object:  Table [dbo].[Certificados]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[Certificados]
GO
/****** Object:  Table [dbo].[CertificadoPagoDetalle]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[CertificadoPagoDetalle]
GO
/****** Object:  Table [dbo].[CertificadoPago]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[CertificadoPago]
GO
/****** Object:  Table [dbo].[CertificadoObra]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[CertificadoObra]
GO
/****** Object:  Table [dbo].[Avance]    Script Date: 25/1/2019 7:23:45 a. m. ******/
DROP TABLE [dbo].[Avance]
GO
/****** Object:  Table [dbo].[Avance]    Script Date: 25/1/2019 7:23:45 a. m. ******/
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
/****** Object:  Table [dbo].[CertificadoObra]    Script Date: 25/1/2019 7:23:45 a. m. ******/
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
/****** Object:  Table [dbo].[CertificadoPago]    Script Date: 25/1/2019 7:23:45 a. m. ******/
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
/****** Object:  Table [dbo].[CertificadoPagoDetalle]    Script Date: 25/1/2019 7:23:45 a. m. ******/
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
/****** Object:  Table [dbo].[Certificados]    Script Date: 25/1/2019 7:23:45 a. m. ******/
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
/****** Object:  Table [dbo].[DptoProvincia]    Script Date: 25/1/2019 7:23:45 a. m. ******/
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
/****** Object:  Table [dbo].[EmpresaConstructora]    Script Date: 25/1/2019 7:23:45 a. m. ******/
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
/****** Object:  Table [dbo].[Entregas]    Script Date: 25/1/2019 7:23:45 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entregas](
	[IdEntrega] [int] IDENTITY(1,1) NOT NULL,
	[FechaEntrega] [date] NOT NULL,
	[CantEntregada] [int] NOT NULL,
	[IdObra] [int] NOT NULL,
 CONSTRAINT [PK_Entregas] PRIMARY KEY CLUSTERED 
(
	[IdEntrega] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipoInformatico]    Script Date: 25/1/2019 7:23:45 a. m. ******/
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
/****** Object:  Table [dbo].[EstadoObra]    Script Date: 25/1/2019 7:23:45 a. m. ******/
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
/****** Object:  Table [dbo].[Movilidad]    Script Date: 25/1/2019 7:23:45 a. m. ******/
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
/****** Object:  Table [dbo].[Obra]    Script Date: 25/1/2019 7:23:45 a. m. ******/
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
/****** Object:  Table [dbo].[Param_Meses]    Script Date: 25/1/2019 7:23:46 a. m. ******/
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
/****** Object:  Table [dbo].[Personas]    Script Date: 25/1/2019 7:23:46 a. m. ******/
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
/****** Object:  Table [dbo].[Programa]    Script Date: 25/1/2019 7:23:46 a. m. ******/
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
/****** Object:  Table [dbo].[Prototipos]    Script Date: 25/1/2019 7:23:46 a. m. ******/
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
/****** Object:  Table [dbo].[relaObraAnticipoFinanciero]    Script Date: 25/1/2019 7:23:46 a. m. ******/
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
/****** Object:  Table [dbo].[relaObraAportes]    Script Date: 25/1/2019 7:23:46 a. m. ******/
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
/****** Object:  Table [dbo].[relaObraCertificado]    Script Date: 25/1/2019 7:23:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[relaObraCertificado](
	[IdrelaObraCertificado] [int] NOT NULL,
	[FechaPresentacion] [date] NOT NULL,
	[IdCertificado] [int] NOT NULL,
	[IdObra] [int] NOT NULL,
 CONSTRAINT [PK_relaObraCertificado] PRIMARY KEY CLUSTERED 
(
	[IdrelaObraCertificado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[relaObraContratados]    Script Date: 25/1/2019 7:23:46 a. m. ******/
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
/****** Object:  Table [dbo].[relaObraEqInformatico]    Script Date: 25/1/2019 7:23:46 a. m. ******/
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
/****** Object:  Table [dbo].[relaObraMovilidad]    Script Date: 25/1/2019 7:23:46 a. m. ******/
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
/****** Object:  Table [dbo].[relaObraPrototipo]    Script Date: 25/1/2019 7:23:46 a. m. ******/
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
/****** Object:  Table [dbo].[relaSeguimientoPersona]    Script Date: 25/1/2019 7:23:46 a. m. ******/
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
/****** Object:  Table [dbo].[rolSeguimiento]    Script Date: 25/1/2019 7:23:46 a. m. ******/
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
/****** Object:  Table [dbo].[Seguimiento]    Script Date: 25/1/2019 7:23:46 a. m. ******/
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
/****** Object:  Table [dbo].[TipoAnticipoFinanciero]    Script Date: 25/1/2019 7:23:46 a. m. ******/
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
/****** Object:  Table [dbo].[TipoAportes]    Script Date: 25/1/2019 7:23:46 a. m. ******/
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
/****** Object:  Table [dbo].[TipoCertificado]    Script Date: 25/1/2019 7:23:46 a. m. ******/
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
/****** Object:  Table [dbo].[TipoCertificadoCat]    Script Date: 25/1/2019 7:23:46 a. m. ******/
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
/****** Object:  Table [dbo].[TipoCertPagoRubro]    Script Date: 25/1/2019 7:23:46 a. m. ******/
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
SET IDENTITY_INSERT [dbo].[Avance] ON 

INSERT [dbo].[Avance] ([IdAvance], [porcentajePrevisto], [porcentajeReal], [porcentajeAtraso], [IdObra], [FechaAvance]) VALUES (1, 5, 4, 1, 3, CAST(N'2019-01-07' AS Date))
INSERT [dbo].[Avance] ([IdAvance], [porcentajePrevisto], [porcentajeReal], [porcentajeAtraso], [IdObra], [FechaAvance]) VALUES (2, 15, 13, 2, 3, CAST(N'2019-01-02' AS Date))
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
INSERT [dbo].[EmpresaConstructora] ([IdEmpConstructora], [EmpresaConstructora]) VALUES (3, N'NACUSI')
SET IDENTITY_INSERT [dbo].[EmpresaConstructora] OFF
SET IDENTITY_INSERT [dbo].[Entregas] ON 

INSERT [dbo].[Entregas] ([IdEntrega], [FechaEntrega], [CantEntregada], [IdObra]) VALUES (1, CAST(N'2019-01-01' AS Date), 5, 3)
INSERT [dbo].[Entregas] ([IdEntrega], [FechaEntrega], [CantEntregada], [IdObra]) VALUES (2, CAST(N'2019-01-07' AS Date), 4, 3)
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

INSERT [dbo].[Obra] ([IdObra], [expMatriz], [Obra], [ACCU], [IdDptoProvincia], [IdPrograma], [IdEmpConstructora], [cantParaSorteo], [montoOriginal], [licitacionResolucion], [plazoOriginal], [fechaFinalizacion], [MontoContratoPesos], [MontoContratoUVI], [FechaOferta], [FechaInicio]) VALUES (2, N'500-453545345', N'Barrio Maipu', N'1000', 1, 1, 2, 150, 5000, N'4234234', 400, CAST(N'2020-01-01' AS Date), 10000, 10000, CAST(N'2020-01-01' AS Date), CAST(N'2020-01-01' AS Date))
INSERT [dbo].[Obra] ([IdObra], [expMatriz], [Obra], [ACCU], [IdDptoProvincia], [IdPrograma], [IdEmpConstructora], [cantParaSorteo], [montoOriginal], [licitacionResolucion], [plazoOriginal], [fechaFinalizacion], [MontoContratoPesos], [MontoContratoUVI], [FechaOferta], [FechaInicio]) VALUES (3, N'500-15615-5156', N'Barrio Solares de San Juan', N'1500', 1, 1, 2, 200, 15000, N'4234234', 500, CAST(N'2019-01-09' AS Date), 10000, 15000, CAST(N'2019-01-15' AS Date), CAST(N'2018-12-04' AS Date))
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
SET IDENTITY_INSERT [dbo].[Programa] ON 

INSERT [dbo].[Programa] ([IdPrograma], [Programa]) VALUES (1, N'PROGRAMA FEDERAL  DE CONSTRUCCION "TECHO DIGNO"')
INSERT [dbo].[Programa] ([IdPrograma], [Programa]) VALUES (2, N'PROMEBA NACION')
INSERT [dbo].[Programa] ([IdPrograma], [Programa]) VALUES (3, N'FONAVI')
SET IDENTITY_INSERT [dbo].[Programa] OFF
SET IDENTITY_INSERT [dbo].[Prototipos] ON 

INSERT [dbo].[Prototipos] ([IdPrototipo], [Prototipo]) VALUES (1, N'Monoblock')
INSERT [dbo].[Prototipos] ([IdPrototipo], [Prototipo]) VALUES (2, N'Casa de 2 Habitaciones')
INSERT [dbo].[Prototipos] ([IdPrototipo], [Prototipo]) VALUES (3, N'Departamento')
SET IDENTITY_INSERT [dbo].[Prototipos] OFF
SET IDENTITY_INSERT [dbo].[relaObraPrototipo] ON 

INSERT [dbo].[relaObraPrototipo] ([IdrelaObraPrototipo], [Cantidad], [IdObra], [IdPrototipo], [CantidadParaSorteo]) VALUES (1, 150, 2, 1, 145)
INSERT [dbo].[relaObraPrototipo] ([IdrelaObraPrototipo], [Cantidad], [IdObra], [IdPrototipo], [CantidadParaSorteo]) VALUES (2, 200, 3, 1, 200)
INSERT [dbo].[relaObraPrototipo] ([IdrelaObraPrototipo], [Cantidad], [IdObra], [IdPrototipo], [CantidadParaSorteo]) VALUES (3, 300, 3, 2, 295)
SET IDENTITY_INSERT [dbo].[relaObraPrototipo] OFF
SET IDENTITY_INSERT [dbo].[rolSeguimiento] ON 

INSERT [dbo].[rolSeguimiento] ([IdRolSeguimiento], [RolSeguimiento]) VALUES (1, N'Inspector')
INSERT [dbo].[rolSeguimiento] ([IdRolSeguimiento], [RolSeguimiento]) VALUES (2, N'Sobrestante')
SET IDENTITY_INSERT [dbo].[rolSeguimiento] OFF
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
ALTER TABLE [dbo].[Certificados]  WITH CHECK ADD  CONSTRAINT [FK_Certificados_TipoCertificado] FOREIGN KEY([IdTipoCertificado])
REFERENCES [dbo].[TipoCertificado] ([IdTipoCertificado])
GO
ALTER TABLE [dbo].[Certificados] CHECK CONSTRAINT [FK_Certificados_TipoCertificado]
GO
ALTER TABLE [dbo].[Entregas]  WITH CHECK ADD  CONSTRAINT [FK_Entregas_Obra] FOREIGN KEY([IdObra])
REFERENCES [dbo].[Obra] ([IdObra])
GO
ALTER TABLE [dbo].[Entregas] CHECK CONSTRAINT [FK_Entregas_Obra]
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
ALTER TABLE [dbo].[relaObraCertificado]  WITH CHECK ADD  CONSTRAINT [FK_relaObraCertificado_Certificados] FOREIGN KEY([IdCertificado])
REFERENCES [dbo].[Certificados] ([IdCertificado])
GO
ALTER TABLE [dbo].[relaObraCertificado] CHECK CONSTRAINT [FK_relaObraCertificado_Certificados]
GO
ALTER TABLE [dbo].[relaObraCertificado]  WITH CHECK ADD  CONSTRAINT [FK_relaObraCertificado_Obra] FOREIGN KEY([IdObra])
REFERENCES [dbo].[Obra] ([IdObra])
GO
ALTER TABLE [dbo].[relaObraCertificado] CHECK CONSTRAINT [FK_relaObraCertificado_Obra]
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
/****** Object:  StoredProcedure [dbo].[sp_ABM_Avance]    Script Date: 25/1/2019 7:23:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_ABM_Avance]
@xIdAvance int=0,
@xPorcentajePrevisto float=0,
@xPorcentajeReal float=0,
@xPorcentajeAtraso float=0,
@xIdObra int=0,
@xFechaAvance date=null,
@xAccion char(1)='Z',
@xResult int output
as

Begin Transaction
Select @xResult=0
Begin Try
	if (@xAccion='A')
	begin
		Insert into Avance(porcentajePrevisto,porcentajeReal,porcentajeAtraso,IdObra,FechaAvance)
		Values (@xporcentajePrevisto,@xporcentajeReal,@xporcentajeAtraso,@xIdObra,@xFechaAvance)
	end
	else
	if (@xAccion='M')
	begin
		Update Avance Set porcentajePrevisto=@xPorcentajePrevisto,porcentajeReal=@xPorcentajeReal,porcentajeAtraso=@xPorcentajeAtraso,
		IdObra=@xIdObra,FechaAvance=@xFechaAvance 
		Where IdAvance=@xIdAvance
	end	
	else
		begin
			Delete From Avance Where IdAvance=@xIdAvance
		end
Commit

End Try

 Begin Catch
	RollBack Transaction
	Select @xResult=1
End Catch
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_CertificadoObra]    Script Date: 25/1/2019 7:23:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_ABM_CertificadoObra]
@xIdCertificadoObra	int=0,
@xIdObra	int=0,
@xNroCertificado	nchar(10)=null,
@xFechaCertificado	date=null,
@xMesCorresp	int=0,
@xAnioCorresp	int=0,
@xImporteCertificado	float=0,
@xImpCertUVI	float=0,
@xImpRetencion	float=0,
@xImpRetencionUVI	float=0,
@xAccion char(1)='Z',
@xResult int output
as

Begin Transaction
Select @xResult=0
Begin Try
	if (@xAccion='A')
	begin
		Insert into CertificadoObra(IdObra,NroCertificado,FechaCertificado,MesCorresp,AnioCorresp,ImporteCertificado,ImpCertUVI,ImpRetencion,ImpRetencionUVI)
		Values (@xIdObra,@xNroCertificado,@xFechaCertificado,@xMesCorresp,@xAnioCorresp,@xImporteCertificado,@xImpCertUVI,@xImpRetencion,@xImpRetencionUVI)
	end
	else
	if (@xAccion='M')
	begin
		Update CertificadoObra Set IdObra=@xIdObra,NroCertificado=@xNroCertificado,FechaCertificado=@xFechaCertificado,
		MesCorresp=@xMesCorresp,AnioCorresp=@xAnioCorresp,ImporteCertificado=@xImporteCertificado,ImpCertUVI=@xImpCertUVI,
		ImpRetencion=@xImpRetencion,ImpRetencionUVI=@xImpRetencionUVI 
		Where IdCertificadoObra=@xIdCertificadoObra
	end	
	else
		begin
			Delete From CertificadoObra Where IdCertificadoObra=@xIdCertificadoObra
		end
Commit

End Try

 Begin Catch
	RollBack Transaction
	Select @xResult=1
End Catch
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_Certificados]    Script Date: 25/1/2019 7:23:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ABM_Certificados]
@xIdCertificado	int=0,
@xCertificado	varchar(50)=null,
@xIdTipoCertificado	int=0,
@xAccion char(1)='Z',
@xResult int output
as

Begin Transaction
Select @xResult=0
Begin Try
	if (@xAccion='A')
	begin
		Insert into Certificados(Certificado,IdTipoCertificado)
		Values (@xCertificado,@xIdTipoCertificado)
	end
	else
	if (@xAccion='M')
	begin
		Update Certificados Set Certificado=@xCertificado,IdTipoCertificado=@xIdTipoCertificado
		Where IdCertificado=@xCertificado
	end	
	else
		begin
			Delete From Certificados Where IdCertificado=@xCertificado
		end
Commit

End Try

 Begin Catch
	RollBack Transaction
	Select @xResult=1
End Catch
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_EmpresaConstructora]    Script Date: 25/1/2019 7:23:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ABM_EmpresaConstructora]
@xIdEmpConstructora int=0,
@xEmpresaConstructora	varchar(100)=null,
@xAccion char(1)='Z',
@xResult int output
as

Begin Transaction
Select @xResult=0
Begin Try
	if (@xAccion='A')
	begin
		Insert into EmpresaConstructora(EmpresaConstructora)
		Values (@xEmpresaConstructora)
	end
	else
	if (@xAccion='M')
	begin
		Update EmpresaConstructora Set EmpresaConstructora=@xEmpresaConstructora Where IdEmpConstructora=@xIdEmpConstructora
	end	
	else
		begin
			Delete From EmpresaConstructora Where IdEmpConstructora=@xIdEmpConstructora
		end
Commit

End Try

 Begin Catch
	RollBack Transaction
	Select @xResult=1
End Catch
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_Entregas]    Script Date: 25/1/2019 7:23:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ABM_Entregas]
@xIdEntrega int=0,
@xFechaEntrega date=null,
@xCantEntregada	int=0,
@xIdObra int=0,
@xAccion char(1)='Z',
@xResult int output
as

Begin Transaction
Select @xResult=0
Begin Try
	if (@xAccion='A')
	begin
		Insert into Entregas(FechaEntrega,CantEntregada,IdObra)
		Values (@xFechaEntrega,@xCantEntregada,@xIdObra)
	end
	else
	if (@xAccion='M')
	begin
		Update Entregas Set FechaEntrega=@xFechaEntrega,CantEntregada=@xCantEntregada,IdObra=@xIdObra
		Where IdEntrega=@xIdEntrega
	end	
	else
		begin
			Delete From Entregas Where IdEntrega=@xIdEntrega
		end
Commit

End Try

 Begin Catch
	RollBack Transaction
	Select @xResult=1
End Catch
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_Obra]    Script Date: 25/1/2019 7:23:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_ABM_Obra]
@xIdObra	int=0,
@xexpMatriz	varchar(50)=null,
@xObra	varchar(100)=null,
@xACCU	varchar(50)=null,
@xIdDptoProvincia	int=0,
@xIdPrograma	int=0,
@xIdEmpConstructora	int=0,
@xcantParaSorteo	int=0,
@xmontoOriginal	float=0,
@xlicitacionResolucion	varchar(50)=null,
@xplazoOriginal	int=0,
@xfechaFinalizacion	date=null,
@xMontoContratoPesos	float=0,
@xMontoContratoUVI	float=0,
@xFechaOferta	date=null,
@xFechaInicio	date=null,
@xAccion char(1)='Z',
@xResult int output
as

Begin Transaction
Select @xResult=0
Begin Try
	if (@xAccion='A')
	begin
		Insert into Obra(expMatriz,Obra,ACCU,IdDptoProvincia,IdPrograma,IdEmpConstructora,cantParaSorteo,montoOriginal,licitacionResolucion,plazoOriginal,fechaFinalizacion,MontoContratoPesos,MontoContratoUVI,FechaOferta,FechaInicio)
		Values (@xexpMatriz,@xObra,@xACCU,@xIdDptoProvincia,@xIdPrograma,@xIdEmpConstructora,@xcantParaSorteo,@xmontoOriginal,@xlicitacionResolucion,@xplazoOriginal,@xfechaFinalizacion,@xMontoContratoPesos,@xMontoContratoUVI,@xFechaOferta,@xFechaInicio)
	end
	else
	if (@xAccion='M')
	begin
		Update Obra Set expMatriz=@xexpMatriz,Obra=@xObra,ACCU=@xACCU,IdDptoProvincia=@xIdDptoProvincia,IdPrograma=@xIdPrograma,
		IdEmpConstructora=@xIdEmpConstructora,cantParaSorteo=@xcantParaSorteo,montoOriginal=@xmontoOriginal,licitacionResolucion=@xlicitacionResolucion,
		plazoOriginal=@xplazoOriginal,fechaFinalizacion=@xfechaFinalizacion,MontoContratoPesos=@xMontoContratoPesos,MontoContratoUVI=@xMontoContratoUVI,
		FechaOferta=@xFechaOferta,FechaInicio=@xFechaInicio 
		Where IdObra=@xIdObra
	end	
	else
		begin
			Delete From Obra Where IdObra=@xIdObra
		end
Commit

End Try

 Begin Catch
	RollBack Transaction
	Select @xResult=1
End Catch
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_Personas]    Script Date: 25/1/2019 7:23:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_ABM_Personas]
@xIdPersona	int=0,
@xApellidoNombre varchar(100)=null,
@xDocumento	varchar(50)=null,
@xAccion char(1)='Z',
@xResult int output
as

Begin Transaction
Select @xResult=0
Begin Try
	if (@xAccion='A')
	begin
		Insert into Personas(ApellidoNombre,Documento)
		Values (@xApellidoNombre,@xDocumento)
	end
	else
	if (@xAccion='M')
	begin
		Update Personas Set ApellidoNombre=@xApellidoNombre,Documento=@xDocumento
		Where IdPersona=@xIdPersona
	end	
	else
		begin
			Delete From Personas Where IdPersona=@xIdPersona
		end
Commit

End Try

 Begin Catch
	RollBack Transaction
	Select @xResult=1
End Catch
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_Programa]    Script Date: 25/1/2019 7:23:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ABM_Programa]
@xIdPrograma int=0,
@xPrograma	varchar(100)=null,
@xAccion char(1)='Z',
@xResult int output
as

Begin Transaction
Select @xResult=0
Begin Try
	if (@xAccion='A')
	begin
		Insert into Programa(Programa)
		Values (@xPrograma)
	end
	else
	if (@xAccion='M')
	begin
		Update Programa Set Programa=@xPrograma Where IdPrograma=@xIdPrograma
	end	
	else
		begin
			Delete From Programa Where IdPrograma=@xIdPrograma
		end
Commit

End Try

 Begin Catch
	RollBack Transaction
	Select @xResult=1
End Catch
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_Prototipos]    Script Date: 25/1/2019 7:23:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ABM_Prototipos]
@xIdPrototipo int=0,
@xPrototipo	varchar(100)=null,
@xAccion char(1)='Z',
@xResult int output
as

Begin Transaction
Select @xResult=0
Begin Try
	if (@xAccion='A')
	begin
		Insert into Prototipos(Prototipo)
		Values (@xPrototipo)
	end
	else
	if (@xAccion='M')
	begin
		Update Prototipos Set Prototipo=@xPrototipo Where IdPrototipo=@xIdPrototipo
	end	
	else
		begin
			Delete From Prototipos Where IdPrototipo=@xIdPrototipo
		end
Commit

End Try

 Begin Catch
	RollBack Transaction
	Select @xResult=1
End Catch
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_relaObraAportes]    Script Date: 25/1/2019 7:23:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_ABM_relaObraAportes]
@xIdRelaAportesObra	int=0,
@xIdaportes	int=0,
@xIdObra	int=0,
@xFechaAporte	date=null,
@xImporteAporte	float=0,
@xImpAporteUVI	float=0,
@xAccion char(1)='Z',
@xResult int output
as

Begin Transaction
Select @xResult=0
Begin Try
	if (@xAccion='A')
	begin
		Insert into relaObraAportes(Idaportes,IdObra,FechaAporte,ImporteAporte,ImpAporteUVI)
		Values (@xIdaportes,@xIdObra,@xFechaAporte,@xImporteAporte,@xImpAporteUVI)
	end
	else
	if (@xAccion='M')
	begin
		Update relaObraAportes Set Idaportes=@xIdaportes,IdObra=@xIdObra,FechaAporte=@xFechaAporte,
		ImporteAporte=@xImporteAporte,ImpAporteUVI=@xImpAporteUVI
		Where IdRelaAportesObra=@xIdRelaAportesObra
	end	
	else
		begin
			Delete From relaObraAportes Where IdRelaAportesObra=@xIdRelaAportesObra
		end
Commit

End Try

 Begin Catch
	RollBack Transaction
	Select @xResult=1
End Catch
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_relaObraCertificado]    Script Date: 25/1/2019 7:23:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ABM_relaObraCertificado]
@xIdrelaObraCertificado	int=0,
@xFechaPresentacion	date=null,
@xIdCertificado	int=0,
@xIdObra	int=0,
@xAccion char(1)='Z',
@xResult int output
as

Begin Transaction
Select @xResult=0
Begin Try
	if (@xAccion='A')
	begin
		Insert into relaObraCertificado(FechaPresentacion,IdCertificado,IdObra)
		Values (@xFechaPresentacion,@xIdCertificado,@xIdObra)
	end
	else
	if (@xAccion='M')
	begin
		Update relaObraCertificado Set FechaPresentacion=@xFechaPresentacion,IdObra=@xIdObra,IdCertificado=@xIdCertificado
		Where IdrelaObraCertificado=@xIdrelaObraCertificado
	end	
	else
		begin
			Delete From relaObraCertificado Where IdrelaObraCertificado=@xIdrelaObraCertificado
		end
Commit

End Try

 Begin Catch
	RollBack Transaction
	Select @xResult=1
End Catch
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_relaObraPrototipo]    Script Date: 25/1/2019 7:23:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ABM_relaObraPrototipo]
@xIdrelaObraPrototipo	int=0,
@xCantidad	int=0,
@xIdObra	int=0,
@xIdPrototipo	int=0,
@xCantidadParaSorteo int=0,
@xAccion char(1)='Z',
@xResult int output
as

Begin Transaction
Select @xResult=0
Begin Try
	if (@xAccion='A')
	begin
		Insert into relaObraPrototipo(Cantidad,IdObra,IdPrototipo,CantidadParaSorteo)
		Values (@xCantidad,@xIdObra,@xIdPrototipo,@xCantidadParaSorteo)
	end
	else
	if (@xAccion='M')
	begin
		Update relaObraPrototipo Set Cantidad=@xCantidad,IdObra=@xIdObra,IdPrototipo=@xIdPrototipo,
		CantidadParaSorteo=@xCantidadParaSorteo 
		Where IdrelaObraPrototipo=@xIdrelaObraPrototipo
	end	
	else
		begin
			Delete From relaObraPrototipo Where IdrelaObraPrototipo=@xIdrelaObraPrototipo
		end
Commit

End Try

 Begin Catch
	RollBack Transaction
	Select @xResult=1
End Catch
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_relaSeguimientoPersona]    Script Date: 25/1/2019 7:23:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_ABM_relaSeguimientoPersona]
@xIdRelaseguimientoPersona	int=0,
@xIdRolSeguimiento	int=0,
@xIdSeguimiento	int=0,
@xIdPersona	int=0,
@xAccion char(1)='Z',
@xResult int output
as

Begin Transaction
Select @xResult=0
Begin Try
	if (@xAccion='A')
	begin
		Insert into relaSeguimientoPersona(IdRolSeguimiento,IdSeguimiento,IdPersona)
		Values (@xIdRolSeguimiento,@xIdSeguimiento,@xIdPersona)
	end
	else
	if (@xAccion='M')
	begin
		Update relaSeguimientoPersona Set IdRolSeguimiento=@xIdRolSeguimiento,IdSeguimiento=@xIdSeguimiento,
		IdPersona=@xIdPersona
		Where IdRelaseguimientoPersona=@xIdRelaseguimientoPersona
	end	
	else
		begin
			Delete From relaSeguimientoPersona Where IdRelaseguimientoPersona=@xIdRelaseguimientoPersona
		end
Commit

End Try

 Begin Catch
	RollBack Transaction
	Select @xResult=1
End Catch
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_Seguimiento]    Script Date: 25/1/2019 7:23:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_ABM_Seguimiento]
@xIdSeguimiento	int=0,
@xFechaSeguimiento	date=null,
@xIdObra	int=0,
@xIdEstadoObra	int=0,
@xAccion char(1)='Z',
@xResult int output
as

Begin Transaction
Select @xResult=0
Begin Try
	if (@xAccion='A')
	begin
		Insert into Seguimiento(FechaSeguimiento,IdObra,IdEstadoObra)
		Values (@xFechaSeguimiento,@xIdObra,@xIdEstadoObra)
	end
	else
	if (@xAccion='M')
	begin
		Update Seguimiento Set FechaSeguimiento=@xFechaSeguimiento,IdObra=@xIdObra
		Where IdSeguimiento=@xIdSeguimiento
	end	
	else
		begin
			Delete From Seguimiento Where IdSeguimiento=@xIdSeguimiento
		end
Commit

End Try

 Begin Catch
	RollBack Transaction
	Select @xResult=1
End Catch
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_TipoCertificado]    Script Date: 25/1/2019 7:23:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ABM_TipoCertificado]
@xIdTipoCertificado	int=0,
@xTipoCertificado	varchar(100)=null,
@xidTipoCertificadoCat	int=0,
@xAccion char(1)='Z',
@xResult int output
as

Begin Transaction
Select @xResult=0
Begin Try
	if (@xAccion='A')
	begin
		Insert into TipoCertificado(TipoCertificado,idTipoCertificadoCat)
		Values (@xTipoCertificado,@xidTipoCertificadoCat)
	end
	else
	if (@xAccion='M')
	begin
		Update TipoCertificado Set TipoCertificado=@xTipoCertificado,idTipoCertificadoCat=@xIdTipoCertificadoCat
		Where IdTipoCertificado=@xIdTipoCertificado
	end	
	else
		begin
			Delete From TipoCertificado Where IdTipoCertificado=@xIdTipoCertificado
		end
Commit

End Try

 Begin Catch
	RollBack Transaction
	Select @xResult=1
End Catch
GO
/****** Object:  StoredProcedure [dbo].[sp_ABM_TipoCertificadoCat]    Script Date: 25/1/2019 7:23:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_ABM_TipoCertificadoCat]
@xidCatCertificado	int=0,
@xCatCertificado	nchar(50)=null,
@xAccion char(1)='Z',
@xResult int output
as

Begin Transaction
Select @xResult=0
Begin Try
	if (@xAccion='A')
	begin
		Insert into TipoCertificadoCat(CatCertificado)
		Values (@xCatCertificado)
	end
	else
	if (@xAccion='M')
	begin
		Update TipoCertificadoCat Set CatCertificado=@xCatCertificado Where idCatCertificado=@xidCatCertificado
	end	
	else
		begin
			Delete From TipoCertificadoCat Where idCatCertificado=@xidCatCertificado
		end
Commit

End Try

 Begin Catch
	RollBack Transaction
	Select @xResult=1
End Catch
GO
/****** Object:  StoredProcedure [dbo].[sp_DptoPciaTraer]    Script Date: 25/1/2019 7:23:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_DptoPciaTraer]
@Id int
as

	select * from DptoProvincia Where IdDptoProvincia=@Id
	
GO
