namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TipoCertPagoRubro")]
    public partial class TipoCertPagoRubro
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TipoCertPagoRubro()
        {
            CertificadoPagoDetalle = new HashSet<CertificadoPagoDetalle>();
        }

        [Key]
        public int IdTipoCertPagoRubro { get; set; }

        [Column("TipoCertPagoRubro")]
        [Required]
        [StringLength(50)]
        public string TipoCertPagoRubro1 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CertificadoPagoDetalle> CertificadoPagoDetalle { get; set; }
    }
}
