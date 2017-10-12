<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm28.aspx.cs" Inherits="WelsMain.WebForm28" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="Scripts/jquery-1.10.2.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       
        <div> <asp:GridView ID="GridView1" ItemType="WelsMain.Personen"
            SelectMethod="GridView1_GetData"
            runat="server"></asp:GridView>
                 <a href="#" onclick="nachladen()">mehr....</a>
        </div>
        <script>
            function nachladen() {
                $.ajax({
                    type: "POST",
                    contentType: "application/json",
                    dataType: "json",
                    url: "/webform28.aspx/Nachladen?p=" + page,
                    success: function (result) {
                        $.each(result.d, function (index, row) {
                            console.log(row);
                            tr = $('<tr>');
                            tr.append("<td>" + row.PersonID + "</td>");
                            tr.append("<td>" + row.Name + "</td>");
                            $('#GridView1 tbody').append(tr);
                        });
                    }
                });
                page++;
            }
            var page = 1;
            
          </script>
    </form>
</body>
</html>
