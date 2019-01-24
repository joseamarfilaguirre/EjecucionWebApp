namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("relaObraEqInformatico")]
    public partial class relaObraEqInformatico
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IdrelaObraEqInformatico { get; set; }

        public int? IdEquipoInformatico { get; set; }

        public int? IdObra { get; set; }
    }
}
