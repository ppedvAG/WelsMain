<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="WelsMain.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="löschen"
                OnClick="Button1_Click"
                OnClientClick="return confirm('bist du dir ganz sicher?');"
                />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label> </div>
    </form>
</body>
</html>
