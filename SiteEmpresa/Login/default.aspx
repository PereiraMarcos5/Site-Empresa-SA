<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="SiteEmpresa.Login.dafault" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link href="../Style/StyleSheet.css" rel="stylesheet" />
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper fadeInDown">
            <div id="formContent">
                <div>
                    <asp:TextBox ID="txtNomeUsuario" runat="server" placeholder="Usuário" CssClass="fadeIn second"></asp:TextBox>
                    <asp:TextBox ID="txtSenha" runat="server" placeholder="Senha" CssClass="fadeIn" TextMode="Password"></asp:TextBox>
                    <asp:Button ID="btnLogin" runat="server" CssClass="fadeIn fourth" Text="Entrar" OnClick="btnLogin_Click" />
                    <asp:Button ID="btnCadastro" runat="server" CssClass="fadeIn fourth" Text="Cadastro" OnClick="btnCadastro_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>


