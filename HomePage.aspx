<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link href="css/index-style.css" type="text/css" rel="stylesheet" />
    <title>.::HSRLM -Panchkula::. </title>
    <script type="text/javascript">
        window.history.forward(); function noBack() { window.history.forward(); }
    </script>
    <script language="javascript" type="text/javascript">
        function burstCache() { if (!navigator.onLine) { window.location = "../SessionExpire.htm"; } }
        history.go(1); /* undo user navigation (ex: IE Back Button) */
    </script>
       <style type="text/css">
        #element_to_pop_up
        {
            background-color: lightblue;
            border-radius: 15px;
            color: #000;
            display: none;
            padding: 20px;
            min-width: 400px;
            min-height: 180px;
        }
    
        .red_text
        {
        COLOR:#ff0000;
        FONT-FAMILY:tahoma,arial, Trebuchet MS;
        FONT-SIZE: 11px; 
        font-weight:normal;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server" defaultbutton="btn_Login">
    <div>
    </div>
    <div>
    </div>
    <div class="topdiv">
        <div class="topbuton">
            <span class="theme_base">
               
        </div>
    </div>
    <div class="top_banner">
        <div class="in_banner">
            
             
            <div class="banner_text">
               
            </div>
            <%--<div class="cce_logo">
                <img src="images/cce_logo.png" alt="" />
            </div>--%>
        </div>
        <div class="cleaner">
        </div>
        <div id="menu">
            <div id="menu_in">
                <ul>
                    <li></li>
                    <li></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="cleaner">
    </div>
    <div id="container">
       <div id="ctl00_ContentPlaceHolder1_pnlmain">
            <div class="login_box">
                <div class="login_box_top">
                    <div class="left_conrner">
                    </div>
                    <h3 class="new_candidate">
                        Applicant Registration</h3>
                </div>
                <div class="login_box_mid">
                  <br />
                    <div class="list">
                        <h2>
                            5 Simple Steps to apply online
                        </h2>
                        <ul>
                            <li>Registration Form </li>
                            <li>Fill Your Application Form </li>
                            <li>Fill Your Qulification/Experience/Photo Signature</li>
                            <li>Make Online Payment</li>
                            <li>Print Your Filled Application</li>
                        </ul>
                        <asp:Button ID="btn_Apply" runat="server" Text="" TabIndex="4" 
                            onclick="btn_Apply_Click" />
                    </div>
                </div>
                <div class="login_box_footer">
                    <div class="left_footer">
                    </div>
                </div>
            </div>
            <div class="login_box">
                <div class="login_box_top">
                    <div class="left_conrner">
                    </div>
                    <h3 class="login_candidate">
                        Already Registered Applicants Login Here</h3>
                </div>
                <div class="login_box_mid">
                    <table cellpadding="0" style="width: 100%;" cellspacing="0">
                        <tr>
                            <td colspan="2">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 38%; text-align: right">
                                Registration No. :
                            </td>
                            <td style="width: 62%;">
                                <asp:TextBox Id="txt_REID" type="text" maxlength="20" runat="server" 
                                    tabindex="1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator222" runat="server" 
                                    ControlToValidate="txt_REID" ErrorMessage="*" ForeColor="Red" 
                                    SetFocusOnError="True" ValidationGroup="aaa"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 38%; text-align: right">
                                &nbsp;
                            </td>
                            <td style="width: 62%;">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                Password :
                            </td>
                            <td align="left">
                                 <asp:TextBox ID="txt_Password" type="password" maxlength="12" runat="server"
                                    tabindex="2" TextMode="Password"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator223" runat="server" 
                                     ControlToValidate="txt_Password" ErrorMessage="*" ForeColor="Red" 
                                     SetFocusOnError="True" ValidationGroup="aaa"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                &nbsp;
                            </td>
                            <td align="left">
                                &nbsp;
                                    <asp:Label ID="lblmsg" runat="server" CssClass="red_text"></asp:Label>
                                   
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                            </td>
                               <br />
                            <td>
                            <br />   <br />
                                <asp:Button ID="btn_Login" runat="server" Text="Submit" TabIndex="3" 
                                    onclick="btn_Login_Click" ValidationGroup="aaa"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td align="right">
                                <span class="forgeta"><a href="Forgotpassword.aspx">Forgot Password.?
                            </a></span>&nbsp;
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="login_box_footer">
                    <div class="left_footer">
                    </div>
                </div>
            </div>
            <div class="cleaner">
            </div>
        </div>
          <br />
            <br />
        <center>
            <font color="red" size="2">For any error/query regarding portal, please email us at
                <b>hsrlmonline@gmail.com</b> with your Mobile No. and Registration No. </font>
        </center>
      
        <input type="submit" name="ctl00$ContentPlaceHolder1$btnShowmsgPopup" value="" id="ctl00_ContentPlaceHolder1_btnShowmsgPopup"
            style="display: none" />
        <div id="pnlmsg" class="frame" style="display: none; width: 550px;">
            <div class="overlay2">
                <div class="header">
                    Message!! <a onclick="$find(&#39;mdlPopupmsg&#39;).hide(); return false;" id="ctl00_ContentPlaceHolder1_LinkButton1"
                        class="close2" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$LinkButton1&#39;,&#39;&#39;)">
                    </a>
                </div>
                <div class="body body2" align="left">
                    <br />
                    <span id="ctl00_ContentPlaceHolder1_lblmsg" style="font-weight: normal;"></span>
                    <br />
                    <br />
                </div>
            </div>
        </div>
        <div id="menu" style="width: 100%; height: 32px; color: White;">
            <table cellpadding="0" width="100%" cellspacing="0">
                <tr>
                    <td style="width: 50%; height: 32px; text-align: left">
                        &nbsp; <b></b>
                    </td>
                    <td style="width: 50%; text-align: right;">
                        <b>Email: </b>ashupandith[at]Gmail[dot]com
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div class="cleaner">
    </div>
    <div id="footer">
       
    </div>
    </form>
</html>
