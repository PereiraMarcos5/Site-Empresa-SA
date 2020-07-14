<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cliente_cadastro.aspx.cs" Inherits="SiteEmpresa.cliente.cliente_cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Style/StyleSheetNavbar.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
           #fundo{
         background: rgb(141, 80, 255);
        height: 700px;
        width:100%;
        margin-top: 0;
        display: block;

        }
        #cliente{
            background: rgb(195, 230, 19); 
            font-family: Arial;
            height: 500px;
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
            margin-top: 20px;
        }
        #btnSalvar{
              width: 300px;
        height: 60px;
        margin-left: 130px;
        background: rebeccapurple;
        color:  white;
        font-size: 20px;
        margin-top: 30px;

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
         #label{
            margin-top:30px; 
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
        <img id="logo" src="../Resources/Logo.PNG" />

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
    <form id="form1" runat="server" name="formulario">
        <div id="empurrar"></div>
        
        <div id="fundo">
        <div id="cliente">
            <div id="dados">
            <h1 id="label">Espaço do Cliente</h1> 
        
        <div>

            Nome:</div>
        <div>

            <asp:TextBox ID="txtNome" runat="server" Width="451px" Height="30px"></asp:TextBox>

        </div>
        <div>

            Endereço:</div>
        <div>

            <asp:TextBox ID="txtEndereco" runat="server" Height="30px" Width="450px"></asp:TextBox>

        </div>
        <div>

            Cartão: </div>
        <div>

            <div>
                <asp:TextBox id="txtCartao" runat="server" Width="450px" Height="31px"></asp:TextBox>
            </div>

        </div>
        <div>
            Telefone:</div>
        <asp:TextBox ID="txtTelefone" runat="server" Width="450px" Height="30px"></asp:TextBox>
                
        <p>
            <asp:Button ID="btnSalvar" runat="server" Height="35px" Text="Salvar dados" Width="189px" OnClick="btnSalvar_Click1" />
        </p
            </div></div>
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
