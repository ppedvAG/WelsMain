<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm26.aspx.cs" Inherits="WelsMain.WebForm26" %>


            <table>
              <asp:Repeater ID="Repeater1" runat="server"
                            ItemType="WelsMain.Personen" SelectMethod="Repeater1_GetData">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Item.PersonID %></td>
                                     <td><%#Item.Name %></td>
                                </tr>
                                </ItemTemplate>
                  </asp:Repeater>

            </table>
   