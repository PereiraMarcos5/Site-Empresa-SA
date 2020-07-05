<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelaCadastro.aspx.cs" Inherits="SiteEmpresa.TelaCadastro.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>Cadastrar Alimento&nbsp;&nbsp; </div>
            <asp:TextBox ID="txtAlimento" runat="server" placeholder="Alimento" CssClass="fadeIn second"></asp:TextBox>
            <br />
            Cadastrar Preço</div>
            <asp:TextBox ID="txtPreco" runat="server" placeholder="Alimento" CssClass="fadeIn second"></asp:TextBox>
            <asp:Button ID="SalvarAlimento" runat="server" Text="Salvar" OnClick="SalvarAlimento_Click" />
            <div><asp:Button ID="BtnSelect" runat="server" Text="Selecionar" /></div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="produto" HeaderText="produto" SortExpression="produto" />
                    <asp:BoundField DataField="preco" HeaderText="preco" SortExpression="preco" />
                </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VENDASConnectionString %>" SelectCommand="SELECT [produto], [preco] FROM [compra]"></asp:SqlDataSource>
    </form>
</body>
</html>
