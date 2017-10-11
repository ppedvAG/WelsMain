<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm25.aspx.cs" Inherits="WelsMain.WebForm25" %>

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
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="panel-group" id="accordion" role="tablist"
                        aria-multiselectable="true">

                        <asp:Repeater ID="Repeater1" runat="server" 
                            ItemType="WelsMain.Personen" SelectMethod="Repeater1_GetData">
                            <ItemTemplate>
                                <div class="panel panel-default">
                                    <div class="panel-heading" role="tab" id="headingTwo">
                                        <h4 class="panel-title">
                                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" 
                                                href="#collapse<%#Item.PersonID %>" aria-expanded="false" aria-controls="collapseTwo">
                                               <%#Item.Name %>
                                            </a>
                                            <asp:Repeater ID="Repeater2" runat="server"></asp:Repeater>            <span class="badge pull-right"><%#Item.Verzehr.Count() %></span>
                                        </h4>
                                    </div>
                                    <div id="collapse<%#Item.PersonID %>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                        <div class="panel-body">
                                            <ul>
                                            <asp:Repeater ID="Repeater3" runat="server"
                                                ItemType="WelsMain.Verzehr"
                                                DataSource="<%#Item.Verzehr %>"
                                                >
                                                <ItemTemplate>
                                                    <li><%#Item.Essen.Essen1 %></li>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>


                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
