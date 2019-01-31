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

        [Display(Name ="Apellido y Nombre")]
        [Required]
        [StringLength(100,ErrorMessage = "El campo {0} debe tener una longitud máxima de 100")]
        public string ApellidoNombre { get; set; }

        [Display(Name = "Documento")]
        [Required]
        [StringLength(50, ErrorMessage = "El campo {0} debe tener una longitud máxima de 50")]
        public string Documento { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<relaSeguimientoPersona> relaSeguimientoPersona { get; set; }
    }
}
