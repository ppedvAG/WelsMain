<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm24.aspx.cs" Inherits="WelsMain.WebForm24" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   
        <asp:FormView ID="FormView1"
          
            runat="server" AllowPaging="True" DataKeyNames="PersonID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                PersonID:
                <asp:Label ID="PersonIDLabel1" runat="server" Text='<%# Eval("PersonID") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualisieren" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Abbrechen" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Einfügen" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Abbrechen" />
            </InsertItemTemplate>
            <ItemTemplate>
                PersonID:
                <asp:Label ID="PersonIDLabel" runat="server" Text='<%# Eval("PersonID") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Bearbeiten" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Löschen" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Neu" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" DeleteCommand="DELETE FROM [Personen] WHERE [PersonID] = @PersonID" InsertCommand="INSERT INTO [Personen] ([Name]) VALUES (@Name)" SelectCommand="SELECT * FROM [Personen]" UpdateCommand="UPDATE [Personen] SET [Name] = @Name WHERE [PersonID] = @PersonID">
            <DeleteParameters>
                <asp:Parameter Name="PersonID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="PersonID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
   
    </form>
</body>
</html>
