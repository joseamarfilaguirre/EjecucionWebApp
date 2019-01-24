namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CertificadoPago")]
    public partial class CertificadoPago
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CertificadoPago()
        {
            CertificadoPagoDetalle = new HashSet<CertificadoPagoDetalle>();
        }

        [Key]
        public int IdCertPago { get; set; }

        public int IdObra { get; set; }

        [Required]
        [StringLength(50)]
        public string NroCertPago { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaCertPago { get; set; }

        public int CorrespMes { get; set; }

        public int CorrespAnio { get; set; }

        public virtual Obra Obra { get; set; }

        public virtual Param_Meses Param_Meses { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CertificadoPagoDetalle> CertificadoPagoDetalle { get; set; }
    }
}
