namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PlanTrabajo")]
    public partial class PlanTrabajo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PlanTrabajo()
        {
            PlanTrabajoDetalle = new HashSet<PlanTrabajoDetalle>();
        }

        [Key]
        public int IdPlanTrabajo { get; set; }

        [Display(Name = "Nombre de Obra")]
        [Required(ErrorMessage = "El campo Nombre de Obra es Obligatorio")]
        public int IdObra { get; set; }

        [Display(Name = "Empresa Constructora")]
        [Required(ErrorMessage = "El campo Empresa Constructora es Obligatorio")]
        public int IdEmpresaConstructora { get; set; }

        [Display(Name = "Plazo Original")]
        [Required(ErrorMessage = "El campo Plazo Original es Obligatorio")]
        public int plazoOriginal { get; set; }

        [Display(Name = "Fecha de Inicio")]
        [Required(ErrorMessage = "El campo Fecha de Inicio es Obligatorio")]
        [Column(TypeName = "date")]
        public DateTime? FechaInicio { get; set; }

        [Display(Name = "Fecha de Finalizacion")]
        [Required(ErrorMessage = "El campo Fecha de Finalizacion es Obligatorio")]
        [Column(TypeName = "date")]
        public DateTime? FechaFinalizacion { get; set; }

        [Display(Name = "Monto Contrato")]
        [Required(ErrorMessage = "El campo Monto Contrato es Obligatorio")]
        public double? montoContrato { get; set; }

        [Display(Name = "Estado")]
        [Required(ErrorMessage = "El campo Estado es Obligatorio")]
        public bool? estado { get; set; }

        public virtual EmpresaConstructora EmpresaConstructora { get; set; }

        public virtual Obra Obra { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PlanTrabajoDetalle> PlanTrabajoDetalle { get; set; }
    }
    public class EstadoPlan
    {
        public bool? Valor { get; set; }
        public string Estado { get; set; }
    }
}
