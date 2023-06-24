using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using MyProject.MODEL;

namespace MyProject.DAL.Sakila;

public partial class SqlMysteryContext : DbContext
{
    public SqlMysteryContext()
    {
    }

    public SqlMysteryContext(DbContextOptions<SqlMysteryContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Mystery> Mysteries { get; set; }

    public virtual DbSet<Score> Scores { get; set; }

    public virtual DbSet<UserData> UsersData { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder) => optionsBuilder.UseMySQL("Server=localhost;Database=sql_mystery;Uid=root;Pwd=1234;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Mystery>(entity =>
        {
            entity.HasKey(e => e.MysteryId).HasName("PRIMARY");

            entity.ToTable("mystery");

            entity.Property(e => e.MysteryId).HasColumnName("mystery_id");
            entity.Property(e => e.MysteryTitle)
                .HasMaxLength(255)
                .HasColumnName("mystery_title");
        });

        modelBuilder.Entity<Score>(entity =>
        {
            entity.HasKey(e => e.ScoreId).HasName("PRIMARY");

            entity.ToTable("score");

            entity.HasIndex(e => e.MysteryId, "mystery_id");

            entity.HasIndex(e => e.UserId, "user_id");

            entity.Property(e => e.ScoreId).HasColumnName("score_id");
            entity.Property(e => e.MysteryId).HasColumnName("mystery_id");
            entity.Property(e => e.ScoreInt).HasColumnName("score");
            entity.Property(e => e.UserId).HasColumnName("user_id");

            entity.HasOne(d => d.Mystery).WithMany(p => p.Scores)
                .HasForeignKey(d => d.MysteryId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("score_ibfk_1");

            entity.HasOne(d => d.User).WithMany(p => p.Scores)
                .HasForeignKey(d => d.UserId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("score_ibfk_2");
        });

        modelBuilder.Entity<UserData>(entity =>
        {
            entity.HasKey(e => e.UserId).HasName("PRIMARY");

            entity.ToTable("user_data");

            entity.Property(e => e.UserId).HasColumnName("user_id");
            entity.Property(e => e.Email)
                .HasMaxLength(255)
                .HasColumnName("email");
            entity.Property(e => e.HashPassword)
                .HasMaxLength(255)
                .HasColumnName("hash_password");
            entity.Property(e => e.Login)
                .HasMaxLength(255)
                .HasColumnName("login");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
