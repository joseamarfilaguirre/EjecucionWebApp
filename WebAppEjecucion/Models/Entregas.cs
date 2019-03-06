namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Web.Mvc;
    public partial class Entregas
    {
        [Key]
        public int IdEntrega { get; set; }

        [Column(TypeName = "date")]
        [Display(Name = "Fecha Entrega")]
        public DateTime FechaEntrega { get; set; }

        [Display(Name = "Cantidad")]
        //[Remote("ValidarCantidad","Entregas",ErrorMessage = "La cantidad a entregar no puede superar el numero de viviendas para entrega")]
        public int CantEntregada { get; set; }

        public int IdrelaObraPrototipo { get; set; }

        public virtual relaObraPrototipo relaObraPrototipo { get; set; }
    }
}
