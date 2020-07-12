<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carrinho.aspx.cs" Inherits="SiteEmpresa.Entrega.Carrinho" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
     <link href="../Style/StyleSheetNavbar.css" rel="stylesheet" />
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
            Carrinho
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="242px" OnLoad="GridView1_Load" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="produto" HeaderText="produto" SortExpression="produto" />
                <asp:BoundField DataField="preco" HeaderText="preco" SortExpression="preco" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VENDASConnectionString %>" SelectCommand="SELECT [id], [produto], [preco] FROM [pedidos_entregues]"></asp:SqlDataSource>
        <div>
            <br />
        </div>
        <asp:Label ID="Label1" runat="server" Text="Preço:           "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPreco" runat="server" Height="24px" OnTextChanged="txtPreco_TextChanged" Width="66px"></asp:TextBox>
        <br />
        <br />
        <div>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:VENDASConnectionString %>" SelectCommand="SELECT [endereco] FROM [clientes]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:VENDASConnectionString %>" SelectCommand="SELECT [cartao] FROM [clientes]"></asp:SqlDataSource>
        </div>
        <div>Entregador:&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="SqlDataSource2" DataTextField="nome_entregador" DataValueField="nome_entregador" AutoPostBack="True">
            </asp:DropDownList>
            <br />
            <br />
            Endereco:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="endereco" DataValueField="endereco" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <br />
            Cartao:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="cartao" DataValueField="cartao" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
            </asp:DropDownList>
        </div>
        <div>
            <br />
            </div>
        <div>
            <asp:Button ID="btnComprar" runat="server" Text="Comprar" OnClick="btnComprar_Click" />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:VENDASConnectionString %>" SelectCommand="SELECT [nome_entregador] FROM [entregador]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
