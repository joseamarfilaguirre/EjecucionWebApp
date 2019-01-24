namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Personas
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Personas()
        {
            relaSeguimientoPersona = new HashSet<relaSeguimientoPersona>();
        }

        [Key]
        public int IdPersona { get; set; }

        [Required]
        [StringLength(100)]
        public string ApellidoNombre { get; set; }

        [Required]
        [StringLength(50)]
        public string Documento { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<relaSeguimientoPersona> relaSeguimientoPersona { get; set; }
    }
}
