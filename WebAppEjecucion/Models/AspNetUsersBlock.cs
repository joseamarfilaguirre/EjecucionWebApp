namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("AspNetUsersBlock")]
    public partial class AspNetUsersBlock
    {
        public int Id { get; set; }

        [Required]
        [StringLength(128)]
        public string UserId { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaBloqueo { get; set; }

        public virtual AspNetUsers AspNetUsers { get; set; }
    }
}
