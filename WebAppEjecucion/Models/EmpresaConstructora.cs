namespace WebAppEjecucion.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("EmpresaConstructora")]
    public partial class EmpresaConstructora
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public EmpresaConstructora()
        {
            Obra = new HashSet<Obra>();
        }

        [Key]
        public int IdEmpConstructora { get; set; }

        [Column("EmpresaConstructora")]
        [Required]
        [StringLength(100)]
        public string EmpresaConstructora1 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Obra> Obra { get; set; }
    }
}
