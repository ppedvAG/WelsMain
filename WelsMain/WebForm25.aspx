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

                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <div class="panel panel-default">
                                    <div class="panel-heading" role="tab" id="headingTwo">
                                        <h4 class="panel-title">
                                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Collapsible Group Item #2
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                        <div class="panel-body">
                                            Essen
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
