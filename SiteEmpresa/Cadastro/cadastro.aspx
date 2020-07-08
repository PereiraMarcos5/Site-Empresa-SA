<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="SiteEmpresa.Cadastro.cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Cadastro
            <asp:TextBox ID="txtNomeUsuario" runat="server" placeholder="Usuário" CssClass="fadeIn second"></asp:TextBox>
            <asp:TextBox ID="txtSenha" runat="server" placeholder="Senha" CssClass="fadeIn" TextMode="Password"></asp:TextBox>
            <asp:Button ID="btnSalvar" runat="server" Text="Salvar" onclick="btnSalvar_Click"/>
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Logar" />
        </div>
    </form>
</body>
</html>
