<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm27.aspx.cs" Inherits="WelsMain.WebForm27" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="Scripts/jquery-1.10.2.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" EnableViewState="false"
                ItemType="WelsMain.Personen" SelectMethod="GridView1_GetData"
                ></asp:GridView>
            <a href="#" onclick="nachladen()">mehr....</a>
        </div>
    </form>
    <script>
        function nachladen()
        {
            $.ajax({
                type: "GET",
                url: "webform27/?p=" + page,
                success: function (result) {
                    var data = $(result).find("#GridView1 tbody");
                    var rows = data.children();
                    $("#GridView1 tbody").append(rows);
                    page++;
                   

                },
                error: function (result) { alert(result);}

            });
       
        }
        var page = 1;

    </script>
</body>
</html>
