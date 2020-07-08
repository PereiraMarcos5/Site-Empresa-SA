<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Entrega.aspx.cs" Inherits="SiteEmpresa.Entrega.Entrega" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            Entregas</div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="170px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="255px">
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VENDASConnectionString %>" SelectCommand="SELECT [id], [produto], [preco] FROM [compra] ORDER BY [id], [produto], [preco]"></asp:SqlDataSource>
        <asp:TextBox ID="txtProduto" runat="server" Enabled="False" OnTextChanged="txtAdicionar_TextChanged" Width="177px"></asp:TextBox>
        <asp:TextBox ID="txtPreco" runat="server" Width="176px"></asp:TextBox>
        <p>
            <asp:Button ID="btnSelect" runat="server" OnClick="btnSelect_Click" Text="Incluir" />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="238px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="produto" HeaderText="produto" SortExpression="produto" />
                    <asp:BoundField DataField="preco" HeaderText="preco" SortExpression="preco" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                </Columns>
            </asp:GridView>
            <asp:Button ID="bntComprar" runat="server" OnClick="bntComprar_Click" Text="Comprar" />
        </p>
    </form>
</body>
</html>
