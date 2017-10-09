<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WelsMain.WebForm3" %>
<%@ Import Namespace="System.IO" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <script runat="server">

    </script>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script>

    </script>
</head>
<body>
    <form id="form1" runat="server" >
        <asp:Panel ID="Panel1" runat="server" GroupingText="mein Panel"> 
            <div><%:"äßü" %>
            <asp:TextBox ID="TextBox1" runat="server" ClientIDMode="Predictable"></asp:TextBox>
            <asp:Button ID="Button1" runat="server"
                OnClick="Button1_Click"
                Text="Button" />
        </div></asp:Panel>
    
    </form>
</body>
</html>
