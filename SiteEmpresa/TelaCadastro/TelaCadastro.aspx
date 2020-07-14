<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelaCadastro.aspx.cs" Inherits="SiteEmpresa.TelaCadastro.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../Style/StyleSheetNavbar.css" rel="stylesheet" />
    <title></title>
    <style>
         #fundo{
         background: rgb(141, 80, 255);
        height: 800px;
        width:100%;
        margin-top: 0;


        }
        #cardapio{
            background: rgb(195, 230, 19); 
            font-family: Arial;
            height: 700px;
            width: 600px;
            color:rebeccapurple;
            margin-left: 420px;
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
         #SalvarAlimento{
            width: 300px;
            height: 60px;
            margin-left: 150px;
            background: rebeccapurple;
            color:  white;
            font-size: 20px;
            margin-top: 40px;
             }
         #GridView1{
             margin-top: 20px;
             margin-left:100px;
             height: 
         }
         #btnRemove{

            width: 300px;
            height: 60px;
            margin-left: 150px;
            background: rebeccapurple;
            color:  white;
            font-size: 20px;
            margin-top: 20px;
             }
         #titulo{
            margin-left: 20px;
            margin-top: 20px;
            font-size: 40px;
         }
         #logo{
            width:120px;
            
        }



    </style>
    <script src="Validar.js"></script>

</head>
<body>

      <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>
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

   
    <form id="form1" method="post" runat="server">
        
        <div id="empurrar"></div>
           <div id="fundo">
             <div id="cardapio">
                 <h2 id="titulo">Cardapio</h2>
            <div>&nbsp;&nbsp;&nbsp; Cadastrar Alimento&nbsp; <asp:TextBox ID="txtAlimento" runat="server" name="alimento" placeholder="Alimento" CssClass="fadeIn second" Width="342px"></asp:TextBox>
               
                &nbsp;&nbsp;
                 </div>
            <br />
            &nbsp;&nbsp;
            Cadastrar Preço&nbsp; 
            <asp:TextBox ID="txtPreco" runat="server" placeholder="Preço" name="preco" CssClass="fadeIn second" Width="366px"></asp:TextBox>

               
                   <!-- OnClick="SalvarAlimento_Click" -->  
            <asp:Button ID="SalvarAlimento" runat="server" Text="Salvar" OnClick="SalvarAlimento_Click"/>
            <div></div>
        <div>
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="id">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VENDASConnectionString %>" SelectCommand="SELECT [id], [produto], [preco] FROM [compra] ORDER BY [id], [produto], [preco]"></asp:SqlDataSource>
            </div>
        <asp:Button ID="btnRemove" runat="server" OnClick="btnRemove_Click" Text="Excluir" />
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
