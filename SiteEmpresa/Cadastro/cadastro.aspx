<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="SiteEmpresa.Cadastro.cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>

        body{
       background-color: rgb(141, 80, 255);

        }
        #login{
        width: 400px;
        height: 500px;
        display: block;
        margin-top: 50px;
        margin-left: 500px;
        background: rgb(195, 230, 19); 
        border: solid rgb(49, 101, 21);
        font-family:Arial;

       }
       #txtNomeUsuario{
        width: 300px;
        height: 40px;
        margin-left: 50px;
       }
        #txtSenha{
         width: 300px;
        height: 40px;
        margin-left: 50px;
        margin-top: 15px;
       }
        #btnSalvar{
        width: 300px;
        height: 60px;
        margin-left: 50px;
        background: rebeccapurple;
        color:  white;
        font-size: 20px;


       }
        #btnLogin{
        width: 300px;
        height: 60px;
        margin-left: 50px;
        background:rebeccapurple;
        color: white;
        margin-top: 15px;
        font-size: 20px;

       }
        #title{
            color: rebeccapurple;
            margin-top: 30px;
            font-size: 55px;
            margin-top: 15px;
            margin-left:50px;

        }
        #botoes{
        width: 400px;
        height: 90px;
        margin-top: 20px;
        margin-left: 20 px;
        }
         #title2{
            color: rgb(195, 230, 19); 
            font-size: 80px;
            font-family:Arial;
            margin-left: 37%;
        }
         #subtitle{
            color: rgb(195, 230, 19); 
            font-size: 40px;
            font-family:Arial;
            margin-left: 10%;

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
    <form id="form1" runat="server">
      

         <h2 id="title2"> Só Natura </h2> 
        
        
        <div id="login">
             
           <h2 id="title">Bem-Vindo </h2>            
            <asp:TextBox ID="txtNomeUsuario" runat="server" placeholder="Usuário" CssClass="fadeIn second"></asp:TextBox>
            <asp:TextBox ID="txtSenha" runat="server" placeholder="Senha" CssClass="fadeIn" TextMode="Password"></asp:TextBox>
           
               <div id="botoes">
            <asp:Button ID="btnSalvar" runat="server" Text="Salvar" onclick="btnSalvar_Click"/>
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Logar" />
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
