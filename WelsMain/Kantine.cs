namespace WelsMain
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Kantine : DbContext
    {
        public Kantine()
            : base("name=Kantine")
        {
        }

        public virtual DbSet<Essen> Essen { get; set; }
        public virtual DbSet<Personen> Personen { get; set; }
        public virtual DbSet<Verzehr> Verzehr { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Essen>()
                .Property(e => e.Essen1)
                .IsUnicode(false);

            modelBuilder.Entity<Essen>()
                .HasMany(e => e.Verzehr)
                .WithRequired(e => e.Essen)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Personen>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Personen>()
                .HasMany(e => e.Verzehr)
                .WithRequired(e => e.Personen)
                .WillCascadeOnDelete(false);
        }
    }
}
