namespace WebAppEjecucion.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ConexionEjecucionDB : DbContext
    {
        public ConexionEjecucionDB()
            : base("name=ConexionEjecucionDB")
        {
        }

        public virtual DbSet<Avance> Avance { get; set; }
        public virtual DbSet<CertificadoObra> CertificadoObra { get; set; }
        public virtual DbSet<CertificadoPago> CertificadoPago { get; set; }
        public virtual DbSet<CertificadoPagoDetalle> CertificadoPagoDetalle { get; set; }
        public virtual DbSet<DptoProvincia> DptoProvincia { get; set; }
        public virtual DbSet<EmpresaConstructora> EmpresaConstructora { get; set; }
        public virtual DbSet<Entregas> Entregas { get; set; }
        public virtual DbSet<EquipoInformatico> EquipoInformatico { get; set; }
        public virtual DbSet<EstadoObra> EstadoObra { get; set; }
        public virtual DbSet<Movilidad> Movilidad { get; set; }
        public virtual DbSet<Obra> Obra { get; set; }
        public virtual DbSet<Param_Meses> Param_Meses { get; set; }
        public virtual DbSet<Personas> Personas { get; set; }
        public virtual DbSet<Programa> Programa { get; set; }
        public virtual DbSet<Prototipos> Prototipos { get; set; }
        public virtual DbSet<relaObraAnticipoFinanciero> relaObraAnticipoFinanciero { get; set; }
        public virtual DbSet<relaObraAportes> relaObraAportes { get; set; }
        public virtual DbSet<relaObraCertificado> relaObraCertificado { get; set; }
        public virtual DbSet<relaObraPrototipo> relaObraPrototipo { get; set; }
        public virtual DbSet<relaSeguimientoPersona> relaSeguimientoPersona { get; set; }
        public virtual DbSet<rolSeguimiento> rolSeguimiento { get; set; }
        public virtual DbSet<Seguimiento> Seguimiento { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<TipoAnticipoFinanciero> TipoAnticipoFinanciero { get; set; }
        public virtual DbSet<TipoAportes> TipoAportes { get; set; }
        public virtual DbSet<TipoCertificado> TipoCertificado { get; set; }
        public virtual DbSet<TipoCertificadoCat> TipoCertificadoCat { get; set; }
        public virtual DbSet<TipoCertPagoRubro> TipoCertPagoRubro { get; set; }
        public virtual DbSet<relaObraContratados> relaObraContratados { get; set; }
        public virtual DbSet<relaObraEqInformatico> relaObraEqInformatico { get; set; }
        public virtual DbSet<relaObraMovilidad> relaObraMovilidad { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CertificadoObra>()
                .Property(e => e.NroCertificado)
                .IsFixedLength();

            modelBuilder.Entity<CertificadoPago>()
                .Property(e => e.NroCertPago)
                .IsFixedLength();

            modelBuilder.Entity<CertificadoPago>()
                .HasMany(e => e.CertificadoPagoDetalle)
                .WithRequired(e => e.CertificadoPago)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<DptoProvincia>()
                .Property(e => e.DptoProvincia1)
                .IsUnicode(false);

            modelBuilder.Entity<EmpresaConstructora>()
                .Property(e => e.EmpresaConstructora1)
                .IsUnicode(false);

            modelBuilder.Entity<EquipoInformatico>()
                .Property(e => e.EquipoInformático)
                .IsUnicode(false);

            modelBuilder.Entity<EstadoObra>()
                .Property(e => e.EstadoObra1)
                .IsUnicode(false);

            modelBuilder.Entity<Movilidad>()
                .Property(e => e.Movilidad1)
                .IsUnicode(false);

            modelBuilder.Entity<Obra>()
                .Property(e => e.expMatriz)
                .IsUnicode(false);

            modelBuilder.Entity<Obra>()
                .Property(e => e.Obra1)
                .IsUnicode(false);

            modelBuilder.Entity<Obra>()
                .Property(e => e.ACCU)
                .IsUnicode(false);

            modelBuilder.Entity<Obra>()
                .Property(e => e.licitacionResolucion)
                .IsUnicode(false);

            modelBuilder.Entity<Obra>()
                .HasMany(e => e.CertificadoObra)
                .WithRequired(e => e.Obra)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Obra>()
                .HasMany(e => e.CertificadoPago)
                .WithRequired(e => e.Obra)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Obra>()
                .HasMany(e => e.relaObraAnticipoFinanciero)
                .WithRequired(e => e.Obra)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Obra>()
                .HasMany(e => e.relaObraAportes)
                .WithRequired(e => e.Obra)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Obra>()
                .HasMany(e => e.relaObraCertificado)
                .WithRequired(e => e.Obra)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TipoCertificado>()
             .HasMany(e => e.relaObraCertificado)
             .WithRequired(e => e.TipoCertificado)
             .WillCascadeOnDelete(false);

            modelBuilder.Entity<Obra>()
                .HasMany(e => e.Seguimiento)
                .WithRequired(e => e.Obra)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Param_Meses>()
                .Property(e => e.Mes)
                .IsFixedLength();

            modelBuilder.Entity<Param_Meses>()
                .HasMany(e => e.CertificadoPago)
                .WithRequired(e => e.Param_Meses)
                .HasForeignKey(e => e.CorrespMes)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Personas>()
                .Property(e => e.ApellidoNombre)
                .IsUnicode(false);

            modelBuilder.Entity<Personas>()
                .Property(e => e.Documento)
                .IsUnicode(false);

            modelBuilder.Entity<Personas>()
                .HasMany(e => e.relaSeguimientoPersona)
                .WithRequired(e => e.Personas)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Programa>()
                .Property(e => e.Programa1)
                .IsUnicode(false);

            modelBuilder.Entity<Prototipos>()
                .Property(e => e.Prototipo)
                .IsUnicode(false);

            modelBuilder.Entity<rolSeguimiento>()
                .Property(e => e.RolSeguimiento1)
                .IsUnicode(false);

            modelBuilder.Entity<rolSeguimiento>()
                .HasMany(e => e.relaSeguimientoPersona)
                .WithRequired(e => e.rolSeguimiento)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Seguimiento>()
                .HasMany(e => e.relaSeguimientoPersona)
                .WithRequired(e => e.Seguimiento)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TipoAnticipoFinanciero>()
                .Property(e => e.TipoAntFinanciero)
                .IsFixedLength();

            modelBuilder.Entity<TipoAnticipoFinanciero>()
                .HasMany(e => e.relaObraAnticipoFinanciero)
                .WithRequired(e => e.TipoAnticipoFinanciero)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TipoAportes>()
                .Property(e => e.AportesDesc)
                .IsFixedLength();

            modelBuilder.Entity<TipoAportes>()
                .HasMany(e => e.relaObraAportes)
                .WithRequired(e => e.TipoAportes)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TipoCertificado>()
                .Property(e => e.TipoCertificado1)
                .IsUnicode(false);

            modelBuilder.Entity<TipoCertificadoCat>()
                .Property(e => e.CatCertificado)
                .IsFixedLength();

            modelBuilder.Entity<TipoCertificadoCat>()
                .HasMany(e => e.TipoCertificado)
                .WithRequired(e => e.TipoCertificadoCat)
                .HasForeignKey(e => e.idTipoCertificadoCat)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TipoCertPagoRubro>()
                .Property(e => e.TipoCertPagoRubro1)
                .IsFixedLength();

            modelBuilder.Entity<TipoCertPagoRubro>()
                .HasMany(e => e.CertificadoPagoDetalle)
                .WithRequired(e => e.TipoCertPagoRubro)
                .HasForeignKey(e => e.IdRubro)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<relaObraPrototipo>()
                .HasMany(e => e.Entregas)
                .WithRequired(e => e.relaObraPrototipo)
                .WillCascadeOnDelete(false);
            modelBuilder.Entity<TipoCertificado>()
                .HasMany(e => e.relaObraCertificado)
                .WithRequired(e => e.TipoCertificado)
                .WillCascadeOnDelete(false);
        }
    }
}
