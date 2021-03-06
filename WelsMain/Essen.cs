namespace WelsMain
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Essen")]
    public partial class Essen
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Essen()
        {
            Verzehr = new HashSet<Verzehr>();
        }

        public int EssenId { get; set; }

        [Column("Essen")]
        [StringLength(50)]
        public string Essen1 { get; set; }

        public int Preis { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Verzehr> Verzehr { get; set; }
    }
}
