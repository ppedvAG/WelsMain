<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rechner.aspx.cs" Inherits="WelsMain.Rechner" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.10.2.js"></script>
    <script src="Scripts/bootstrap.js"></script>
</head>
<body>
    <div class="container">
        <h1>Calculator</h1>
        <form id="form1" runat="server">
            <div class="row">
                <div class="col-md-5">
                    <div class="form-group">
                        <label for="txtEins">Wert1</label>
                        <asp:TextBox ID="txtEins" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtZwei">Wert1</label>
                        <asp:TextBox ID="txtZwei"  CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
                    </div>
                    <h1>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
                </div>
                <div class="col-md-3">
                    <div class="btn-group btn-group-lg" role="group">
                        <asp:Button ID="plus" runat="server"
                            OnClick="plus_Click"
                            Text="+" CssClass="btn btn-warning" />
                        <asp:Button ID="Minus" runat="server"
                            OnClick="Minus_Click"
                            Text="-" CssClass="btn btn-danger" />


                    </div>
                </div>


            </div>

        </form>
    </div>
</body>
</html>
