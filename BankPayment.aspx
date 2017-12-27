<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/BankPayment.aspx.cs" Inherits="BankPayment" ValidateRequest="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>HSRLM Society</title>
    <link href="resources/user.css" rel="stylesheet" type="text/css" />
    <link href="resources/pager.css" rel="stylesheet" type="text/css" />
  
   
</head>
<body>

    <form id="form1" runat="server" method="post">
    
    <div align="center">
        <table border="0" cellpadding="0" cellspacing="0" width="985px" style="border-collapse: collapse; background-color: #FFFFFF;">
            <tr>
                <td style="background-color:#4563A9; height: 4px;">
                </td>
            </tr>
       
             <tr>
                <td>
                    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;
                        border-color: #111111" width="100%">
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td valign="bottom" align="right">
                            <table style="width:100%;" cellpadding="0" cellspacing="0" border="0"><tr><td style="text-align:left">
                             <asp:Image ID="Image1" runat="server" ImageUrl="~/img1/Logo.jpg" 
                                Width="951px" Height="135px" />
                            </td>
                            <td style="text-align:right">
                            <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;
                                    border-color: #111111">
                                    <tr>
                                        <td colspan="3">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 2px">
                                            <img alt="" src="resources/images/transparent.gif" width="2" height="10" />
                                        </td>
                                        <td class="home_bg_text">
                                            
                                        </td>
                                        <td style="width: 2">
                                            &nbsp;
                                            <img alt="" src="resources/images/transparent.gif" width="2px" height="10px" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            </tr></table>
                                
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            
            <tr>
                <td style="background-color:#204C67; text-align:right;" class="whitetext" >
                 <div class="topmenu" style="width:100%;">
                                                                   <ul>
                                                                         <li runat="server" id="li_home"> <a href="Homepage.aspx" ><b>Home</b></a></li>
                                                                                                                                             
                                                                   </ul>
                                                                   </div>
                   
                </td>
            </tr>
            <tr>
                <td style="background-color:#F89F15; height: 5px;">
                </td>
            </tr>
            <tr>
            <td align="left" style="text-align: center">
                <asp:Label ID="Label2" runat="server" Text="Step 1" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" ForeColor="#00CC00" Height="50px"></asp:Label>
                    <asp:Label
                        ID="Label3" runat="server" Text="===>" ForeColor="#33CC33" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" Height="50px"></asp:Label>
                <asp:LinkButton ID="LinkButton1" 
                    runat="server"  Font-Italic="True" Font-Size="Larger" ForeColor="#00CC00" 
                    onclick="LinkButton1_Click" Height="50px" Font-Bold="True">Step 2</asp:LinkButton>
                    <asp:Label
                        ID="Label7" runat="server" Text="===>" ForeColor="#33CC33" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" Height="50px"></asp:Label>
                   <asp:LinkButton 
                    ID="LinkButton3" runat="server"  Font-Italic="True" Font-Size="Larger" 
                    ForeColor="#00CC00" onclick="LinkButton3_Click" Height="50px" 
                    Font-Bold="True">Step 3</asp:LinkButton>
                    <asp:Label
                        ID="Label8" runat="server" Text="===>" ForeColor="#33CC33" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" Height="50px"></asp:Label>
                &nbsp;<asp:LinkButton 
                    ID="LinkButton2" runat="server"  Font-Italic="True" Font-Size="Larger" 
                    ForeColor="Black" onclick="LinkButton2_Click" Height="50px" 
                    Font-Bold="True">Step 4</asp:LinkButton>
                    <asp:Label
                        ID="Label9" runat="server" Text="===>" ForeColor="Red" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" Height="50px"></asp:Label>
                <asp:Label
                        ID="Label6" runat="server" Text="Step 5" ForeColor="Red" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" Height="50px"></asp:Label>
            </td>
                <td style="height: 10px; ">
                <img alt="" src="resources/images/transparent.gif" width="10px" height="15px" />
                </td>
            </tr>
            <tr>
                <td style="width: 100%;">
                    <div>
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td style="width:10px;">
                                    <img src="resources/Images/transparent.gif" alt="" width="10px" />
                                </td>
                                <td style="text-align: center;">
                                    <div style="vertical-align: top; text-align: center;">
                                     <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;
        border: 1px solid #6CC5CB" width="100%" id="AutoNumber5">
              <tr  style="background-color:#19c78b; text-align:center; font-size:larger" class="whitetext" >
            <td >
                Payment of fee for Which You Want To Apply
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
             
              <tr id="trAddinfo" runat="server" >
            <td align="center">
                <div>
                    <div style="width: 98%;">
                        <fieldset style="width: 98%; text-align: left;">
                            <legend>Registered Candidate Information</legend>
                            <div style="padding: 10px 10px 5px 10px; text-align: center;">
                                <div>
                                    <table class="gen" style="width: 95%; text-align: left;" border="0" cellpadding="4px"
                                        cellspacing="0">
                                        <tr>
                                            <td style="width: 18%; padding-left: 20px;">
                                                Candidate Name </td>
                                            <td style="width: 32%;">
                                                 <asp:Label ID="lblname" runat="server"></asp:Label></td>
                                            <td style="width: 18%; padding-left: 20px;">
                                                Registration Number</td>
                                            <td style="width: 32%;">
                                        <asp:Label ID="lblrgistration" runat="server" style="font-weight: 700" ></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 18%; padding-left: 20px;">
                                                Name of the Post</td>
                                            <td style="width: 32%;">
                                                <asp:Label ID="lblpostcode" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblpost" runat="server"></asp:Label></td>
                                            <td style="width: 18%; padding-left: 20px;">
                                               Aadhar Number: 
                                            </td>
                                            <td style="width: 32%;">
                                        <asp:Label ID="lblaadhar" runat="server" ></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 18%; padding-left: 20px;">
                                                    Father's Name :</td>
                                            <td style="width: 32%;">
                                                <asp:Label ID="lblfname" runat="server"></asp:Label>
                                            </td>
                                            <td style="width: 18%; padding-left: 20px;">
                                                     Mother's Name :</td>
                                            <td style="width: 32%;">
                                               <asp:Label ID="lblmname" runat="server"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 18%; padding-left: 20px;">
                                                     Date of Birth :</td>
                                            <td>
                                                 <asp:Label ID="lbldob" runat="server" ></asp:Label>
                                                 <asp:Label ID="lblpass" runat="server" Visible="False"></asp:Label>
                                            </td>
                                            <td>
                                                 Amount</td>
                                            <td>
                                                 <asp:Label ID="lblamtdis" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        </table>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                  
                </div>
            </td>
        </tr> 
       
        <tr >
            <td>
                <div align="center">
                    <div style="width: 90%;" align="center">
                        <fieldset style="width: 98%; text-align: left; display:none">
                          <div style="padding: 10px 10px 5px 10px; text-align: center;" >
                                <div >
                                    <table class="gen" style="width: 95%; text-align: left;" border="0" cellpadding="4px"
                                        cellspacing="0">
                                          <tr>
                                            <td style="width: 20%; padding-left: 20px;">
                                                <b>Registration Number</b></td>
                                            <td>
                                                 <b>
                                                  <asp:TextBox ID="lblregistration" runat="server" style="font-size: small" 
                                                     ReadOnly="True" />
                                                 </b></td>
                                            <td>
                                                 &nbsp;</td>
                                            <td>
                                                 &nbsp;</td>
                                        </tr>
                                          <tr>
                                            <td style="width: 20%; padding-left: 20px;">
                                                <b>Amount :</b> </td>
                                            <td style="width: 32%;">
                                                 <asp:TextBox ID="amount" runat="server" ReadOnly="True" /></td>
                                            <td style="width: 20%; padding-left: 20px;">
                                                <b>Candidate Name :</b></td>
                                            <td style="width: 32%;">
                                        <asp:TextBox ID="firstname" runat="server" ReadOnly="True" /></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 20%; padding-left: 20px;">
                                                <b>Email :</b> </td>
                                            <td style="width: 32%;">
                                                  <asp:TextBox ID="email" runat="server" ReadOnly="True" /></td>
                                            <td style="width: 20%; padding-left: 20px;">
                                                <b>Phone No :</b></td>
                                            <td style="width: 32%;">
                                         <asp:TextBox ID="phone" runat="server" ReadOnly="True" /></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 20%; padding-left: 20px;">
                                                <b>Permanent Address :</b></td>
                                            <td style="width: 32%;">
                                                <asp:TextBox ID="lblpermaadd" runat="server" ReadOnly="True" 
                                                    TextMode="MultiLine"  />
                                            </td>
                                            <td style="width: 20%; padding-left: 20px;">
                                                <b>Corrospondance Address: 
                                            </b> 
                                            </td>
                                            <td style="width: 32%;">
                                        <asp:TextBox ID="lblcorrospandance" runat="server" ReadOnly="True" 
                                                    TextMode="MultiLine" /></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 20%; padding-left: 20px;">
                                                   <b>City :</b></td>
                                            <td style="width: 32%;">
                                                 <asp:TextBox ID="city" runat="server" ReadOnly="True" />
                                            </td>
                                            <td style="width: 20%; padding-left: 20px;">
                                                     <b>State:</b></td>
                                            <td style="width: 32%;">
                                                <asp:TextBox ID="state" runat="server" ReadOnly="True" />  </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 20%; padding-left: 20px;">
                                                     <b>Zip Code :</b></td>
                                            <td colspan="3">
                                                <asp:TextBox ID="zipcode" runat="server" ReadOnly="True" />
                                            </td>
                                        </tr>
                                        <tr style="display:none">
                                            <td style="width: 20%; padding-left: 20px;">
                                                     &nbsp;</td>
                                            <td colspan="3">
                                                
                                                  <asp:TextBox ID="productinfo" runat="server" Text="Fee" ReadOnly="True" />              
                                            </td>
                                        </tr>
                                        </table>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                    <div style="text-align: right; width: 90%; padding-top: 10px; padding-bottom:6px;">
                        <div id ="frmError" runat="server">
                                    </div>
                        <table style="width: 100%">
                            <tr>
                                <td style="width: 70%; text-align: left; vertical-align: top;">
                                
                                    <asp:HiddenField ID="hfCustId" runat="server" />
                                    <asp:Label ID="lblErrMsg" runat="server" CssClass="red_text"></asp:Label>
                                     <input type="hidden" runat="server" id="key" name="key" />
                                     <input type="hidden" runat="server" id="hash" name="hash"  />
                                       <input type="hidden" runat="server" id="txnid" name="txnid" />
                                    <asp:HiddenField ID="hfamount" runat="server" />
                                    <br />
                                    <asp:HiddenField ID="hfamountcheck" runat="server" />
                                     <asp:HiddenField ID="hfcategory" runat="server" />
                                </td>
                                <td style="width: 30%; vertical-align: top;">
                                    <fieldset style="width: 85%; padding: 8px; text-align: center;">
                                        <asp:Button ID="btnSave" runat="server" Text="PROCEED TO PAY" ValidationGroup="aa" 
                                            onclick="btnSave_Click" BackColor="White" Font-Bold="True" 
                                            Font-Size="Large" ForeColor="Red" Height="50px"/>
                                    </fieldset>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center; vertical-align: top;" colspan="2">
                                
                                      <asp:Label ID="Label1" runat="server" CssClass="red_text"></asp:Label>
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






                                    </div>
                                </td>
                                <td style="width: 10px;">
                                    <img src="resources/Images/transparent.gif" alt="" width="10px" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td style="height: 10px">
                    <img alt="" src="resources/images/transparent.gif" width="10px" height="10px" />
                </td>
            </tr>
            <tr>
                <td style="background-color: #204C67; height: 3px;">
                </td>
            </tr>
            <tr>
                <td style="background-color:#F89F15; height: 2px;">
                </td>
            </tr>
            <tr>
                <td class="footer" align="center" style="padding: 10px; text-align: center">
                    All Rights Reserved,Comapny © 2009
                </td>
            </tr>
        </table>
    </div>
    </form>
    	</body>
</html>
