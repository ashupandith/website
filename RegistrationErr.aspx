<%@ Page Language="C#" MasterPageFile="~/HRLMS.master" AutoEventWireup="true" CodeFile="RegistrationErr.aspx.cs" Inherits="RegErr" Title=":INVALID PROCESS:" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<a href="Homepage.aspx">
    <asp:Image ID="Image2" runat="server" Height="524px" ImageUrl="~/img1/404.jpg" 
        Width="925px" /></a>
  <div style="text-align: center">
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Medium"
        ForeColor="Red" NavigateUrl="Homepage.aspx">Sorry for Inconvenience/Try Again</asp:HyperLink><br />
  </div>
</asp:Content>

