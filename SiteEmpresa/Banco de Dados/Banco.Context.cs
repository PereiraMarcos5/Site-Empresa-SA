﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SiteEmpresa.Banco_de_Dados
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DB_VENDAS : DbContext
    {
        public DB_VENDAS()
            : base("name=DB_VENDAS")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<cadastro> cadastro { get; set; }
        public virtual DbSet<reserva> reserva { get; set; }
        public virtual DbSet<usuarios> usuarios { get; set; }
        public virtual DbSet<compra> compra { get; set; }
        public virtual DbSet<entregue> entregue { get; set; }
        public virtual DbSet<pedidos_entregues> pedidos_entregues { get; set; }
    }
}
