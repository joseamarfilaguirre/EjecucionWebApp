namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PlanTrabajoDetalle")]
    public partial class PlanTrabajoDetalle
    {
        [Key]
        public int IdPlanTrabajoDet { get; set; }

        [Display(Name = "Plan de Trabajo")]
        [Required(ErrorMessage = "El campo Plan de Trabajo es Obligatorio")]
        public int IdPlanTrabajo { get; set; }

        [Column(TypeName = "date")]
        [Display(Name = "Fecha de Avance")]
        [Required(ErrorMessage = "El campo Fecha de Avance es Obligatorio")]
        public DateTime FechaAvance { get; set; }

        [Display(Name = "Porcentaje Previsto")]
        public Double porcentajePrevisto { get; set; }

        [Display(Name = "Porcentaje Real")]
        public Double porcentajeReal { get; set; }

        //[Display(Name = "Porcentaje Atraso")]
        //public string porcentajeAtraso { get; set; }

        public virtual PlanTrabajo PlanTrabajo { get; set; }
    }
}
