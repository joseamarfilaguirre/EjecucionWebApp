namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("EstadoObra")]
    public partial class EstadoObra
    {
        [Key]
        public int IdEstadoObra { get; set; }

        [Column("EstadoObra")]
        [Required]
        [StringLength(50)]
        public string EstadoObra1 { get; set; }
    }
}
