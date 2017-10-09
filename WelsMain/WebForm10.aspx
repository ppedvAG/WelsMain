<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm10.aspx.cs" Inherits="WelsMain.WebForm10" %>
<%@ Import Namespace="Microsoft.AspNet.FriendlyUrls"  %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a href="WebForm10.aspx?id=link1">link1</a>
             <a href="/WebForm10/artikel/12131/hannes">link2</a>
            <a href='<%:FriendlyUrl.Href("~/Webform10", "artikel", 122334, "Hannes") %>' >Link3</a>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
