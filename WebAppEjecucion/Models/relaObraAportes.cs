namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class relaObraAportes
    {
        [Key]
        public int IdRelaAportesObra { get; set; }

        public int Idaportes { get; set; }

        public int IdObra { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaAporte { get; set; }

        public double ImporteAporte { get; set; }

        public double ImpAporteUVI { get; set; }

        public virtual Obra Obra { get; set; }

        public virtual TipoAportes TipoAportes { get; set; }
    }
}
