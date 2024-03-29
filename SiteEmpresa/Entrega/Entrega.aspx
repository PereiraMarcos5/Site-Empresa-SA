﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Entrega.aspx.cs" Inherits="SiteEmpresa.Entrega.Entrega" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../Style/StyleSheetNavbar.css" rel="stylesheet" />
    <title></title>
     <style>
           #fundo{
         background: rgb(141, 80, 255);
        height: 1000px;
        width:100%;
        margin-top: 0;
        display: block;

        }
        #entrega{
            background: rgb(195, 230, 19); 
            font-family: Arial;
            height: 750px;
            width: 600px;
            color:rebeccapurple;
            margin-left: 400px;
            font-size: 20px;
            border: solid rgb(49, 101, 21);
            border-radius: 40px;
            margin-bottom: 100px;
        }
         #empurrar{
             background: rgb(141, 80, 255);
        height: 60px;
        width:100%;
        }
         #dados{
            margin-left: 50px;
            margin-top: 20px
        }
         #btnSelect{
        width: 300px;
        height: 60px;
        margin-left: 85px;
        background: rebeccapurple;
        color:  white;
        font-size: 20px;
        margin-top: 30px;
         }
         #bntComprar{
        width: 300px;
        height: 60px;
        margin-left: 85px;
        background: rebeccapurple;
        color:  white;
        font-size: 20px;
        margin-top: 20px;
         }
         #GridView1{
             margin-left:27px;
             margin-bottom:20px;

         }
         #txtProduto{
             margin-top: 20px;
              margin-left: 68px;
             
         }
         #txtPreco{
             margin-top: 20px;
              margin-left: 68px;
              
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

    <form id="form1" runat="server">
        <div>
            <div id="fundo">
               
                <div id="empurrar"></div>

                <div id="entrega">
           <div id="dados">
            <h1>Pedidos</h1> 
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="170px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="420px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="produto" HeaderText="produto" SortExpression="produto" />
                <asp:BoundField DataField="preco" HeaderText="preco" SortExpression="preco" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VENDASConnectionString %>" SelectCommand="SELECT [id], [produto], [preco] FROM [compra]"></asp:SqlDataSource>
        <asp:TextBox ID="txtProduto" runat="server" Enabled="False" OnTextChanged="txtAdicionar_TextChanged" Width="335px"></asp:TextBox>
        <p>
        <asp:TextBox ID="txtPreco" runat="server" Width="335px" Enabled="False"></asp:TextBox>
            <asp:Button ID="btnSelect" runat="server" OnClick="btnSelect_Click" Text="Incluir" />
            <asp:Button ID="bntComprar" runat="server" OnClick="bntComprar_Click" Text="Comprar" />
        </p>
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
