using SiteEmpresa.Banco_de_Dados;
using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteEmpresa.Cadastro
{
    public partial class cadastro : System.Web.UI.Page
    {
     DB_VENDAS db = new DB_VENDAS();
        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            usuarios novo = new usuarios()
            {
                nome_usuario = txtNomeUsuario.Text,
                senha = txtSenha.Text

            };
            //salvar no banco, equivalente a insert 
            db.usuarios.Add(novo);
            db.SaveChanges();
            Response.Redirect("/Login/default.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Login");
        }
    }
}