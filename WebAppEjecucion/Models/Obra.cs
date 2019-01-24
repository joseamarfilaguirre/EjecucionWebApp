namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Obra")]
    public partial class Obra
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Obra()
        {
            Avance = new HashSet<Avance>();
            CertificadoObra = new HashSet<CertificadoObra>();
            CertificadoPago = new HashSet<CertificadoPago>();
            Entregas = new HashSet<Entregas>();
            relaObraAnticipoFinanciero = new HashSet<relaObraAnticipoFinanciero>();
            relaObraAportes = new HashSet<relaObraAportes>();
            relaObraCertificado = new HashSet<relaObraCertificado>();
            relaObraPrototipo = new HashSet<relaObraPrototipo>();
            Seguimiento = new HashSet<Seguimiento>();
        }

        [Key]
        public int IdObra { get; set; }

        [StringLength(50)]
        public string expMatriz { get; set; }

        [Column("Obra")]
        [Required]
        [StringLength(100)]
        public string Obra1 { get; set; }

        [StringLength(50)]
        public string ACCU { get; set; }

        public int? IdDptoProvincia { get; set; }

        public int? IdPrograma { get; set; }

        public int? IdEmpConstructora { get; set; }

        public int? cantParaSorteo { get; set; }

        public double? montoOriginal { get; set; }

        [StringLength(50)]
        public string licitacionResolucion { get; set; }

        public int? plazoOriginal { get; set; }

        [Column(TypeName = "date")]
        public DateTime? fechaFinalizacion { get; set; }

        public double? MontoContratoPesos { get; set; }

        public double? MontoContratoUVI { get; set; }

        [Column(TypeName = "date")]
        public DateTime? FechaOferta { get; set; }

        [Column(TypeName = "date")]
        public DateTime? FechaInicio { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Avance> Avance { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CertificadoObra> CertificadoObra { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CertificadoPago> CertificadoPago { get; set; }

        public virtual DptoProvincia DptoProvincia { get; set; }

        public virtual EmpresaConstructora EmpresaConstructora { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Entregas> Entregas { get; set; }

        public virtual Programa Programa { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<relaObraAnticipoFinanciero> relaObraAnticipoFinanciero { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<relaObraAportes> relaObraAportes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<relaObraCertificado> relaObraCertificado { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<relaObraPrototipo> relaObraPrototipo { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Seguimiento> Seguimiento { get; set; }
    }
}
