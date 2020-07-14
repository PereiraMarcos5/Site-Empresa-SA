<%@ Page Title="" Language="C#" MasterPageFile="~/Painel/Master.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="SiteEmpresa.Painel.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>

        #fundo{
         background: rgb(141, 80, 255);
        height: 800px;
        width:100%;
        margin-top: 0;
        font-family: Arial;
        }
        #sobre{
            background-color: rebeccapurple;
            border-radius: 30px;
            border: solid rgb(195, 230, 19);
            color: white;
            width: 800px;
            height: 450px;
            margin-left:300px;
            font-size: 30px;
        }
        #titulo{
            margin-left: 20px;
            margin-top: 30px;
            font-size: 40px

        }
        #historia{
             margin-left: 10px;
             margin-right: 10px;
             font-size: 25px
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
         #imagens{
             margin-left:150px;
             display:flex;
             margin-bottom:20px;
         }
    </style>

</head>

<body> 
    
    <div id="empurrar"></div>
   <div id="fundo">
       <div id="imagens">
           <img src="../Resources/lanche1.jpg" />
           <img src="../Resources/download.jpg" />
           <img src="../Resources/download%20(2).jpg" />
           <img src="../Resources/download%20(1).jpg" />
       </div>
       <div id="sobre">
           <h1 id="titulo">Sobre Nós</h1>
           <h6 id="historia"> Só Natura surgiu com a ideologia de que “ter uma alimentação saudável é fundamental”, por isso pensando no seu bem estar e na sua qualidade de vida, nossa empresa está a 3 anos  no mercado comprometida com sua rotina de forma gostosa, saudável, e além disso  muito prática pois lidamos com a correria do dia dia  de nosso clientes, por isso nossos alimentos são para qualquer hora e em qualquer lugar, com produtos livres de conservantes, agrotóxicos, excesso de gorduras e açúcares, assim não há mais desculpas para não ser saudável. 
</h6>
       </div>
   </div>
     <div id="info">
            <div id="contato"> 

           </div>
           <h6 id:"tel">Telefone: (47)3998-9915                  |              Instagram: @sonaturabnu                  |                 Email: sonatura@restautante.com </h6>

            <div id="endereço">
             <h6 id:"end">Rua das Orquideas, 124, Velha - Blumenau SC</h6>

            </div>
        </div>
</body>

</html>
</asp:Content>
