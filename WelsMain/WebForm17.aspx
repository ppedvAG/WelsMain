<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm17.aspx.cs" Inherits="WelsMain.WebForm17" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="suche" />
            <br />
            <asp:GridView ID="GridView1" runat="server"
                EnableSortingAndPagingCallbacks="false"
                AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="EssenId" DataSourceID="SqlDataSource1" EmptyDataText="Es sind keine Datensätze zum Anzeigen vorhanden." ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="EssenId" HeaderText="EssenId" ReadOnly="True" SortExpression="EssenId" />
                    <asp:BoundField DataField="Essen" HeaderText="Essen" SortExpression="Essen" />
                    <asp:BoundField DataField="Preis" HeaderText="Preis" SortExpression="Preis" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                EnableCaching="true" CacheDuration="60"
                
                ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>"
                DeleteCommand="DELETE FROM [Essen] WHERE [EssenId] = @EssenId"
                InsertCommand="INSERT INTO [Essen] ([Essen], [Preis]) VALUES (@Essen, @Preis)" 
                SelectCommand="SELECT * FROM [Essen] WHERE ([Essen] LIKE '%' + @Essen + '%')" 
                UpdateCommand="UPDATE [Essen] SET [Essen] = @Essen, [Preis] = @Preis WHERE [EssenId] = @EssenId">
                <DeleteParameters>
                    <asp:Parameter Name="EssenId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Essen" Type="String" />
                    <asp:Parameter Name="Preis" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Essen" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Essen" Type="String" />
                    <asp:Parameter Name="Preis" Type="Int32" />
                    <asp:Parameter Name="EssenId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
