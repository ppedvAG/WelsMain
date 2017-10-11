<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm22.aspx.cs" Inherits="WelsMain.WebForm22" %>

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
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="PersonID"
                CssClass="table table-striped  table-borderd table-condensed sortable"
                GridLines="None" PagerSettings-Mode="Numeric"
                AllowCustomPaging="true" AllowPaging="true" PageSize="5" 
               
                ItemType="WelsMain.Personen" SelectMethod="ListView1_GetData">
                <Columns>
                    <asp:CommandField ShowEditButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-default" />

                    <asp:BoundField DataField="Name" />
                </Columns>
                <PagerTemplate>
                    <ul class="pagination">
                        <li>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Page" CommandArgument="First"><span class="glyphicon glyphicon-step-backward"></span></asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Page" CommandArgument="Prev"><span class="glyphicon glyphicon-chevron-left"/></asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Page" CommandArgument="Next"><span class="glyphicon glyphicon-chevron-right"/></asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Page" CommandArgument="Last"><span class="glyphicon glyphicon-step-forward"/></asp:LinkButton>
                        </li>
                    </ul>


                </PagerTemplate>
            </asp:GridView>


        </div>
    </form>
</body>
</html>
