<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WelsMain.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
       <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.10.2.js"></script>
    <script src="Scripts/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButtonList ID="RadioButtonList1" 
                OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged"
                runat="server"
                CssClass="list-group"
                RepeatLayout="UnorderedList"
                AutoPostBack="true"
                >
            </asp:RadioButtonList>
        </div>
    </form>
</body>
</html>
