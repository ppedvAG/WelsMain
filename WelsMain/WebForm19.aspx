﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm19.aspx.cs" Inherits="WelsMain.WebForm19" %>

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
    <h1>Essen Manager V1.0</h1>
    <div class="container">
        <form id="form1" runat="server" class="form-horizontal">
            <div class="row">
                <div class="col-md-6">
                    <ul class="list-group">
                        <li class="list-group-item  active">mein Essen </li>
                        <asp:Repeater ID="rptEssen" runat="server">
                            <ItemTemplate>
                                <li class="list-group-item"><%#Eval("Essen") %>
                                    <span class="badge"><%#Eval("Preis") %> €</span>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <div class="col-md-6">
                    <fieldset>
                        <legend>Neues Essen</legend>
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="txtessen">Essen</label>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtessen" ccsclass="form-control input-md" placeholder="essentext" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="txtpreis">Preis €</label>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtpreis" ccsclass="form-control input-md" placeholder="Preis €" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-4">
                                <asp:Button ID="btnNeu" CssClass="btn btn-primary" runat="server" Text="Neu" 
                                    OnClick="btnNeu_Click"
                                    />
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </form>

    </div>
</body>
</html>
