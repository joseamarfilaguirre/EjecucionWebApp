namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CertificadoPagoDetalle")]
    public partial class CertificadoPagoDetalle
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IdCertPagoDetalle { get; set; }

        public int IdCertPago { get; set; }

        public double PorcentajePrevMensual { get; set; }

        public double PorcentajePrevAcumulado { get; set; }

        public double PorcentajeFisicoMensual { get; set; }

        public double PorcentajeFisicoAcumuladol { get; set; }

        public int IdRubro { get; set; }

        public virtual CertificadoPago CertificadoPago { get; set; }

        public virtual TipoCertPagoRubro TipoCertPagoRubro { get; set; }
    }
}
