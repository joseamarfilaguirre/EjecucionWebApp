namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("EstadoObra")]
    public partial class EstadoObra
    {
        [Key]
        public int IdEstadoObra { get; set; }

        [Column("EstadoObra")]
        [Required]
        [StringLength(50,ErrorMessage = "El campo Estado de Obra debe tener una longitud máxima de 50")]
        [Display(Name = "Estado de Obra")]
        public string EstadoObra1 { get; set; }
    }
}
