using SiteEmpresa.Banco_de_Dados;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteEmpresa.Entrega
{
    public partial class Entrega : System.Web.UI.Page
    {
        DB_VENDAS db = new DB_VENDAS();
        int id_compra;
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSelect_Click(object sender, EventArgs e)
        {
            compra cp = new compra();
            //int idCompra = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
            //compra cp = db.compra.Find(idCompra);
            /*entregue et = new entregue()
            {
                data = DateTime.Now
            };
            db.entregue.Add(et);
            db.SaveChanges();
            pedidos_entregues pe = new pedidos_entregues()
            {
                id = cp.id,
                produto = cp.produto,
                preco = cp.preco
            };
            db.pedidos_entregues.Add(pe);
            db.SaveChanges();
            Response.Write("<script>alert('Item inserido com sucesso!');</script>");
            */
            pedidos_entregues pe = new pedidos_entregues()
            { 
                id = id_compra,
                produto = txtProduto.Text,
                preco = Convert.ToDouble(txtPreco.Text)
            };
                db.pedidos_entregues.Add(pe);
                db.SaveChanges();
                Response.Write("<script>alert('Item inserido com sucesso!');</script>");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            txtProduto.Text = GridView1.SelectedRow.Cells[1].Text;
            txtPreco.Text = GridView1.SelectedRow.Cells[2].Text;
            id_compra = Convert.ToInt32(GridView1.SelectedRow.Cells[3].Text);
        }

        protected void txtAdicionar_TextChanged(object sender, EventArgs e)
        {

        }

        protected void bntComprar_Click(object sender, EventArgs e)
        {

        }
    }
}