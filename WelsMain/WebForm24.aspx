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
            Itemtype="WelsMain.Personen"
            SelectMethod="FormView1_GetItem"
            UpdateMethod="FormView1_UpdateItem"
            DeleteMethod="FormView1_DeleteItem"
            InsertMethod="FormView1_InsertItem"
            runat="server" AllowPaging="false" DataKeyNames="PersonID"
            >
            <EmptyDataTemplate>
                Datensatz nicht gefunden oder gelöscht
            </EmptyDataTemplate>
            <EditItemTemplate>
                PersonID:
                <asp:Label ID="PersonIDLabel1" runat="server" Text='<%# BindItem.PersonID %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# BindItem.Name%>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualisieren" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Abbrechen" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%#BindItem.Name%>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Einfügen" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Abbrechen" />
            </InsertItemTemplate>
            <ItemTemplate>
                PersonID:
                <asp:Label ID="PersonIDLabel" runat="server" Text='<%# Item.PersonID %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Item.Name %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Bearbeiten" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Löschen" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Neu" />
            </ItemTemplate>
        </asp:FormView>
   
    </form>
</body>
</html>
