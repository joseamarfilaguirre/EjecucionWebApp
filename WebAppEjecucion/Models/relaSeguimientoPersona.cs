namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("relaSeguimientoPersona")]
    public partial class relaSeguimientoPersona
    {
        [Key]
        public int IdRelaseguimientoPersona { get; set; }

        [Display(Name = "Rol Seguimiento")]
        public int IdRolSeguimiento { get; set; }
        [Display(Name = "Seguimiento")]
        public int IdSeguimiento { get; set; }
        [Display(Name = "Persona")]
        public int IdPersona { get; set; }

        public virtual Personas Personas { get; set; }

        public virtual rolSeguimiento rolSeguimiento { get; set; }

        public virtual Seguimiento Seguimiento { get; set; }
    }
}
