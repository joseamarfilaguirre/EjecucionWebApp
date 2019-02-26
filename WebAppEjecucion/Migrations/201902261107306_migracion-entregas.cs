namespace WebAppEjecucion.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class migracionentregas : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Avance",
                c => new
                    {
                        IdAvance = c.Int(nullable: false, identity: true),
                        porcentajePrevisto = c.Double(),
                        porcentajeReal = c.Double(),
                        porcentajeAtraso = c.Double(),
                        IdObra = c.Int(),
                        FechaAvance = c.DateTime(storeType: "date"),
                    })
                .PrimaryKey(t => t.IdAvance)
                .ForeignKey("dbo.Obra", t => t.IdObra)
                .Index(t => t.IdObra);
            
            CreateTable(
                "dbo.Obra",
                c => new
                    {
                        IdObra = c.Int(nullable: false, identity: true),
                        expMatriz = c.String(maxLength: 50, unicode: false),
                        Obra = c.String(nullable: false, maxLength: 100, unicode: false),
                        ACCU = c.String(maxLength: 50, unicode: false),
                        IdDptoProvincia = c.Int(),
                        IdPrograma = c.Int(),
                        IdEmpConstructora = c.Int(),
                        cantParaSorteo = c.Int(),
                        montoOriginal = c.Double(),
                        licitacionResolucion = c.String(maxLength: 50, unicode: false),
                        plazoOriginal = c.Int(),
                        fechaFinalizacion = c.DateTime(storeType: "date"),
                        MontoContratoPesos = c.Double(),
                        MontoContratoUVI = c.Double(),
                        FechaOferta = c.DateTime(storeType: "date"),
                        FechaInicio = c.DateTime(storeType: "date"),
                    })
                .PrimaryKey(t => t.IdObra)
                .ForeignKey("dbo.DptoProvincia", t => t.IdDptoProvincia)
                .ForeignKey("dbo.EmpresaConstructora", t => t.IdEmpConstructora)
                .ForeignKey("dbo.Programa", t => t.IdPrograma)
                .Index(t => t.IdDptoProvincia)
                .Index(t => t.IdPrograma)
                .Index(t => t.IdEmpConstructora);
            
            CreateTable(
                "dbo.CertificadoObra",
                c => new
                    {
                        IdCertificadoObra = c.Int(nullable: false, identity: true),
                        IdObra = c.Int(nullable: false),
                        NroCertificado = c.String(maxLength: 10, fixedLength: true),
                        FechaCertificado = c.DateTime(nullable: false, storeType: "date"),
                        MesCorresp = c.Int(nullable: false),
                        AnioCorresp = c.Int(nullable: false),
                        ImporteCertificado = c.Double(nullable: false),
                        ImpCertUVI = c.Double(nullable: false),
                        ImpRetencion = c.Double(nullable: false),
                        ImpRetencionUVI = c.Double(nullable: false),
                    })
                .PrimaryKey(t => t.IdCertificadoObra)
                .ForeignKey("dbo.Obra", t => t.IdObra)
                .Index(t => t.IdObra);
            
            CreateTable(
                "dbo.CertificadoPago",
                c => new
                    {
                        IdCertPago = c.Int(nullable: false, identity: true),
                        IdObra = c.Int(nullable: false),
                        NroCertPago = c.String(nullable: false, maxLength: 50, fixedLength: true),
                        FechaCertPago = c.DateTime(nullable: false, storeType: "date"),
                        CorrespMes = c.Int(nullable: false),
                        CorrespAnio = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IdCertPago)
                .ForeignKey("dbo.Param_Meses", t => t.CorrespMes)
                .ForeignKey("dbo.Obra", t => t.IdObra)
                .Index(t => t.IdObra)
                .Index(t => t.CorrespMes);
            
            CreateTable(
                "dbo.CertificadoPagoDetalle",
                c => new
                    {
                        IdCertPagoDetalle = c.Int(nullable: false),
                        IdCertPago = c.Int(nullable: false),
                        PorcentajePrevMensual = c.Double(nullable: false),
                        PorcentajePrevAcumulado = c.Double(nullable: false),
                        PorcentajeFisicoMensual = c.Double(nullable: false),
                        PorcentajeFisicoAcumuladol = c.Double(nullable: false),
                        IdRubro = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IdCertPagoDetalle)
                .ForeignKey("dbo.TipoCertPagoRubro", t => t.IdRubro)
                .ForeignKey("dbo.CertificadoPago", t => t.IdCertPago)
                .Index(t => t.IdCertPago)
                .Index(t => t.IdRubro);
            
            CreateTable(
                "dbo.TipoCertPagoRubro",
                c => new
                    {
                        IdTipoCertPagoRubro = c.Int(nullable: false, identity: true),
                        TipoCertPagoRubro = c.String(nullable: false, maxLength: 50, fixedLength: true),
                    })
                .PrimaryKey(t => t.IdTipoCertPagoRubro);
            
            CreateTable(
                "dbo.Param_Meses",
                c => new
                    {
                        IdMes = c.Int(nullable: false),
                        Mes = c.String(nullable: false, maxLength: 50, fixedLength: true),
                    })
                .PrimaryKey(t => t.IdMes);
            
            CreateTable(
                "dbo.DptoProvincia",
                c => new
                    {
                        IdDptoProvincia = c.Int(nullable: false, identity: true),
                        DptoProvincia = c.String(nullable: false, maxLength: 100, unicode: false),
                    })
                .PrimaryKey(t => t.IdDptoProvincia);
            
            CreateTable(
                "dbo.EmpresaConstructora",
                c => new
                    {
                        IdEmpConstructora = c.Int(nullable: false, identity: true),
                        EmpresaConstructora = c.String(nullable: false, maxLength: 100, unicode: false),
                    })
                .PrimaryKey(t => t.IdEmpConstructora);
            
            CreateTable(
                "dbo.Entregas",
                c => new
                    {
                        IdEntrega = c.Int(nullable: false, identity: true),
                        FechaEntrega = c.DateTime(nullable: false, storeType: "date"),
                        CantEntregada = c.Int(nullable: false),
                        IdrelaObraPrototipo = c.Int(nullable: false),
                        Obra_IdObra = c.Int(),
                    })
                .PrimaryKey(t => t.IdEntrega)
                .ForeignKey("dbo.relaObraPrototipo", t => t.IdrelaObraPrototipo)
                .ForeignKey("dbo.Obra", t => t.Obra_IdObra)
                .Index(t => t.IdrelaObraPrototipo)
                .Index(t => t.Obra_IdObra);
            
            CreateTable(
                "dbo.relaObraPrototipo",
                c => new
                    {
                        IdrelaObraPrototipo = c.Int(nullable: false, identity: true),
                        Cantidad = c.Int(nullable: false),
                        IdObra = c.Int(),
                        IdPrototipo = c.Int(),
                        CantidadParaSorteo = c.Int(),
                    })
                .PrimaryKey(t => t.IdrelaObraPrototipo)
                .ForeignKey("dbo.Obra", t => t.IdObra)
                .ForeignKey("dbo.Prototipos", t => t.IdPrototipo)
                .Index(t => t.IdObra)
                .Index(t => t.IdPrototipo);
            
            CreateTable(
                "dbo.Prototipos",
                c => new
                    {
                        IdPrototipo = c.Int(nullable: false, identity: true),
                        Prototipo = c.String(nullable: false, maxLength: 50, unicode: false),
                    })
                .PrimaryKey(t => t.IdPrototipo);
            
            CreateTable(
                "dbo.Programa",
                c => new
                    {
                        IdPrograma = c.Int(nullable: false, identity: true),
                        Programa = c.String(nullable: false, maxLength: 100, unicode: false),
                    })
                .PrimaryKey(t => t.IdPrograma);
            
            CreateTable(
                "dbo.relaObraAnticipoFinanciero",
                c => new
                    {
                        IdRelaObraAnticipoF = c.Int(nullable: false, identity: true),
                        IdTipoAntFinanciero = c.Int(nullable: false),
                        IdObra = c.Int(nullable: false),
                        FechaAnticipo = c.DateTime(nullable: false, storeType: "date"),
                        ImporteAnticipo = c.Double(nullable: false),
                        ImporteUviAnticipo = c.Double(),
                    })
                .PrimaryKey(t => t.IdRelaObraAnticipoF)
                .ForeignKey("dbo.TipoAnticipoFinanciero", t => t.IdTipoAntFinanciero)
                .ForeignKey("dbo.Obra", t => t.IdObra)
                .Index(t => t.IdTipoAntFinanciero)
                .Index(t => t.IdObra);
            
            CreateTable(
                "dbo.TipoAnticipoFinanciero",
                c => new
                    {
                        IdTipoAntFinanciero = c.Int(nullable: false, identity: true),
                        TipoAntFinanciero = c.String(nullable: false, maxLength: 50, fixedLength: true),
                    })
                .PrimaryKey(t => t.IdTipoAntFinanciero);
            
            CreateTable(
                "dbo.relaObraAportes",
                c => new
                    {
                        IdRelaAportesObra = c.Int(nullable: false, identity: true),
                        Idaportes = c.Int(nullable: false),
                        IdObra = c.Int(nullable: false),
                        FechaAporte = c.DateTime(nullable: false, storeType: "date"),
                        ImporteAporte = c.Double(nullable: false),
                        ImpAporteUVI = c.Double(nullable: false),
                    })
                .PrimaryKey(t => t.IdRelaAportesObra)
                .ForeignKey("dbo.TipoAportes", t => t.Idaportes)
                .ForeignKey("dbo.Obra", t => t.IdObra)
                .Index(t => t.Idaportes)
                .Index(t => t.IdObra);
            
            CreateTable(
                "dbo.TipoAportes",
                c => new
                    {
                        IdAportes = c.Int(nullable: false, identity: true),
                        AportesDesc = c.String(nullable: false, maxLength: 50, fixedLength: true),
                    })
                .PrimaryKey(t => t.IdAportes);
            
            CreateTable(
                "dbo.relaObraCertificado",
                c => new
                    {
                        IdrelaObraCertificado = c.Int(nullable: false),
                        FechaPresentacion = c.DateTime(nullable: false, storeType: "date"),
                        IdObra = c.Int(nullable: false),
                        Certificado = c.String(maxLength: 50),
                        idTipoCertificado = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IdrelaObraCertificado)
                .ForeignKey("dbo.TipoCertificado", t => t.idTipoCertificado)
                .ForeignKey("dbo.Obra", t => t.IdObra)
                .Index(t => t.IdObra)
                .Index(t => t.idTipoCertificado);
            
            CreateTable(
                "dbo.TipoCertificado",
                c => new
                    {
                        IdTipoCertificado = c.Int(nullable: false, identity: true),
                        TipoCertificado = c.String(nullable: false, maxLength: 100, unicode: false),
                        idTipoCertificadoCat = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IdTipoCertificado)
                .ForeignKey("dbo.TipoCertificadoCat", t => t.idTipoCertificadoCat)
                .Index(t => t.idTipoCertificadoCat);
            
            CreateTable(
                "dbo.TipoCertificadoCat",
                c => new
                    {
                        idCatCertificado = c.Int(nullable: false, identity: true),
                        CatCertificado = c.String(nullable: false, maxLength: 50, fixedLength: true),
                    })
                .PrimaryKey(t => t.idCatCertificado);
            
            CreateTable(
                "dbo.Seguimiento",
                c => new
                    {
                        IdSeguimiento = c.Int(nullable: false, identity: true),
                        FechaSeguimiento = c.DateTime(nullable: false, storeType: "date"),
                        IdObra = c.Int(nullable: false),
                        IdEstadoObra = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IdSeguimiento)
                .ForeignKey("dbo.EstadoObra", t => t.IdEstadoObra, cascadeDelete: true)
                .ForeignKey("dbo.Obra", t => t.IdObra)
                .Index(t => t.IdObra)
                .Index(t => t.IdEstadoObra);
            
            CreateTable(
                "dbo.EstadoObra",
                c => new
                    {
                        IdEstadoObra = c.Int(nullable: false, identity: true),
                        EstadoObra = c.String(nullable: false, maxLength: 50, unicode: false),
                    })
                .PrimaryKey(t => t.IdEstadoObra);
            
            CreateTable(
                "dbo.relaSeguimientoPersona",
                c => new
                    {
                        IdRelaseguimientoPersona = c.Int(nullable: false, identity: true),
                        IdRolSeguimiento = c.Int(nullable: false),
                        IdSeguimiento = c.Int(nullable: false),
                        IdPersona = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IdRelaseguimientoPersona)
                .ForeignKey("dbo.Personas", t => t.IdPersona)
                .ForeignKey("dbo.rolSeguimiento", t => t.IdRolSeguimiento)
                .ForeignKey("dbo.Seguimiento", t => t.IdSeguimiento)
                .Index(t => t.IdRolSeguimiento)
                .Index(t => t.IdSeguimiento)
                .Index(t => t.IdPersona);
            
            CreateTable(
                "dbo.Personas",
                c => new
                    {
                        IdPersona = c.Int(nullable: false, identity: true),
                        ApellidoNombre = c.String(nullable: false, maxLength: 100, unicode: false),
                        Documento = c.String(nullable: false, maxLength: 50, unicode: false),
                    })
                .PrimaryKey(t => t.IdPersona);
            
            CreateTable(
                "dbo.rolSeguimiento",
                c => new
                    {
                        IdRolSeguimiento = c.Int(nullable: false, identity: true),
                        RolSeguimiento = c.String(nullable: false, maxLength: 50, unicode: false),
                    })
                .PrimaryKey(t => t.IdRolSeguimiento);
            
            CreateTable(
                "dbo.EquipoInformatico",
                c => new
                    {
                        IdEquipoInformatico = c.Int(nullable: false, identity: true),
                        EquipoInformático = c.String(nullable: false, maxLength: 50, unicode: false),
                    })
                .PrimaryKey(t => t.IdEquipoInformatico);
            
            CreateTable(
                "dbo.Movilidad",
                c => new
                    {
                        IdMovilidad = c.Int(nullable: false, identity: true),
                        Movilidad = c.String(nullable: false, maxLength: 50, unicode: false),
                    })
                .PrimaryKey(t => t.IdMovilidad);
            
            CreateTable(
                "dbo.relaObraContratados",
                c => new
                    {
                        IdrelaObraContratado = c.Int(nullable: false, identity: true),
                        IdObra = c.Int(),
                        IdPersona = c.Int(),
                        FechaDesde = c.DateTime(storeType: "date"),
                        FechaHasta = c.DateTime(storeType: "date"),
                    })
                .PrimaryKey(t => t.IdrelaObraContratado);
            
            CreateTable(
                "dbo.relaObraEqInformatico",
                c => new
                    {
                        IdrelaObraEqInformatico = c.Int(nullable: false),
                        IdEquipoInformatico = c.Int(),
                        IdObra = c.Int(),
                    })
                .PrimaryKey(t => t.IdrelaObraEqInformatico);
            
            CreateTable(
                "dbo.relaObraMovilidad",
                c => new
                    {
                        IdrelaObraMovilidad = c.Int(nullable: false, identity: true),
                        FechaDesde = c.DateTime(storeType: "date"),
                        FechaHasta = c.DateTime(storeType: "date"),
                        IdMovilidad = c.Int(),
                        IdObra = c.Int(),
                    })
                .PrimaryKey(t => t.IdrelaObraMovilidad);
            
            CreateTable(
                "dbo.sysdiagrams",
                c => new
                    {
                        diagram_id = c.Int(nullable: false, identity: true),
                        name = c.String(nullable: false, maxLength: 128),
                        principal_id = c.Int(nullable: false),
                        version = c.Int(),
                        definition = c.Binary(),
                    })
                .PrimaryKey(t => t.diagram_id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Seguimiento", "IdObra", "dbo.Obra");
            DropForeignKey("dbo.relaSeguimientoPersona", "IdSeguimiento", "dbo.Seguimiento");
            DropForeignKey("dbo.relaSeguimientoPersona", "IdRolSeguimiento", "dbo.rolSeguimiento");
            DropForeignKey("dbo.relaSeguimientoPersona", "IdPersona", "dbo.Personas");
            DropForeignKey("dbo.Seguimiento", "IdEstadoObra", "dbo.EstadoObra");
            DropForeignKey("dbo.relaObraCertificado", "IdObra", "dbo.Obra");
            DropForeignKey("dbo.TipoCertificado", "idTipoCertificadoCat", "dbo.TipoCertificadoCat");
            DropForeignKey("dbo.relaObraCertificado", "idTipoCertificado", "dbo.TipoCertificado");
            DropForeignKey("dbo.relaObraAportes", "IdObra", "dbo.Obra");
            DropForeignKey("dbo.relaObraAportes", "Idaportes", "dbo.TipoAportes");
            DropForeignKey("dbo.relaObraAnticipoFinanciero", "IdObra", "dbo.Obra");
            DropForeignKey("dbo.relaObraAnticipoFinanciero", "IdTipoAntFinanciero", "dbo.TipoAnticipoFinanciero");
            DropForeignKey("dbo.Obra", "IdPrograma", "dbo.Programa");
            DropForeignKey("dbo.Entregas", "Obra_IdObra", "dbo.Obra");
            DropForeignKey("dbo.relaObraPrototipo", "IdPrototipo", "dbo.Prototipos");
            DropForeignKey("dbo.relaObraPrototipo", "IdObra", "dbo.Obra");
            DropForeignKey("dbo.Entregas", "IdrelaObraPrototipo", "dbo.relaObraPrototipo");
            DropForeignKey("dbo.Obra", "IdEmpConstructora", "dbo.EmpresaConstructora");
            DropForeignKey("dbo.Obra", "IdDptoProvincia", "dbo.DptoProvincia");
            DropForeignKey("dbo.CertificadoPago", "IdObra", "dbo.Obra");
            DropForeignKey("dbo.CertificadoPago", "CorrespMes", "dbo.Param_Meses");
            DropForeignKey("dbo.CertificadoPagoDetalle", "IdCertPago", "dbo.CertificadoPago");
            DropForeignKey("dbo.CertificadoPagoDetalle", "IdRubro", "dbo.TipoCertPagoRubro");
            DropForeignKey("dbo.CertificadoObra", "IdObra", "dbo.Obra");
            DropForeignKey("dbo.Avance", "IdObra", "dbo.Obra");
            DropIndex("dbo.relaSeguimientoPersona", new[] { "IdPersona" });
            DropIndex("dbo.relaSeguimientoPersona", new[] { "IdSeguimiento" });
            DropIndex("dbo.relaSeguimientoPersona", new[] { "IdRolSeguimiento" });
            DropIndex("dbo.Seguimiento", new[] { "IdEstadoObra" });
            DropIndex("dbo.Seguimiento", new[] { "IdObra" });
            DropIndex("dbo.TipoCertificado", new[] { "idTipoCertificadoCat" });
            DropIndex("dbo.relaObraCertificado", new[] { "idTipoCertificado" });
            DropIndex("dbo.relaObraCertificado", new[] { "IdObra" });
            DropIndex("dbo.relaObraAportes", new[] { "IdObra" });
            DropIndex("dbo.relaObraAportes", new[] { "Idaportes" });
            DropIndex("dbo.relaObraAnticipoFinanciero", new[] { "IdObra" });
            DropIndex("dbo.relaObraAnticipoFinanciero", new[] { "IdTipoAntFinanciero" });
            DropIndex("dbo.relaObraPrototipo", new[] { "IdPrototipo" });
            DropIndex("dbo.relaObraPrototipo", new[] { "IdObra" });
            DropIndex("dbo.Entregas", new[] { "Obra_IdObra" });
            DropIndex("dbo.Entregas", new[] { "IdrelaObraPrototipo" });
            DropIndex("dbo.CertificadoPagoDetalle", new[] { "IdRubro" });
            DropIndex("dbo.CertificadoPagoDetalle", new[] { "IdCertPago" });
            DropIndex("dbo.CertificadoPago", new[] { "CorrespMes" });
            DropIndex("dbo.CertificadoPago", new[] { "IdObra" });
            DropIndex("dbo.CertificadoObra", new[] { "IdObra" });
            DropIndex("dbo.Obra", new[] { "IdEmpConstructora" });
            DropIndex("dbo.Obra", new[] { "IdPrograma" });
            DropIndex("dbo.Obra", new[] { "IdDptoProvincia" });
            DropIndex("dbo.Avance", new[] { "IdObra" });
            DropTable("dbo.sysdiagrams");
            DropTable("dbo.relaObraMovilidad");
            DropTable("dbo.relaObraEqInformatico");
            DropTable("dbo.relaObraContratados");
            DropTable("dbo.Movilidad");
            DropTable("dbo.EquipoInformatico");
            DropTable("dbo.rolSeguimiento");
            DropTable("dbo.Personas");
            DropTable("dbo.relaSeguimientoPersona");
            DropTable("dbo.EstadoObra");
            DropTable("dbo.Seguimiento");
            DropTable("dbo.TipoCertificadoCat");
            DropTable("dbo.TipoCertificado");
            DropTable("dbo.relaObraCertificado");
            DropTable("dbo.TipoAportes");
            DropTable("dbo.relaObraAportes");
            DropTable("dbo.TipoAnticipoFinanciero");
            DropTable("dbo.relaObraAnticipoFinanciero");
            DropTable("dbo.Programa");
            DropTable("dbo.Prototipos");
            DropTable("dbo.relaObraPrototipo");
            DropTable("dbo.Entregas");
            DropTable("dbo.EmpresaConstructora");
            DropTable("dbo.DptoProvincia");
            DropTable("dbo.Param_Meses");
            DropTable("dbo.TipoCertPagoRubro");
            DropTable("dbo.CertificadoPagoDetalle");
            DropTable("dbo.CertificadoPago");
            DropTable("dbo.CertificadoObra");
            DropTable("dbo.Obra");
            DropTable("dbo.Avance");
        }
    }
}
