<%@ Page Language="C#" AutoEventWireup="true"
   
    CodeBehind="WebForm23.aspx.cs" Inherits="WelsMain.WebForm23" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="ListView1_ItemCommand">
            <ItemTemplate>
                <%#Eval("PersonID") %>
                <asp:LinkButton runat="server" 
                      CommandArgument='<%#Eval("PersonID") %>' 
                    CommandName="btnedit"
                    ><%#Eval("Name") %> </asp:LinkButton>
                <asp:Button ID="Button1" runat="server" Text="Button"
                    CommandArgument='<%#Eval("PersonID") %>' 
                    CommandName="btn"/>
            </ItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" 
            SelectCommand="SELECT * FROM [Personen]"></asp:SqlDataSource>
    </form>
</body>
</html>
