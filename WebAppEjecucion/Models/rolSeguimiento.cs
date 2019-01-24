namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("rolSeguimiento")]
    public partial class rolSeguimiento
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public rolSeguimiento()
        {
            relaSeguimientoPersona = new HashSet<relaSeguimientoPersona>();
        }

        [Key]
        public int IdRolSeguimiento { get; set; }

        [Column("RolSeguimiento")]
        [Required]
        [StringLength(50)]
        public string RolSeguimiento1 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<relaSeguimientoPersona> relaSeguimientoPersona { get; set; }
    }
}
