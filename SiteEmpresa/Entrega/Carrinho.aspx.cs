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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            entregador = DropDownList1.SelectedValue;
        }

        protected void btnComprar_Click(object sender, EventArgs e)
        {
            db.Database.ExecuteSqlCommand("TRUNCATE TABLE [pedidos_entregues]");
            Response.Write(@"<script>alert('Compra Efetuada com Sucesso, Aguarde o "+entregador+"e um bom apetite!');</script>");
           //Response.Redirect("/Painel");
        }
    }
}