namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TipoCertificadoCat")]
    public partial class TipoCertificadoCat
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TipoCertificadoCat()
        {
            TipoCertificado = new HashSet<TipoCertificado>();
        }

        [Key]
        [Display(Name = "Categoria de Certificado")]
        public int idCatCertificado { get; set; }

        [Required]
        [StringLength(50)]
        [Display(Name = "Categoria de Certificado")]
        public string CatCertificado { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TipoCertificado> TipoCertificado { get; set; }
    }
}
