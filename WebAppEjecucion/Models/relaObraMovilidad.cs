namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("relaObraMovilidad")]
    public partial class relaObraMovilidad
    {
        [Key]
        public int IdrelaObraMovilidad { get; set; }

        [Column(TypeName = "date")]
        public DateTime? FechaDesde { get; set; }

        [Column(TypeName = "date")]
        public DateTime? FechaHasta { get; set; }

        public int? IdMovilidad { get; set; }

        public int? IdObra { get; set; }
    }
}
