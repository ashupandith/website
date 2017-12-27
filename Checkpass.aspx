<%@ Page Language="C#" MasterPageFile="~/HRLMS.master" AutoEventWireup="true" CodeFile="Checkpass.aspx.cs" Inherits="Password" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <table>
            <tr>
                <td style="height: 22px; text-align: left;" colspan="3">
                    Regno
                    <asp:TextBox ID="txtregno" runat="server" CssClass="input"></asp:TextBox>&nbsp;
                    <asp:Button ID="btnshow" runat="server" OnClick="btnshow_Click" Text="Show" /></td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
                </td>
            </tr>
        </table>
    </center>

</asp:Content>

