namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Seguimiento")]
    public partial class Seguimiento
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Seguimiento()
        {
            relaSeguimientoPersona = new HashSet<relaSeguimientoPersona>();
        }

        [Key]
        public int IdSeguimiento { get; set; }

        [Column(TypeName = "date")]
        [Display(Name ="Fecha de Seguimiento")]
        public DateTime FechaSeguimiento { get; set; }

        [Display(Name = "Obra")]
        public int IdObra { get; set; }
        [Display(Name = "Estado de Obra")]
        public int IdEstadoObra { get; set; }

        public virtual Obra Obra { get; set; }
        public virtual EstadoObra EstadoObra { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<relaSeguimientoPersona> relaSeguimientoPersona { get; set; }
    }
}
