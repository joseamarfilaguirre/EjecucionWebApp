namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("relaObraAnticipoFinanciero")]
    public partial class relaObraAnticipoFinanciero
    {
        [Key]
        public int IdRelaObraAnticipoF { get; set; }

        public int IdTipoAntFinanciero { get; set; }

        public int IdObra { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaAnticipo { get; set; }

        public double ImporteAnticipo { get; set; }

        public double? ImporteUviAnticipo { get; set; }

        public virtual Obra Obra { get; set; }

        public virtual TipoAnticipoFinanciero TipoAnticipoFinanciero { get; set; }
    }
}
