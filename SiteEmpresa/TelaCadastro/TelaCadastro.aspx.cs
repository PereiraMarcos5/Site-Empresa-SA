﻿using SiteEmpresa.Banco_de_Dados;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SiteEmpresa.TelaCadastro
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DB_VENDAS db = new DB_VENDAS();
        List<compra> compras;
        protected void Page_Load(object sender, EventArgs e)
        {
           /*  montarTabela();
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }*/
        }
        /*
        private void BindGrid()
        {
            using (db)
            {
                GridView1.DataSource = from compra in db.compra
                                      select compra;
               GridView1.DataBind();
            }
        }
        */

        private void selecionarItem(object sender, EventArgs e)
        {
           /* int idProduto = Convert.ToInt32(GridView1.SelectedRow.Cells[0].Value);
            compra p = db.compra.Find(idProduto);
            //int qtd = Convert.ToInt32(numericUpDown1.Value);
            compra cp = new compra()
            {
                data = DateTime.Now
            };
            db.compra.Add(cp);
            db.SaveChanges();
            compra ip = new compra()
            {
                id = p.id,
                produto = p.produto,
                preco = p.preco
            };
            db.compra.Add(ip);
            db.SaveChanges();
            */
        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
        }

        protected void SalvarAlimento_Click(object sender, EventArgs e)
        {
            compra novo = new compra()
            { produto=txtAlimento.Text,
              preco=(Convert.ToDouble(txtPreco.Text))};
            db.compra.Add(novo);
            db.SaveChanges();
            
        }
        private void montarTabela()
        {
            //GridView1.DataSource = db.compra.ToList();
        }

        private void carregaProdutos()
        {

         
        }
    }
}