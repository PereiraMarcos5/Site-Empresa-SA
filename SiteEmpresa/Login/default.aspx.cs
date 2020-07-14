using SiteEmpresa.Banco_de_Dados;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteEmpresa.Login
{
    public partial class dafault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DB_VENDAS db = new DB_VENDAS();
            try
            {
                var BuscarUsuario = db.usuarios.Where(s => s.nome_usuario == txtNomeUsuario.Text && s.senha == txtSenha.Text);

                if(BuscarUsuario.Count() > 0)
                {
                    //adicionar pagina
                    //Response.Write("<script>alert('Usuário Válido')</script>");
                    Session.Add("Autenticacao", true);
                    Response.Redirect("/TelaCadastro/TelaCadastro.aspx");
                }
                else
                {
                    Session.Add("Autenticacao", false);
                    Response.Write("<script>alert('Usuário Inválido, tente novamente');</script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write("falha no sistema" + ex.Message);
            }
        }

        protected void btnCadastro_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Cadastro/cadastro.aspx");
        }
    }
}