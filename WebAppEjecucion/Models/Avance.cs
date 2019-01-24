namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Avance")]
    public partial class Avance
    {
        [Key]
        public int IdAvance { get; set; }

        public double? porcentajePrevisto { get; set; }

        public double? porcentajeReal { get; set; }

        public double? porcentajeAtraso { get; set; }

        public int? IdObra { get; set; }

        [Column(TypeName = "date")]
        public DateTime? FechaAvance { get; set; }

        public virtual Obra Obra { get; set; }
    }
}
