namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Certificados
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Certificados()
        {
            relaObraCertificado = new HashSet<relaObraCertificado>();
        }

        [Key]
        public int IdCertificado { get; set; }

        [Required]
        [StringLength(50)]
        public string Certificado { get; set; }

        public int? IdTipoCertificado { get; set; }

        public virtual TipoCertificado TipoCertificado { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<relaObraCertificado> relaObraCertificado { get; set; }
    }
}
