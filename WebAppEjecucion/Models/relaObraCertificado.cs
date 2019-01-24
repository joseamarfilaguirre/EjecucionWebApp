namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("relaObraCertificado")]
    public partial class relaObraCertificado
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IdrelaObraCertificado { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaPresentacion { get; set; }

        public int IdCertificado { get; set; }

        public int IdObra { get; set; }

        public virtual Certificados Certificados { get; set; }

        public virtual Obra Obra { get; set; }
    }
}
