namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Prototipos
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Prototipos()
        {
            relaObraPrototipo = new HashSet<relaObraPrototipo>();
        }

        [Key]
        public int IdPrototipo { get; set; }

        [Required]
        [StringLength(50)]
        public string Prototipo { get; set; }

        public Double Superficie { get; set; }

        public string Codigo { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<relaObraPrototipo> relaObraPrototipo { get; set; }
    }
}
