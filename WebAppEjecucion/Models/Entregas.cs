namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Entregas
    {
        [Key]
        public int IdEntrega { get; set; }

        [Column(TypeName = "date")]
        [Display(Name = "Fecha de Entrega")]
        public DateTime FechaEntrega { get; set; }

        [Display(Name = "Cantidad")]
        public int CantEntregada { get; set; }

        public int IdrelaObraPrototipo { get; set; }

        public virtual relaObraPrototipo relaObraPrototipo { get; set; }
    }
}
