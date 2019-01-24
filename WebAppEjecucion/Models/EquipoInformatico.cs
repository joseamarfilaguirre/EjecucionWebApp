namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("EquipoInformatico")]
    public partial class EquipoInformatico
    {
        [Key]
        public int IdEquipoInformatico { get; set; }

        [Required]
        [StringLength(50)]
        public string EquipoInformático { get; set; }
    }
}
