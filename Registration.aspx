<%@ Page Title="" Language="C#" MasterPageFile="~/HRLMS.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link type="text/css" href="css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.19.custom.min.js"></script>
<script type="text/javascript">
    $(function () {
        var tid = document.getElementById('<%=txtDOb.ClientID%>');
        $(tid).datepicker({
             changeMonth: true,
            changeYear: true,
            yearRange: '1945:2017'
        });
    });
</script>
<script type="text/javascript">
    $(document).ready(function () {
        document.getElementById("<%=txtDOb.ClientID%>").readOnly = true;
    });
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;
        border: 1px solid #6CC5CB" width="100%" id="AutoNumber5">
        <tr  style="background-color:#19c78b; text-align:center; font-size:larger" class="whitetext" >
            <td >
                Online Application Form
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr id="trAdd" runat="server">
            <td>
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
                                         
                                            <td style="width: 40%; padding-left: 20px;" align="right">
                                               Aadhar Number: 
                                            </td>
                                            <td style="width: 60%; padding-left: 20px;">
                                          
                                                <asp:TextBox ID="TxtAdhaarNo" runat="server"  CssClass="input"  MaxLength="12" 
                                                    AutoPostBack="True" ontextchanged="TxtAdhaarNo_TextChanged"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtAdhaarNo" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="aa"></asp:RequiredFieldValidator>
                                                 <asp:CustomValidator ID="CustomValator4" runat="server" ErrorMessage="Enter valid AAdhar Number" ControlToValidate="TxtAdhaarNo" ClientValidationFunction="ValidateName" ForeColor="#804000">*</asp:CustomValidator>
                                                 <asp:CompareValidator ID="TxtAdkjjkkjkjkjhaarNo" runat="server"  ControlToValidate="TxtAdhaarNo" Display="Dynamic" ErrorMessage="Select Valid Aadhar Number" ForeColor="#804000"  Operator="NotEqual" ValueToCompare="0"  ValidationGroup="aa">*</asp:CompareValidator>
                                                 <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="TxtAdhaarNo" ValidChars="1234567890"></cc1:FilteredTextBoxExtender>
                                           </td>
                                      
                                            
                                           
                                                <asp:Label ID="lblaadharerror" runat="server" ForeColor="Red" style="text-align: center"></asp:Label>       
                               
                                        </tr>
                                        <tr>
                                          <td style="width: 40%; padding-left: 20px;" align="right">
                                               Applicant's Name :</td>
                                          <td style="width: 60%; padding-left: 20px;">
                                            <asp:TextBox ID="txtName" runat="server" MaxLength="50" CssClass="input" 
                                                 ></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RFVnameFirst" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Enter Valid Applicant's Name" ForeColor="#804000" ValidationGroup="aa">*</asp:RequiredFieldValidator>
                                            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Enter Proper Applicant Name" ControlToValidate="txtName" ClientValidationFunction="ValidateName" ForeColor="Red">*</asp:CustomValidator>
                                            <cc1:FilteredTextBoxExtender ID="VName" runat="server" TargetControlID="txtName" ValidChars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ. "></cc1:FilteredTextBoxExtender>
                                         </td>
                                        </tr>
                                        <tr>
                                              <td style="width: 40%; padding-left: 20px;" align="right">
                                                    Father's Name :</td>
                                              <td style="width: 60%; padding-left: 20px;">
                                                    <asp:TextBox ID="txtFname" runat="server" MaxLength="50" CssClass="input" 
                                                        ValidationGroup="a"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RFVfname" runat="server" ControlToValidate="txtFname" Display="Dynamic" ErrorMessage="Enter Valid Applicant's Father Name" ForeColor="#804000" ValidationGroup="aa">*</asp:RequiredFieldValidator>
                                                    <asp:CustomValidator ID="CustomValidator2" runat="server" ClientValidationFunction="ValidateFName" ControlToValidate="txtFname" ErrorMessage="Enter Proper Father Name" ForeColor="Red">*</asp:CustomValidator>
                                                    <cc1:FilteredTextBoxExtender ID="Vfname" runat="server" TargetControlID="txtFName" ValidChars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ. "></cc1:FilteredTextBoxExtender>
                                             </td>
                                        </tr>
                                        <tr>
                                              <td style="width: 40%; padding-left: 20px;" align="right">
                                                     Mother's Name :</td>
                                              <td style="width: 60%; padding-left: 20px;">
                                                  <asp:TextBox ID="txtMname" runat="server" MaxLength="50" CssClass="input" 
                                                     ></asp:TextBox>
                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMname" Display="Dynamic" ErrorMessage="Enter Valid Applicant's Mother Name" ForeColor="#804000" ValidationGroup="aa">*</asp:RequiredFieldValidator>
                                                  <asp:CustomValidator ID="CustomValidator3" runat="server" ClientValidationFunction="ValidateMName" ControlToValidate="txtMname" ErrorMessage="Enter Proper Mother Name" ForeColor="#804000">*</asp:CustomValidator>
                                                  <cc1:FilteredTextBoxExtender ID="Vmname" runat="server" TargetControlID="txtMName" ValidChars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ. "></cc1:FilteredTextBoxExtender>
                                              </td>
                                        </tr>
                                        <tr>
                                              <td style="width: 40%; padding-left: 5px;" align="right">
                                                     Are you retired employee from government/semi government :</td>
                                              <td style="width: 60%; padding-left: 20px; text-align: left;">
                                                   <asp:RadioButtonList ID="rbtnGover" runat="server" RepeatDirection="Horizontal" CssClass="input1">
                                                        <asp:ListItem Value="Yes">Yes</asp:ListItem>
                                                        <asp:ListItem Value="No" Selected="True">No</asp:ListItem>
                                                    </asp:RadioButtonList>
                                               </td>
                                        </tr>
                                        <tr>
                                              <td style="width: 40%; padding-left: 5px;" align="right">
                                                     Date of Birth :</td>
                                              <td style="width: 60%; padding-left: 20px; text-align: left;">
                                                  <asp:TextBox ID="txtDOb" runat="server" MaxLength="10" CssClass="input" 
                                                       />
                                                   <asp:RequiredFieldValidator ID="RFVdobcheck" runat="server" ControlToValidate="txtDOb" Display="Dynamic" ErrorMessage="Enter Valid Date of Birth" ForeColor="#804000" ValidationGroup="aa">*</asp:RequiredFieldValidator>
                                                      <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender233" runat="server" TargetControlID="txtDOb" FilterType="Custom" ValidChars="0123456789/">
                                                        </cc1:FilteredTextBoxExtender>                                        
                                                  (MM/DD/YYYY)</td>
                                          
                                        </tr>

                                        
                                                                           
                                      
                                        <tr>
                                              <td style="width: 40%; padding-left: 5px;" align="right">
                                                     Mobile Number</td>
                                              <td style="width: 60%; padding-left: 20px; text-align: left;">
                                                  <asp:TextBox ID="txtmobilenumber" runat="server" CssClass="input" 
                                                      style="margin-bottom: 0px" MaxLength="10"></asp:TextBox>
                                                                                              
                                                  <asp:RequiredFieldValidator ID="RFVptelphone" runat="server" 
                                                      ControlToValidate="txtmobilenumber" Display="Dynamic" 
                                                      ErrorMessage="Enter Valid Permanent Telephone Number" ForeColor="#804000" 
                                                      ValidationGroup="aa">*</asp:RequiredFieldValidator>
                                                        <cc1:FilteredTextBoxExtender ID="cp" runat="server" FilterType="Numbers" TargetControlID="txtmobilenumber" ></cc1:FilteredTextBoxExtender>
                                              </td>
                                             
                                        </tr>
                                        <tr>
                                              <td style="width: 40%; padding-left: 5px;" align="right">
                                                     Email </td>
                                              <td style="width: 60%; padding-left: 20px; text-align: left;">
                                                  <asp:TextBox ID="txtemail" runat="server" CssClass="input" MaxLength="100"></asp:TextBox>
                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                      ControlToValidate="txtemail" Display="Dynamic" 
                                                      ErrorMessage="Enter Valid Correspondance Telephone Number" ForeColor="Maroon" 
                                                      ValidationGroup="aa">*</asp:RequiredFieldValidator>
                                                  <asp:RegularExpressionValidator ID="REVpemail" runat="server" 
                                                      ControlToValidate="txtemail" Display="Dynamic" 
                                                      ErrorMessage="Enter Valid E-Mail Address" ForeColor="#804000" 
                                                      ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                                      ValidationGroup="aa">*</asp:RegularExpressionValidator>
                                                                                              
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
                                    <asp:Label ID="lblErrMsg" runat="server" CssClass="red_text"></asp:Label>
                                    <asp:HiddenField ID="hfCustId" runat="server" />
                                </td>
                                <td style="width: 30%; vertical-align: top;">
                                    <fieldset style="width: 85%; padding: 8px; text-align: center;">
                                        <asp:Button ID="btnSave" runat="server" Text="Next" ValidationGroup="aa" 
                                           BackColor="White" Font-Bold="True" 
                                            Font-Size="Large" ForeColor="Red" Height="50px" Width="150px" 
                                            onclick="btnSave_Click"/>
                                      
                                    </fieldset>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="background-image: url(../Resources/Images/gb-bg.gif)">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>

