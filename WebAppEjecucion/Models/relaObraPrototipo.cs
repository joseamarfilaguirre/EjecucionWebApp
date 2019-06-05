namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("relaObraPrototipo")]
    public partial class relaObraPrototipo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public relaObraPrototipo()
        {
            Entregas = new HashSet<Entregas>();
        }
        [Key]
        public int IdrelaObraPrototipo { get; set; }

        public int Cantidad { get; set; }

        public int? IdObra { get; set; }

        public int? IdPrototipo { get; set; }

        public int? CantidadParaSorteo { get; set; }

        public Double? Superficie { get; set; }

        public virtual Obra Obra { get; set; }

        public virtual Prototipos Prototipos { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Entregas> Entregas { get; set; }
    }
}
