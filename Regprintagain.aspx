<%@ Page Title="" Language="C#" MasterPageFile="~/HRLMS.master" AutoEventWireup="true" CodeFile="Regprintagain.aspx.cs" Inherits="Regprintagain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
 <td align="left">
                <asp:Label ID="Label1" runat="server" Text="Step 1" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" ForeColor="#00CC00"></asp:Label>
                <span class="style1">>>>>>></span><asp:Label ID="Label2"
                    runat="server" Text="Step 2" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" ForeColor="#00CC00"></asp:Label>>>>>>><asp:Label ID="Label3" 
                    runat="server" Text="Step 3" ForeColor="#00CC00" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger"></asp:Label><span class="style2">>>>>>></span><asp:Label
                        ID="Label4" runat="server" Text="Step 4" ForeColor="#00CC00" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger"></asp:Label><span class="style2">>>>>>>></span><asp:Label
                        ID="Label5" runat="server" Text="Step 5" ForeColor="Red" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger"></asp:Label>
            </td>
</tr>
</table>
                <div align="center">
                    <div style="width: 90%;" align="center">
                        <fieldset style="width: 98%; text-align: left;">
                            <legend>Apply </legend>
                            <div style="padding: 10px 10px 5px 10px; text-align: center;">
                                <div>
                                    <table class="gen" style="width: 95%; text-align: left;" border="0" cellpadding="4px"
                                        cellspacing="0">
                                        <tr>
                                            <td  style="width: 40%; padding-left: 20px;" align="right">
                                              Name of the Post:</td>
                                            <td style="width: 60%; padding-left: 20px;">
                                            <asp:DropDownList ID="ddlpost" runat="server" CssClass="input">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator222" runat="server" ControlToValidate="ddlpost" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="aa"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="cmppdistrict" runat="server"  ControlToValidate="ddlpost" Display="Dynamic" ErrorMessage="Select Valid Post" ForeColor="#804000"  Operator="NotEqual" ValueToCompare="0"  ValidationGroup="aa">*</asp:CompareValidator>
                                            </td>
                                        </tr>
                                          <tr>
                                            <td  style="width: 40%; padding-left: 20px;" align="right">
                                                Registration Number<td style="width: 60%; padding-left: 20px;">
                                         <asp:TextBox ID="txtRegno" runat="server" CssClass="input" ></asp:TextBox>
                                            </td>
                                        </tr>
                                          <tr>
                                            <td  style="width: 40%; padding-left: 20px;" align="right">
                                                Password<td style="width: 60%; padding-left: 20px;">
                                                  <asp:TextBox ID="txtPassword" runat="server" CssClass="input"></asp:TextBox>
                                            </td>
                                        </tr>
                                        </table>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                    <div style="text-align: right; width: 90%; padding-top: 10px; padding-bottom:6px;">
                        <table style="width: 100%">
                            <tr>
                                <td style="width: 70%; text-align: left; vertical-align: top;">
                                    <asp:Label ID="lblmsg" runat="server" CssClass="red_text"></asp:Label>
                                   
                                </td>
                                <td style="width: 30%; vertical-align: top;">
                                    <fieldset style="width: 85%; padding: 8px; text-align: center;">
                                        <asp:Button ID="btnprint" runat="server" Text="Print Again" ValidationGroup="aa" 
                                            onclick="btnprint_Click"/>
                                      
                                    </fieldset>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
           

</asp:Content>

