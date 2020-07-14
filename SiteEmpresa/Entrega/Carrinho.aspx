<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carrinho.aspx.cs" Inherits="SiteEmpresa.Entrega.Carrinho" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
     <link href="../Style/StyleSheetNavbar.css" rel="stylesheet" />
    <title></title>

    <style>
     { background-image: url("C:\Users\Marcos\Desktop\Projeto Empresa\SiteEmpresa\Site-Empresa-SA\SiteEmpresa\Resources\Slide1.PNG"); }

        #fundo {
            background: rgb(141, 80, 255);
            height: 800px;
            width: 100%;
            margin-top: 0;
            display: block;
             

        }
        #carrinho{
            background: rgb(195, 230, 19); 
            font-family: Arial;
            height: 630px;
            width: 560px;
            color:rebeccapurple;
            margin-left: 400px;
            font-size: 20px;
            border: solid rgb(49, 101, 21);
            border-radius: 40px;
            margin-bottom: 100px;
        }
        #GridView1{
            margin-left: 50px;
            margin-top: 20px;
            color:rebeccapurple;


        }
        #compras{
           margin-left: 20px;
        }
        #dados{
            margin-left: 50px;
            margin-top: 20px
        }
         #dados1{

            margin-top: 20px
        }
        #btnComprar{
        width: 300px;
        height: 60px;
        margin-left: 80px;
        background: rebeccapurple;
        color:  white;
        font-size: 20px;
        margin-top: 20px;
        

        }
        #empurrar{
             background: rgb(141, 80, 255);
        height: 60px;
        width:100%;
        
        }
             #info{
            background: rebeccapurple;
            width: 100%;
            height: 100px;
            font-family: Arial;
            color: white;
            text-align: center;
            display: block;
         }
         #contato{
         background: rebeccapurple;
            width: 100%;
            height: 20px;
         }
         
        #logo{
            width:120px;
            
        }
        
    

    </style>


</head>
<body>
     <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <nav class="navbar navbar-icon-top navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <img id="logo" src="../Resources/Logo.PNG" />/>
        
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
    <div id="empurrar">

    </div>
    <form id="form1" runat="server">
       <div id="fundo">
        <div id="carrinho">
             <h1 id="compras"> Carrinho </h1>
        <div id="tabela">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="420px" OnLoad="GridView1_Load" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="produto" HeaderText="produto" SortExpression="produto" />
                <asp:BoundField DataField="preco" HeaderText="preco" SortExpression="preco" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VENDASConnectionString %>" SelectCommand="SELECT [id], [produto], [preco] FROM [pedidos_entregues]"></asp:SqlDataSource>
   
           <div id="dados">
           <h2 id="dados1"> Informações sobre a compra </h2>
        <asp:Label ID="Label1" runat="server" Text="Preço:           "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPreco" runat="server" Height="24px" OnTextChanged="txtPreco_TextChanged" Width="261px"></asp:TextBox>
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
            <asp:Button ID="btnComprar" runat="server" Text="Comprar" OnClick="btnComprar_Click" />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:VENDASConnectionString %>" SelectCommand="SELECT [nome_entregador] FROM [entregador]"></asp:SqlDataSource>
        </div>
        </div>

           </div>
           </div>
            <div id="info">
            <div id="contato"> 

           </div>
           <h6 id:"tel">Telefone: (47)3998-9915                  |              Instagran: @sonaturabnu                  |                 Email: sonatura@restautante.com </h6>

            <div id="endereço">
             <h6 id:"end">Rua das orquideas, 124, Velha - Blumenau SC</h6>

            </div>
        </div>
      
    </form>
</body>
</html>
