namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TipoAnticipoFinanciero")]
    public partial class TipoAnticipoFinanciero
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TipoAnticipoFinanciero()
        {
            relaObraAnticipoFinanciero = new HashSet<relaObraAnticipoFinanciero>();
        }

        [Key]
        public int IdTipoAntFinanciero { get; set; }

        [Required]
        [StringLength(50)]
        public string TipoAntFinanciero { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<relaObraAnticipoFinanciero> relaObraAnticipoFinanciero { get; set; }
    }
}
