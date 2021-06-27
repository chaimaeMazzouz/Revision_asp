<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Revision_Asp_webForm.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="CodeCategorie" DataSourceID="SqlDataSource1" ForeColor="Black" Width="650px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" ShowInsertButton="true" />
                    <asp:BoundField DataField="CodeCategorie" HeaderText="CodeCategorie" ReadOnly="True" SortExpression="CodeCategorie" />
                    <asp:BoundField DataField="libelle" HeaderText="libelle" SortExpression="libelle" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CodeCategorie" DataValueField="CodeCategorie">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Gestion_FilmsConnectionString %>" DeleteCommand="DELETE FROM [categorie] WHERE [CodeCategorie] = @CodeCategorie" InsertCommand="INSERT INTO [categorie] ([CodeCategorie], [libelle]) VALUES (@CodeCategorie, @libelle)" SelectCommand="SELECT * FROM [categorie]" UpdateCommand="UPDATE [categorie] SET [libelle] = @libelle WHERE [CodeCategorie] = @CodeCategorie">
                <DeleteParameters>
                    <asp:Parameter Name="CodeCategorie" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CodeCategorie" Type="Int32" />
                    <asp:Parameter Name="libelle" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="libelle" Type="String" />
                    <asp:Parameter Name="CodeCategorie" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
