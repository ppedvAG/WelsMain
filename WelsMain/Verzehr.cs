namespace WelsMain
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Verzehr")]
    public partial class Verzehr
    {
        public int VerzehrId { get; set; }

        public int PersonId { get; set; }

        public int EssenId { get; set; }

        public int Anzahl { get; set; }

        public virtual Essen Essen { get; set; }

        public virtual Personen Personen { get; set; }
    }
}
