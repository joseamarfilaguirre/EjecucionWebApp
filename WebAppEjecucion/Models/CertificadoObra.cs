namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CertificadoObra")]
    public partial class CertificadoObra
    {
        [Key]
        public int IdCertificadoObra { get; set; }

        public int IdObra { get; set; }

        [StringLength(10)]
        public string NroCertificado { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaCertificado { get; set; }

        public int MesCorresp { get; set; }

        public int AnioCorresp { get; set; }

        public double ImporteCertificado { get; set; }

        public double ImpCertUVI { get; set; }

        public double ImpRetencion { get; set; }

        public double ImpRetencionUVI { get; set; }

        public virtual Obra Obra { get; set; }
    }
}
