namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class relaObraContratados
    {
        [Key]
        public int IdrelaObraContratado { get; set; }

        public int? IdObra { get; set; }

        public int? IdPersona { get; set; }

        [Column(TypeName = "date")]
        public DateTime? FechaDesde { get; set; }

        [Column(TypeName = "date")]
        public DateTime? FechaHasta { get; set; }
    }
}
