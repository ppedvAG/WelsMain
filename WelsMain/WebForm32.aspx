<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm32.aspx.cs" Inherits="WelsMain.WebForm32" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"
            EnablePartialRendering="true">
        </asp:ScriptManager>
        <h1>Updatepanel</h1>
        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label runat="server" Text="Label" ID="label1"></asp:Label>
                    <asp:TextBox runat="server" ID="text1"></asp:TextBox>
                    <asp:Button ID="btn1" runat="server" Text="Button" OnClick="Unnamed_Click" />

                </ContentTemplate>
                <Triggers>
                    <asp:PostBackTrigger ControlID="btn1" />

                </Triggers>
            </asp:UpdatePanel>




            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    <img src="image/frosch].gif" />
                </ProgressTemplate>
            </asp:UpdateProgress>
        </div>
    </form>
</body>
</html>
