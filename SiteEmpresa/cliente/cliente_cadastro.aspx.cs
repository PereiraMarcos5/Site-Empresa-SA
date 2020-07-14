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
            try
            {
                
              var BuscarCliente = db.clientes;

                if (BuscarCliente.Count() > 0)
                {
                    //adicionar pagina
                    Response.Write("<script>alert('Cliente Válido');</script>");
                    Session.Add("Cliente", true);
                    //Response.Redirect("/Entrega/Entrega.aspx");
                }
                else
                {
                    Session.Add("Cliente", false);
                    Response.Write("<script>alert('Por Favor, para pedir comida faça seu cadastro');</script>");
                    //Response.Redirect("/cliente/cliente_cadastro.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write("falha no sistema" + ex.Message);
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
             clientes novo = new clientes()
            {
                 nome_cliente = txtNome.Text,
                 endereco = txtEndereco.Text,
                 cartao = txtCartao.Text,
                 telefone = (txtTelefone.Text)
            };
            db.clientes.Add(novo);
            db.SaveChanges();
            Response.Write(@"<script>alert('Cliente logado com Sucesso, seja bem vindo "+novo.nome_cliente+"!');</script>");
            Response.Redirect("/Painel");
            Session.Add("Cliente", true); 
        }

        protected void btnSalvar_Click1(object sender, EventArgs e)
        {
            clientes novo = new clientes()
            {
                nome_cliente = txtNome.Text,
                endereco = txtEndereco.Text,
                cartao = txtCartao.Text,
                telefone = (txtTelefone.Text)
            };
            db.clientes.Add(novo);
            db.SaveChanges();
            Response.Write(@"<script>alert('Cliente logado com Sucesso, seja bem vindo " + novo.nome_cliente + "!);</script>");
            Response.Redirect("/Painel");

            var BuscarCliente = db.clientes;

            if (BuscarCliente.Count() > 0)
            {
                //adicionar pagina
                Response.Write("<script>alert('Cliente Válido');</script>");
                Session.Add("Cliente", true);
                //Response.Redirect("/Entrega/Entrega.aspx");
            }
        }
    }
}