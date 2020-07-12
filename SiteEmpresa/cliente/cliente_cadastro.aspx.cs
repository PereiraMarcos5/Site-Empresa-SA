using SiteEmpresa.Banco_de_Dados;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteEmpresa.cliente
{
    public partial class cliente_cadastro : System.Web.UI.Page
    {
        DB_VENDAS db = new DB_VENDAS();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
             clientes novo = new clientes()
            {
                 nome_cliente = txtNome.Text,
                 endereco = txtEndereco.Text,
                 cartao = txtCartao.Text,
                 idade = (Convert.ToInt32(txtIdade.Text))
            };
            db.clientes.Add(novo);
            db.SaveChanges();
            Response.Write(@"<script>alert('Cliente logado com Sucesso, seja bem vindo "+novo.nome_cliente+"!);</script>");
            Response.Redirect("/Painel");
        }
    }
}