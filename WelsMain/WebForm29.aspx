<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm29.aspx.cs" Inherits="WelsMain.WebForm29" %>

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
        <h1>Image Preview</h1>
        <div class="container">
            <div class="row">
                <asp:Repeater ID="Repeater1"
                    ItemType="System.String"
                    SelectMethod="Repeater1_GetData"
                    runat="server">
                    <ItemTemplate>
                        <div class="col-md-4">
                            <img src="thumbnail.ashx?img=<%#Item %>" />
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>

        </div>
    </form>
</body>
</html>
