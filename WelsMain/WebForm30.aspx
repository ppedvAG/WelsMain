<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm30.aspx.cs" Inherits="WelsMain.WebForm30" %>
<%@ OutputCache Duration="5" VaryByParam="none"  %>
<%@ Register Src="~/WebUserControl2.ascx" TagPrefix="uc1" TagName="WebUserControl2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%=DateTime.Now %>
        </div>
        <uc1:WebUserControl2 runat="server" id="WebUserControl2" />
        <hr />
        <asp:Substitution ID="Substitution1" runat="server"  MethodName="immeraktuell"/>
    </form>
</body>
</html>
