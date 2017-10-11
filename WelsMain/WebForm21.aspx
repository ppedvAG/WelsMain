<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm21.aspx.cs" Inherits="WelsMain.WebForm21" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1>DropDownliste</h1>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" AutoPostBack="true"
                ItemType="WelsMain.Personen" SelectMethod="ListView1_GetData"
                DataValueField="PersonId" DataTextField="Name"
                OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"  runat="server"></asp:DropDownList>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        
        </div>
    </form>
</body>
</html>
