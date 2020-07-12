using SiteEmpresa.Banco_de_Dados;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteEmpresa.Entrega
{
    public partial class Carrinho : System.Web.UI.Page
    {
        DB_VENDAS db = new DB_VENDAS();
        string entregador;
        double valor;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (GridView1.Rows.Count > 0)
            {
                txtPreco.Text = GridView1.Rows[0].Cells[2].Text;
            }
            else
            {
                txtPreco.Text = "Cadastre um Cliente";
            }
        }

        public void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            entregador = DropDownList1.SelectedValue;
        }
        
        protected void btnComprar_Click(object sender, EventArgs e)
        {
            pedidos_entregues soma = new pedidos_entregues()
            {
               preco = valor
            };
           // Response.Write(@"<script>alert('Valor da Compra: " + GridView1.SelectedRow.Cells[2].Text + "R$');</script>");
            Response.Write(@"<script>alert('Compra Efetuada com Sucesso, Aguarde o entregador "+entregador+",e tenha um bom apetite!');</script>");
            db.Database.ExecuteSqlCommand("TRUNCATE TABLE [pedidos_entregues]");
           //Response.Redirect("/Painel");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_Load(object sender, EventArgs e)
        {
            GridView1.SelectRow(1);
        }

        protected void txtPreco_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}