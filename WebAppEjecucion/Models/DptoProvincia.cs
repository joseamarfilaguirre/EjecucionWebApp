namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DptoProvincia")]
    public partial class DptoProvincia
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DptoProvincia()
        {
            Obra = new HashSet<Obra>();
        }

        [Key]
        public int IdDptoProvincia { get; set; }

        [Display(Name = "Departamento")]
        [Column("DptoProvincia")]
        [Required]
        [StringLength(100)]
        public string DptoProvincia1 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Obra> Obra { get; set; }
    }
}
