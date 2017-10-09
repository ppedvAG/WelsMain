<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WelsMain.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <asp:Panel ID="Panel1" runat="server" GroupingText="mein Panel"> 
            <div><%:"äßü" %>
            <asp:TextBox ID="TextBox1" runat="server" ClientIDMode="Static" ></asp:TextBox>
             <input name="hannes" id="hannes" runat="server" />
            <asp:Button ID="Button1" runat="server"
                OnClick="Button1_Click"
                Text="Button" />
        </div></asp:Panel>
    
   
</asp:Content>
