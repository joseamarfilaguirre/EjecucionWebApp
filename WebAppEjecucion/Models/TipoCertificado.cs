namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TipoCertificado")]
    public partial class TipoCertificado
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TipoCertificado()
        {
            Certificados = new HashSet<Certificados>();
        }

        [Key]
        public int IdTipoCertificado { get; set; }

        [Column("TipoCertificado")]
        [Required]
        [StringLength(100)]
        public string TipoCertificado1 { get; set; }

        public int idTipoCertificadoCat { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Certificados> Certificados { get; set; }

        public virtual TipoCertificadoCat TipoCertificadoCat { get; set; }
    }
}
