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
        public DateTime FechaEntrega { get; set; }

        public int CantEntregada { get; set; }

        public int IdObra { get; set; }

        public virtual Obra Obra { get; set; }
    }
}
