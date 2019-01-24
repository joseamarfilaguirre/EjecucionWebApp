namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Movilidad")]
    public partial class Movilidad
    {
        [Key]
        public int IdMovilidad { get; set; }

        [Column("Movilidad")]
        [Required]
        [StringLength(50)]
        public string Movilidad1 { get; set; }
    }
}
