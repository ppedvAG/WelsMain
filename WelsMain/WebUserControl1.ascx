<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="WelsMain.WebUserControl1" %>

<div class="form-group <%=(this.IsValid1?"":"has-error") %>">
    <asp:Label runat="server" ID="Label1" CssClass="control-label" for="TextBox1"/>

    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
    <asp:Label runat="server" ID="ErrorLabel" CssClass="help-block" Visible="False"
         />


</div>

