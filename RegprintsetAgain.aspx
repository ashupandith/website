<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="RegprintsetAgain.aspx.cs" Inherits="RegprintsetAgain_BOA" Title="Untitled Page" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>:REGISTRATION-cum-ACKNOWLEDGEMENT SLIP| GOVT. OF PUNJAB:</title>
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            background: transparent;
            font: normal 11px verdana;
            height: 17px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 575px" class="tableborder" align=left id="TABLE1" onclick="return TABLE1_onclick()">
            <tr>
                <td align="center" class="tdborderheadercell" colspan="4" style="height: 4px">
                    REGISTRATION SLIP FOR
                    HARYANA STATE RURAL LIVELIHOODS MISSION, HARYANA</td>
            </tr>
            <tr align="left">
                <td class="tdbordercell" style="width: 1121px;">
                    <span style="font-size: 7pt"><strong>
                    Post Applied</strong></span></td>
                <td class="tdbordercell" colspan="3">
                    <asp:Label ID="lbl_Stream" runat="server" Font-Bold="True" Font-Size="7pt"></asp:Label>
                    &nbsp; &nbsp; &nbsp;&nbsp; <span style="font-size: 7pt"><strong>Registration Number
                        :- &nbsp; &nbsp;&nbsp; </strong>
                        <asp:Label ID="lbl_formno" runat="server" Font-Size="7pt" Font-Bold="True"></asp:Label></span></td>
            </tr>
            <tr align="left">
                <td class="tdbordercell" style="width: 1121px; height: 10px;">
                    <span style="font-size: 7pt"><strong>Applicant's Name</strong></span></td>
                <td class="tdbordercell" colspan="2" style="height: 10px">
                    <asp:Label ID="lbl_name" runat="server" Font-Size="7pt"></asp:Label></td>
                    <td style="text-align: center; width: 148px; border-right: black thin solid; border-top: black thin solid; border-left: black thin solid; border-bottom: black thin solid;" rowspan="4">
                        <asp:Image ID="Image1" runat="server" Height="82px" Width="78px" />
                </td>
            </tr>
            <tr align="left">
                <td class="tdbordercell" style="width: 1121px; height: 7px;">
                    <span style="font-size: 7pt"><strong>
                    Father's Name</strong></span></td>
                <td class="tdbordercell" colspan="2" style="height: 7px">
                    <asp:Label ID="lbl_fname" runat="server" Font-Size="7pt"></asp:Label></td>
            </tr>
            <tr align="left">
                <td class="tdbordercell" style="width: 1121px; height: 4px;">
                    <span style="font-size: 7pt"><strong>
                    Mother's Name</strong></span></td>
                <td class="tdbordercell" colspan="2" style="height: 4px">
                    <asp:Label ID="lbl_mname" runat="server" Font-Size="7pt"></asp:Label></td>
            </tr>
            <tr align="left">
                <td class="tdbordercell" style="width: 1121px; height: 4px">
                    <span style="font-size: 7pt"><strong>Category</strong></span></td>
                <td class="tdbordercell" colspan="2" style="height: 4px">
                    <asp:Label ID="lbl_Category" runat="server" Font-Size="7pt"></asp:Label></td>
            </tr>
            <tr align="left">
                <td class="tdbordercell" colspan="1" style="height: 5px; width: 1121px;">
                    <span style="font-size: 7pt"><strong>
                    Date of Birth</strong></span></td>
                <td class="tdbordercell" colspan="1" style="width: 93px; height: 5px">
                    <span style="font-size: 7pt"><strong>
                    Marital Status</strong></span></td>
                <td class="tdbordercell" colspan="1" style="width: 845px; height: 5px">
                    <span style="font-size: 7pt"><strong>
                    Gender</strong></span></td>
                <td class="tdbordercell" colspan="1" style="height: 5px; width: 148px;">
                    <span style="font-size: 7pt"><strong>
                    &nbsp;District</strong></span></td>
            </tr>
            <tr align="left">
                <td class="tdbordercell" colspan="1" style="height: 3px; width: 1121px;">
                    &nbsp;<asp:Label ID="lbl_DOB" runat="server" Font-Size="7pt"></asp:Label></td>
                <td class="tdbordercell" colspan="1" style="height: 3px; width: 93px;">
                    <asp:Label ID="lbl_marital" runat="server" Font-Size="7pt"></asp:Label></td>
                <td class="tdbordercell" colspan="1" style="height: 3px; width: 845px;">
                    <asp:Label ID="lbl_gender" runat="server" Font-Size="7pt"></asp:Label></td>
                <td class="tdbordercell" colspan="1" style="height: 3px; width: 148px;">
                    <asp:Label ID="lbldistrict" runat="server" Font-Bold="True" Font-Size="7pt"></asp:Label></td>
                
                
                
            </tr>
            <tr align="left">
                <td class="tdbordercell" style="width: 1121px; height: 22px;">
                    <span style="font-size: 7pt"><strong>
                    Permanent Address</strong></span></td>
                <td class="tdbordercell" colspan="3" style="height: 22px">
                    <asp:Label ID="lbl_PA" runat="server" Font-Size="7pt"></asp:Label></td>
            </tr>
            <tr align="left">
                <td class="tdbordercell" style="width: 1121px">
                    <span style="font-size: 7pt"><strong>
                    Correspondance Address</strong></span></td>
                <td class="tdbordercell" colspan="3">
                    <asp:Label ID="lbl_CA" runat="server" Font-Size="7pt"></asp:Label></td>
            </tr>
            <tr align="left">
                <td class="tdbordercell" style="width: 1121px">
                    <span style="font-size: 7pt"><strong>
                    E Mail</strong></span></td>
                <td class="tdbordercell" colspan="3">
                    <asp:Label ID="lbl_email" runat="server" Font-Size="7pt"></asp:Label></td>
            </tr>
            <tr align="left">
                <td class="tdbordercell" style="width: 1121px">
                    <strong>Amount Paid</strong></td>
                <td class="tdbordercell" colspan="3">
                    <asp:Label ID="lblAmount" runat="server"></asp:Label>
                </td>
            </tr>
            <tr align="left">
                <td class="style1" colspan="4">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" 
                        Font-Names="Arial Black" Font-Size="Large" 
                        style="color: #FF0000; font-size: medium;"></asp:Label>
                </td>
            </tr>
            <tr align="left">
                <td class="tdbordercell" style="width: 1121px">
                    <span style="font-size: 7pt"><strong>
                    Qualification</strong></span></td>
                <td class="tdbordercell" colspan="3">
                    
                </td>
            </tr>
            <tr align="left">
               <td class="tdbordercell" colspan="4" style="text-align: justify">
                    <asp:Repeater ID="Repeater1" runat="server" >
                    <HeaderTemplate>
                                    <tr>
                                        <td style="text-align: left;" >
                                          <b>   Exmanation</b>
                                        </td>
                                        <td style="text-align: left;">
                                           <b> Board</b>
                                        </td>
                                        <td style="text-align: left;">
                                            <b> Passing Year</b>
                                        </td>
                                        <td style="text-align: left;">
                                            <b> Marks Obtained</b>
                                        </td>
                                        <td style="text-align: left;">
                                            <b>Total Marks</b>
                                        </td>
                                       <td style="text-align: left;">
                                            <b> Total Percent</b>
                                        </td>
                                        <td  style="text-align: left;">
                                            <b>Divison</b>
                                        </td>
                                    </tr>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr class="heading">
                                       
                                        
                                        <td style="width:35%; text-align: left; vertical-align:top; padding-left:10px;">
                                            <asp:Label ID="lblRate" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Exmanation") %>'></asp:Label>
                                        </td>
                                        <td style="width:30%; text-align: left; vertical-align:top; padding-left:10px;">
                                            <asp:Label ID="lblRqty" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Board") %>'></asp:Label>
                                        </td>
                                        <td style="width:30%; text-align: left; vertical-align:top; padding-left:10px;">
                                            <asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"PassingYear") %>'></asp:Label>
                                        </td>
                                        <td style="width:9%; text-align: left; vertical-align:top; padding-left:10px;">
                                            <asp:Label ID="Label3" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"MarksObtained") %>'></asp:Label>
                                        </td>
                                        <td style="width:9%; text-align: left; vertical-align:top; padding-left:10px;">
                                            <asp:Label ID="lblAqty" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"TotalMarks") %>'></asp:Label>
                                        </td>
                                        <td style="width:5%; text-align: left; vertical-align:top; padding-left:10px;">
                                            <asp:Label ID="lblEstQty" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"TotalPercent") %>'></asp:Label>
                                        </td>
                                        <td style="width:5%; text-align: left; vertical-align:top; padding-left:10px;">
                                            <asp:Label ID="Label4" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Divison") %>'></asp:Label>
                                        </td>
                                       
                                    </tr>
                                </ItemTemplate>
                    </asp:Repeater></td>
            </tr>
        
        
            <tr align="left">
                <td class="tdbordercell" style="width: 1121px">
                       <span style="font-size: 7pt"><strong>
                    Experience</strong></span></td>
                <td class="tdbordercell" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr align="left">
             <td class="tdbordercell" colspan="4" style="text-align: justify">
                    <asp:Repeater ID="Repeater2" runat="server">
                     <HeaderTemplate>
                                    <tr style="font-weight: bold; border:solid 1px #fab; width:100px; word-wrap:break-word;">
                                        <td>
                                           <b> Employer Name</b>
                                        </td>
                                        <td>
                                         <b>  Designation</b>
                                        </td>
                                        <td>
                                           <b> From Date</b>
                                        </td>
                                        <td>
                                           <b> To Date</b>
                                        </td>
                                        <td>
                                           <b> Nature of Duty</b>
                                        </td>
                                        <td>
                                           <b> Salary Drawn</b>
                                        </td>
                                       
                                    </tr>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr style="border:solid 1px #fab; width:100px; word-wrap:break-word;">
                                       
                                        
                                        <td>
                                            <asp:Label ID="lblRate0" runat="server" 
                                                Text='<%#DataBinder.Eval(Container.DataItem,"EmployerName") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblRqty0" runat="server" 
                                                Text='<%#DataBinder.Eval(Container.DataItem,"Designation") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblAqty0" runat="server" 
                                                Text='<%#DataBinder.Eval(Container.DataItem,"FromDate") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"ToDate") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"NatureofDuty") %>'></asp:Label>
                                        </td>
                                         <td>
                                            <asp:Label ID="Label6" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"SalaryDrawn") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                    </asp:Repeater>
               </td>
            </tr>

               <td align="center" class="tdborderheadercell" colspan="4" style="height: 4px">

            <tr align="left">
                <td class="tdbordercell" colspan="4" style="text-align: justify">
                    <strong><span style="font-size: 7pt">DECLARATION
                        <br />
                    </span></strong><span style="font-size: 7pt">1. &nbsp; I have carefully gone through and understood the eligibility/selection
                    criteria as mentioned by the board and do hereby accept the same and certify that i fullfill all the eligibility conditions.<br />
                    2. &nbsp; The information given by me in the application form is true to the best of my knowledge
                    and belief and nothing has been concealed therein and application
                    has been filled by me.<br />
                    3. &nbsp; &nbsp;If the information furnished by me in the application form
                    or furnished later on at any stage , is found to be incorrect/false, the board/Govt.
                    shall have the right to cancel my candidature ans also to take legal action.<br />
                    4. &nbsp; &nbsp;I also undertake not to contact/approach any board officail
                    member or any person claiming rapport with the above said officials of board to
                    exert any outside and refrain from using unfair means for my selection.</span></td>
            </tr>
            </td>
          
                <td class="tdbordercell" colspan="4" style="text-align: right">
                    <strong><span style="color: #808080; font-size: 8pt;">SIGNATURE</span></strong></td>
          
            <tr align="left">
                <td class="tdbordercell" colspan="4" style="text-align: right">
                    <asp:Image ID="Image2" runat="server" Height="20px" Width="200px" />
                </td>
            </tr>
            <tr align="left">
                <td class="tdbordercell" colspan="2" style="text-align: left">
                    <strong><span style="font-size: 7pt">&nbsp;</span></strong></td>
                <td class="tdbordercell" colspan="2" style="text-align: left">
                    <input id="btnPrinttake" type="button" value="Print this page" onClick="window.print()" /></td>
            </tr>
            <tr style="display:none">
                <td class="tdbordercell" colspan="2" style="text-align: left">
                    <asp:Label ID="lblTransactionID" runat="server"></asp:Label>
                    <asp:Label ID="lblTransactionDate" runat="server" ></asp:Label>
                    <asp:Label ID="lblName" runat="server" ></asp:Label>
                    <asp:Label ID="lblRegistration" runat="server" ></asp:Label>
                    <asp:Label ID="lblLevel" runat="server" ></asp:Label>
                     <asp:Label ID="lblCategory" runat="server" ></asp:Label>
                        <asp:Label ID="lblBank" runat="server" ></asp:Label>
                          <asp:Label ID="lblAmounta" runat="server" ></asp:Label>
                </td>
                <td class="tdbordercell" colspan="2" style="text-align: left">
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
