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
        [Display(Name ="Expediente Matriz")]
        public string expMatriz { get; set; }

        [Display(Name = "Nombre de Obra")]
        [Column("Obra")]
        [Required(ErrorMessage = "El campo Nombre de Obra es Obligatorio")]
        [StringLength(100, ErrorMessage = "El campo Nombre de Obra debe tener una longitud máxima de 100")]
        public string Obra1 { get; set; }

        [Display(Name = "ACCU")]
        [StringLength(50,ErrorMessage = "El campo ACCU debe tener una longitud máxima de 50")]
        public string ACCU { get; set; }

        [Display(Name = "Departamento")]
        public int? IdDptoProvincia { get; set; }

        [Display(Name = "Programa")]
        public int? IdPrograma { get; set; }

        [Display(Name = "Empresa Constructora")]
        public int? IdEmpConstructora { get; set; }

        [Display(Name = "Cantidad Para Sorteo")]
        public int? cantParaSorteo { get; set; }

        [Display(Name = "Monto Original")]
        public double? montoOriginal { get; set; }

        [Display(Name = "Licitacion/Resolucion")]
        [StringLength(50,ErrorMessage = "El campo Licitacion/Resolucion debe tener una longitud máxima de 50")]
        public string licitacionResolucion { get; set; }
        [Display(Name = "Plazo Original en dias")]
        public int? plazoOriginal { get; set; }

        [Display(Name = "Fecha de Finalizacion")]
        [Column(TypeName = "date")]
        public DateTime? fechaFinalizacion { get; set; }

        [Display(Name = "Monto de Contrato en Pesos")]
        public double? MontoContratoPesos { get; set; }

        [Display(Name = "Monto de Contrato en UVIS")]
        public double? MontoContratoUVI { get; set; }

        [Display(Name = "Fecha de Oferta")]
        [Column(TypeName = "date")]
        public DateTime? FechaOferta { get; set; }

        [Display(Name = "Fecha de Inicio")]
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
