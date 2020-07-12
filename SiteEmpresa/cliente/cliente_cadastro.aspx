<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cliente_cadastro.aspx.cs" Inherits="SiteEmpresa.cliente.cliente_cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Style/StyleSheetNavbar.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <nav class="navbar navbar-icon-top navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Só Natura</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/Painel");>
                        <i class="fa fa-home"></i>
                        Pagina Inicial
                        </a>
                      
                    <a class="nav-link" href="/TelaCadastro/TelaCadastro.aspx");>
                        <i class="fa fa-cutlery" aria-hidden="true"></i>
                        Cardapio
         </a>

                      <a class="nav-link" href="/Entrega/Carrinho.aspx");>
                       <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        Carrinho
                          </a>

                          <a class="nav-link" href="/Entrega/Entrega.aspx");>
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                            Pedido
                       </a>
                     <a class="nav-link" href="/cliente/cliente_cadastro.aspx");>
                            <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                            Cliente
                       </a>    

                 </li>
            </ul>
            
        </div>
    </nav>
    <form id="form1" runat="server">
        <div>
            Espaço do Cliente
        </div>
        <div>

            Nome:</div>
        <div>

            <asp:TextBox ID="txtNome" runat="server" Width="169px" Height="21px"></asp:TextBox>

        </div>
        <div>

            Endereço:</div>
        <div>

            <asp:TextBox ID="txtEndereco" runat="server" Height="21px" Width="172px"></asp:TextBox>

        </div>
        <div>

            Cartão</div>
        <div>

            <div>
                <asp:TextBox ID="txtCartao" runat="server" Width="168px" Height="21px"></asp:TextBox>
            </div>

        </div>
        <div>
            Idade:</div>
        <asp:TextBox ID="txtIdade" runat="server" Width="33px" Height="21px"></asp:TextBox>
        <p>
            <asp:Button ID="btnSalvar" runat="server" Height="35px" Text="Logar" Width="119px" />
        </p>
    </form>
</body>
</html>
