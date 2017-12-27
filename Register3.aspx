  <%@ Page Title="" Language="C#" MasterPageFile="~/HRLMS.master" AutoEventWireup="true"  MaintainScrollPositionOnPostback="true" CodeFile="Register3.aspx.cs" Inherits="Register3" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link type="text/css" href="css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.19.custom.min.js"></script>
<script type="text/javascript">
    $(function () {
        var tid = document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl02_txtPassingYear');
        $(tid).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1945:2017'
        });
        var tid12 = document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl03_txtPassingYear');
        $(tid12).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1945:2017'
        });
        var tid13 = document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl04_txtPassingYear');
        $(tid13).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1945:2017'
        });
        var tid14 = document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl05_txtPassingYear');
        $(tid14).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1945:2017'
        });
        var tid14 = document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl06_txtPassingYear');
        $(tid14).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1945:2017'
        });
        var tid15 = document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl07_txtPassingYear');
        $(tid15).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1945:2017'
        });
        var tid16 = document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl08_txtPassingYear');
        $(tid16).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1945:2017'
        });

        var tid1 = document.getElementById('<%=gvExperience.ClientID%>' + '_ctl02_txtFromDate');
        $(tid1).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1945:2017'
        });

        var tid2 = document.getElementById('<%=gvExperience.ClientID%>' + '_ctl02_txtToDate');
        $(tid2).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1945:2017'
        });

        var tid11 = document.getElementById('<%=gvExperience.ClientID%>' + '_ctl03_txtFromDate');
        $(tid11).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1945:2017'
        });

        var tid21 = document.getElementById('<%=gvExperience.ClientID%>' + '_ctl03_txtToDate');
        $(tid21).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1945:2017'
        });

        var tid111 = document.getElementById('<%=gvExperience.ClientID%>' + '_ctl04_txtFromDate');
        $(tid111).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1945:2017'
        });

        var tid222 = document.getElementById('<%=gvExperience.ClientID%>' + '_ctl04_txtToDate');
        $(tid222).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1945:2017'
        });
        var tid1111 = document.getElementById('<%=gvExperience.ClientID%>' + '_ctl05_txtFromDate');
        $(tid1111).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1945:2017'
        });

        var tid2222 = document.getElementById('<%=gvExperience.ClientID%>' + '_ctl05_txtToDate');
        $(tid2222).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1945:2017'
        });
        var tid11111 = document.getElementById('<%=gvExperience.ClientID%>' + '_ctl06_txtFromDate');
        $(tid11111).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1945:2017'
        });

        var tid22222 = document.getElementById('<%=gvExperience.ClientID%>' + '_ctl06_txtToDate');
        $(tid22222).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1945:2017'
        });

        var tid222222 = document.getElementById('<%=gvExperience.ClientID%>' + '_ctl07_txtToDate');
        $(tid222222).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1945:2017'
        });
    });
</script>
<script type="text/javascript">
    $(document).ready(function () {


        var totper = document.getElementById('<%=hfper1.ClientID%>').value;
        document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl02_txtTotalPercent').value = totper;
        document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl02_txtPassingYear').readOnly = true;
        document.getElementById('<%=gvExperience.ClientID%>' + '_ctl02_txtFromDate').readOnly = true;
        document.getElementById('<%=gvExperience.ClientID%>' + '_ctl02_txtToDate').readOnly = true;


     
            var totper1 = document.getElementById('<%=hfper2.ClientID%>').value;
            document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl03_txtTotalPercent').value = totper1;
          document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl03_txtPassingYear').readOnly = true;

            var totper2 = document.getElementById('<%=hfper3.ClientID%>').value;
            document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl04_txtTotalPercent').value = totper2;
            document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl04_txtPassingYear').readOnly = true;

          
           

            var totper3 = document.getElementById('<%=hfper4.ClientID%>').value;
            document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl05_txtTotalPercent').value = totper3;
            document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl05_txtPassingYear').readOnly = true;
           
            document.getElementById('<%=gvExperience.ClientID%>' + '_ctl03_txtFromDate').readOnly = true;
            document.getElementById('<%=gvExperience.ClientID%>' + '_ctl03_txtToDate').readOnly = true;
            

            var totper4 = document.getElementById('<%=hfper5.ClientID%>').value;
            document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl06_txtTotalPercent').value = totper4;
            document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl06_txtPassingYear').readOnly = true;

            document.getElementById('<%=gvExperience.ClientID%>' + '_ctl04_txtFromDate').readOnly = true;
            document.getElementById('<%=gvExperience.ClientID%>' + '_ctl04_txtToDate').readOnly = true;
            document.getElementById('<%=gvExperience.ClientID%>' + '_ctl05_txtFromDate').readOnly = true;
            document.getElementById('<%=gvExperience.ClientID%>' + '_ctl05_txtToDate').readOnly = true;

            var totper5 = document.getElementById('<%=hfper6.ClientID%>').value;
            document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl07_txtTotalPercent').value = totper5;
          document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl07_txtPassingYear').readOnly = true;

            var totper6 = document.getElementById('<%=hfper7.ClientID%>').value;
            document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl08_txtTotalPercent').value = totper6;
            document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl08_txtPassingYear').readOnly = true;
       
            document.getElementById('<%=gvExperience.ClientID%>' + '_ctl03_txtFromDate').readOnly = true;
            document.getElementById('<%=gvExperience.ClientID%>' + '_ctl03_txtToDate').readOnly = true;
            document.getElementById('<%=gvExperience.ClientID%>' + '_ctl04_txtFromDate').readOnly = true;
            document.getElementById('<%=gvExperience.ClientID%>' + '_ctl04_txtToDate').readOnly = true;
            document.getElementById('<%=gvExperience.ClientID%>' + '_ctl05_txtFromDate').readOnly = true;
            document.getElementById('<%=gvExperience.ClientID%>' + '_ctl05_txtToDate').readOnly = true;
            document.getElementById('<%=gvExperience.ClientID%>' + '_ctl06_txtFromDate').readOnly = true;
            document.getElementById('<%=gvExperience.ClientID%>' + '_ctl06_txtToDate').readOnly = true;
            document.getElementById('<%=gvExperience.ClientID%>' + '_ctl07_txtFromDate').readOnly = true;
            document.getElementById('<%=gvExperience.ClientID%>' + '_ctl07_txtToDate').readOnly = true;
            document.getElementById('<%=gvExperience.ClientID%>' + '_ctl08_txtFromDate').readOnly = true;
            document.getElementById('<%=gvExperience.ClientID%>' + '_ctl08_txtToDate').readOnly = true;
        
    });
</script>


<script type="text/javascript">
    function Educalculate(obj) {
        var tmarks1 = document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl02_txtTotalMarks').value;
        var marks1 = document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl02_txtMarksObtained').value;
         if (marks1 != '' && tmarks1 != '') {
           var ObtMark1 = parseInt(marks1);
           var TotMark1 = parseInt(tmarks1);
              if (ObtMark1 <= TotMark1) {
               var c = (marks1 * 100 / tmarks1).toFixed(2);
             
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl02_txtTotalPercent').value = c;
               document.getElementById('<%=hfper1.ClientID%>').value = c;
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl02_txtTotalPercent').setAttribute('readOnly', 'true');
           }
           else {
               alert('Obtained marks must be less than Total Marks.');
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl02_txtTotalMarks').value = "";
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl02_txtMarksObtained').value = "";
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl02_txtTotalMarks').focus();
           } 
       }

       var tmarks2 = document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl03_txtTotalMarks').value;
       var marks2 = document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl03_txtMarksObtained').value;
       if (marks2 != '' && tmarks2 != '') {
           var ObtMark2 = parseInt(marks2);
           var TotMark2 = parseInt(tmarks2);
          if (ObtMark2 <= TotMark2) {
               var c = (marks2 * 100 / tmarks2).toFixed(2);
              
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl03_txtTotalPercent').value = c;
               document.getElementById('<%=hfper2.ClientID%>').value = c;
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl03_txtTotalPercent').setAttribute('readOnly', 'true');
           }
           else {
               alert('Obtained marks must be less than Total Marks.');
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl03_txtTotalMarks').value = "";
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl03_txtMarksObtained').value = "";
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl03_txtTotalMarks').focus();
           }
       }


       var tmarks3 = document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl04_txtTotalMarks').value;
       var marks3 = document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl04_txtMarksObtained').value;
       if (marks3 != '' && tmarks3 != '') {
           var ObtMark3 = parseInt(marks3);
           var TotMark3 = parseInt(tmarks3);
           if (ObtMark3 <= TotMark3) {
               var c = (marks3 * 100 / tmarks3).toFixed(2);
              
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl04_txtTotalPercent').value = c;
               document.getElementById('<%=hfper3.ClientID%>').value = c;
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl04_txtTotalPercent').setAttribute('readOnly', 'true');
           }
           else {
               alert('Obtained marks must be less than Total Marks.');
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl04_txtTotalMarks').value = "";
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl04_txtMarksObtained').value = "";
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl04_txtTotalMarks').focus();
           }
       }


       var tmarks4 = document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl05_txtTotalMarks').value;
       var marks4 = document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl05_txtMarksObtained').value;
       if (marks4 != '' && tmarks4 != '') {
           var ObtMark4 = parseInt(marks4);
           var TotMark4 = parseInt(tmarks4);
           if (ObtMark4 <= TotMark4) {
               var c = (marks4 * 100 / tmarks4).toFixed(2);
              
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl05_txtTotalPercent').value = c;
               document.getElementById('<%=hfper4.ClientID%>').value = c;
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl05_txtTotalPercent').setAttribute('readOnly', 'true');
           }
           else {
               alert('Obtained marks must be less than Total Marks.');
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl05_txtTotalMarks').value = "";
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl05_txtMarksObtained').value = "";
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl05_txtTotalMarks').focus();
           }
       }

       var tmarks5 = document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl06_txtTotalMarks').value;
       var marks5 = document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl06_txtMarksObtained').value;
       if (marks5 != '' && tmarks5 != '') {
           var ObtMark5 = parseInt(marks5);
           var TotMark5 = parseInt(tmarks5);
           if (ObtMark5 <= TotMark5) {
               var c = (marks5 * 100 / tmarks5).toFixed(2);
              
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl06_txtTotalPercent').value = c;
               document.getElementById('<%=hfper5.ClientID%>').value = c;
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl06_txtTotalPercent').setAttribute('readOnly', 'true');
           }
           else {
               alert('Obtained marks must be less than Total Marks.');
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl06_txtTotalMarks').value = "";
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl06_txtMarksObtained').value = "";
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl06_txtTotalMarks').focus();
           }
       }

       var tmarks6 = document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl07_txtTotalMarks').value;
       var marks6 = document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl07_txtMarksObtained').value;
       if (marks6 != '' && tmarks6 != '') {
           var ObtMark6 = parseInt(marks6);
           var TotMark6 = parseInt(tmarks6);
           if (ObtMark6 <= TotMark6) {
               var c = (marks6 * 100 / tmarks6).toFixed(2);

               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl07_txtTotalPercent').value = c;
               document.getElementById('<%=hfper6.ClientID%>').value = c;
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl07_txtTotalPercent').setAttribute('readOnly', 'true');
           }
           else {
               alert('Obtained marks must be less than Total Marks.');
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl07_txtTotalMarks').value = "";
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl07_txtMarksObtained').value = "";
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl07_txtTotalMarks').focus();
           }
       }

       var tmarks5 = document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl08_txtTotalMarks').value;
       var marks5 = document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl08_txtMarksObtained').value;
       if (marks5 != '' && tmarks5 != '') {
           var ObtMark5 = parseInt(marks5);
           var TotMark5 = parseInt(tmarks5);
           if (ObtMark5 <= TotMark5) {
               var c = (marks5 * 100 / tmarks5).toFixed(2);

               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl08_txtTotalPercent').value = c;
               document.getElementById('<%=hfper7.ClientID%>').value = c;
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl08_txtTotalPercent').setAttribute('readOnly', 'true');
           }
           else {
               alert('Obtained marks must be less than Total Marks.');
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl08_txtTotalMarks').value = "";
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl08_txtMarksObtained').value = "";
               document.getElementById('<%=grvStudentDetails.ClientID%>' + '_ctl08_txtTotalMarks').focus();
           }
       }
        
    }
</script>

<script type="text/javascript">
function ValidatePhoto() {
        var msg = "";
        var bIsValid = true;
        var uploadedFile = document.getElementById('<%=FileUpload1.ClientID %>');
        if (uploadedFile.files[0].size > 51200 || uploadedFile.files[0].size < 20480) // greater than 512KB
        {
            uploadedFile.outerHTML = uploadedFile.outerHTML;
            alert('File size is not as the prescribe size.');
            bIsValid = false;
        }
        //On Success
        return true;
    }
    
    function ValidateSignature() {
        var msg = "";
        var bIsValid = true;
        var uploadedFile = document.getElementById('<%=FileUpload2.ClientID %>');
        if (uploadedFile.files[0].size > 20480 || uploadedFile.files[0].size < 10240) // greater than 512KB
        {
            uploadedFile.outerHTML = uploadedFile.outerHTML;
            alert('File size is not as the prescribe size.');
            bIsValid = false;
        }
        //On Success
        return true;
    }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;
        border: 1px solid #6CC5CB" width="100%" id="AutoNumber5">
          <tr  style="background-color:#19c78b; text-align:center; font-size:larger" class="whitetext" >
            <td >
               Application Detail
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
              <td align="left" style="text-align: center">
                <asp:Label ID="Label1" runat="server" Text="Step 1" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" ForeColor="#00CC00" Height="50px"></asp:Label>
                    <asp:Label
                        ID="Label9" runat="server" Text="===>" ForeColor="#00CC00" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" Height="50px"></asp:Label>
                &nbsp;<asp:LinkButton ID="LinkButton1" runat="server"  Font-Italic="True" 
                      Font-Size="Larger" ForeColor="#00CC00" onclick="LinkButton1_Click" 
                      Font-Bold="True" Height="50px">Step 2</asp:LinkButton>
                    <asp:Label
                        ID="Label8" runat="server" Text="===>" ForeColor="#009933" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" Height="50px"></asp:Label>
                  <asp:Label ID="Label3" 
                    runat="server" Text="Step 3" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" Height="50px"></asp:Label>
                    <asp:Label
                        ID="Label7" runat="server" Text="===>" ForeColor="Red" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" Height="50px"></asp:Label>
                  <asp:Label
                        ID="Label4" runat="server" Text="Step 4" ForeColor="Red" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" Height="50px"></asp:Label>
                    <asp:Label
                        ID="Label6" runat="server" Text="===>" ForeColor="Red" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" Height="50px"></asp:Label>
                  <asp:Label
                        ID="Label5" runat="server" Text="Step 5" ForeColor="Red" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" Height="50px"></asp:Label>
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
                                            <td colspan="3">
                                                 <asp:Label ID="lbldob" runat="server" ></asp:Label>
                                                 <asp:Label ID="lblpass" runat="server" Visible="False"></asp:Label>
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
     
   <tr id="trView" runat="server">
            <td align="center">
                <div>
                    <div style="width: 98%;">
                        <fieldset style="width: 98%; text-align: left;">
                        <legend>QUALIFICATION DETAILS</legend>
                    
                           
                           <table class="gen" style="width: 100%; text-align: left;" border="1" cellpadding="2px"
                                        cellspacing="1">
                                <tr><td align="center"><asp:Label ID="mmm" runat="server" Font-Bold="true" Font-Size="Larger" Font-Italic="true" ForeColor="Red" Text="10, +2 and Gradutaion are compulsary, otherwise your application will be rejected." ></asp:Label></td></tr>
                                <tr><td align="center">
                                    <asp:GridView ID="gvDetailsqulification" runat="server" 
                                        AutoGenerateColumns="false" CssClass="Gridview" 
                                        DataKeyNames="SNo,RegestrationNumber" 
                                        onrowdeleting="gvDetailsqulification_RowDeleting">
                                        <Columns>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="imgbtnDelete0" runat="server" CommandName="Delete" 
                                                        Height="20px" ImageUrl="~/Images/delete.jpg" Text="Edit" ToolTip="Delete" 
                                                        Width="20px" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Exmanation" HeaderStyle-Width="150px" HeaderStyle-VerticalAlign="Middle">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblExmanation" runat="server" Text='<%#Eval("Exmanation") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Disipline" HeaderStyle-Width="100px"  HeaderStyle-VerticalAlign="Middle">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblStream" runat="server" Text='<%#Eval("Stream") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Board" HeaderStyle-Width="100px" HeaderStyle-VerticalAlign="Middle">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblBoard" runat="server" Text='<%#Eval("Board") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Subject" HeaderStyle-Width="100px" HeaderStyle-VerticalAlign="Middle">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSubject" runat="server" Text='<%#Eval("Subject") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="PassingYear" HeaderStyle-Width="100px" HeaderStyle-VerticalAlign="Middle">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblPassingYear" runat="server" 
                                                        Text='<%#Eval("PassingYear") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Marks Obtained" HeaderStyle-Width="100px" HeaderStyle-VerticalAlign="Middle">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblMarksObtained" runat="server" 
                                                        Text='<%#Eval("MarksObtained") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Total Marks" HeaderStyle-Width="100px" HeaderStyle-VerticalAlign="Middle">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblTotalMarks" runat="server" Text='<%#Eval("TotalMarks") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Total Percent" HeaderStyle-Width="100px" HeaderStyle-VerticalAlign="Middle">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblTotalPercent" runat="server" 
                                                        Text='<%#Eval("TotalPercent") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Divison" HeaderStyle-Width="100px" HeaderStyle-VerticalAlign="Middle">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblDivison" runat="server" Text='<%#Eval("Divison") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                    <br />
                                    <asp:Label ID="lblQulification" runat="server"></asp:Label>
                                    </td></tr>
                                <tr>
                               
                                    <td>
                                        <asp:GridView ID="grvStudentDetails" runat="server" AutoGenerateColumns="False" 
                                            CellPadding="4" GridLines="Vertical" OnRowDeleting="grvStudentDetails_RowDeleting" 
                                            ShowFooter="True"   Width="100%"  onrowdatabound="grvStudentDetails_RowDataBound" 
                                            >
                                            <Columns>
                                           
                                                <asp:TemplateField HeaderText="Exmanation" HeaderStyle-Width="150px" HeaderStyle-VerticalAlign="Middle">
                                                  <ItemStyle HorizontalAlign="Center"  VerticalAlign="Top"/>
                                                    <ItemTemplate >
                                                  
                                                        <asp:DropDownList ID="ddlexmanation" runat="server" width="145px">
                                                        </asp:DropDownList>
                                                        <asp:CompareValidator ID="rfvexmanation" runat="server" 
                                                            ControlToValidate="ddlexmanation" Display="Dynamic" 
                                                            ErrorMessage="Select Valid Qualification" ForeColor="#804000" 
                                                            Operator="NotEqual" ValidationGroup="gvDetailsvalidaiton" ValueToCompare="0">*</asp:CompareValidator>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                      <asp:TemplateField HeaderText="Discipline" HeaderStyle-Width="100px"  HeaderStyle-VerticalAlign="Middle">
                                                    <ItemStyle HorizontalAlign="Center"  VerticalAlign="Top"/>
                                                    <ItemTemplate>
                                                    
                                                        <asp:TextBox ID="txtstream" CssClass="inputaa" runat="server" MaxLength="50"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldVvbvgalidator2" runat="server" 
                                                            ControlToValidate="txtstream" ErrorMessage="*" SetFocusOnError="True" 
                                                            ValidationGroup="gvDetailsvalidaiton"></asp:RequiredFieldValidator>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Board" HeaderStyle-Width="100px" HeaderStyle-VerticalAlign="Middle">
                                                      <ItemStyle HorizontalAlign="Center"  VerticalAlign="Top"/>
                                                    <ItemTemplate>
                                                  
                                                        <asp:TextBox ID="txtBoard" runat="server" CssClass="inputaa" MaxLength="50" />
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                            ControlToValidate="txtBoard" ErrorMessage="*" SetFocusOnError="True" 
                                                            ValidationGroup="gvDetailsvalidaiton"></asp:RequiredFieldValidator>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Subject" HeaderStyle-Width="100px" HeaderStyle-VerticalAlign="Middle">
                                                     <ItemStyle HorizontalAlign="Center"  VerticalAlign="Top"/>
                                                    <ItemTemplate>
                                                  
                                                        <asp:TextBox ID="txtSubject" runat="server" CssClass="inputaa" 
                                                            MaxLength="250" />
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                            ControlToValidate="txtSubject" ErrorMessage="*" SetFocusOnError="True" 
                                                            ValidationGroup="gvDetailsvalidaiton"></asp:RequiredFieldValidator>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Passing Date" HeaderStyle-Width="100px" HeaderStyle-VerticalAlign="Middle">
                                                    <ItemStyle HorizontalAlign="Center"  VerticalAlign="Top"/>
                                                    <ItemTemplate>
                                                  
                                                        <asp:TextBox ID="txtPassingYear" runat="server" CssClass="inputaa" 
                                                            MaxLength="10"  />
                                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator54" runat="server" 
                                                            ControlToValidate="txtPassingYear" ErrorMessage="*" 
                                                            ValidationGroup="gvDetailsvalidaiton"></asp:RequiredFieldValidator>
                    <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtendcxer2222" runat="server" TargetControlID="txtPassingYear" FilterType="Custom" ValidChars="0123456789/">
                    </cc1:FilteredTextBoxExtender>
                                             <asp:RegularExpressionValidator ID="RegularExpressionValidaator1" runat="server" ErrorMessage="Invalid Date Format." 
                                                ValidationExpression="^([0-9]{1,2})[./-]+([0-9]{1,2})[./-]+([0-9]{2}|[0-9]{4})$" ControlToValidate="txtPassingYear"
                                                ForeColor="Red" SetFocusOnError="True" ValidationGroup="Submit"></asp:RegularExpressionValidator> 
                                   </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Marks Obtained" HeaderStyle-Width="50px" HeaderStyle-VerticalAlign="Middle">
                                                     <ItemStyle HorizontalAlign="Center"  VerticalAlign="Top"/>
                                                    <ItemTemplate>
                                                  
                                                        <asp:TextBox ID="txtMarksObtained" runat="server" CssClass="inputaa" 
                                                            MaxLength="5" />
                                                        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server" 
                                                            TargetControlID="txtMarksObtained" ValidChars="1234567890">
                                                        </cc1:FilteredTextBoxExtender>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                            ControlToValidate="txtMarksObtained" ErrorMessage="*" 
                                                            ValidationGroup="gvDetailsvalidaiton"></asp:RequiredFieldValidator>
                                                        &nbsp;
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Total Marks" HeaderStyle-Width="50px" HeaderStyle-VerticalAlign="Middle">
                                                      <ItemStyle HorizontalAlign="Center"  VerticalAlign="Top"/>
                                                    <ItemTemplate>
                                                  <div onchange="Educalculate(this)">
                                                        <asp:TextBox ID="txtTotalMarks" runat="server" CssClass="inputaa" 
                                                            MaxLength="10" />
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorr4" runat="server" 
                                                            ControlToValidate="txtTotalMarks" ErrorMessage="*" 
                                                            ValidationGroup="gvDetailsvalidaiton"></asp:RequiredFieldValidator>
                                                        &nbsp;
                                                        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" 
                                                            TargetControlID="txtTotalMarks" ValidChars="1234567890/">
                                                        </cc1:FilteredTextBoxExtender>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Percent" HeaderStyle-Width="50px" HeaderStyle-VerticalAlign="Middle">
                                                      <ItemStyle HorizontalAlign="Center"  VerticalAlign="Top"/>
                                                    <ItemTemplate>
                                                  
                                                        <asp:TextBox ID="txtTotalPercent" runat="server" CssClass="inputaa" 
                                                            MaxLength="3" Enabled="False" />
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" 
                                                            ControlToValidate="txtTotalPercent" ErrorMessage="*" 
                                                            ValidationGroup="gvDetailsvalidaiton"></asp:RequiredFieldValidator>
                                                        &nbsp;
                                                        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" 
                                                            TargetControlID="txtTotalPercent" ValidChars="1234567890">
                                                        </cc1:FilteredTextBoxExtender>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Divison" HeaderStyle-Width="50px" HeaderStyle-VerticalAlign="Middle">
                                                     <ItemStyle HorizontalAlign="Center"  VerticalAlign="Top"/>
                                                    <ItemTemplate>
                                                   
                                                        <asp:TextBox ID="txtDivison" runat="server" width="50px" MaxLength="1" />
                                                        <cc1:FilteredTextBoxExtender ID="FilteredTextBodfdfxExtender7" runat="server" 
                                                            TargetControlID="txtDivison" ValidChars="1234567890">
                                                        </cc1:FilteredTextBoxExtender>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                            ControlToValidate="txtDivison" ErrorMessage="*" InitialValue="Select" 
                                                            ValidationGroup="gvDetailsvalidaiton"></asp:RequiredFieldValidator>
                                                    </ItemTemplate>
                                                   
                                                   
                                              
                                                 <FooterTemplate>
                                                        <asp:Button ID="ButtonAdd" runat="server" OnClick="ButtonAdd_Click" 
                                                            Text="Add Next" ValidationGroup="gvDetailsvalidaiton" />
                                                    </FooterTemplate></asp:TemplateField>
                                                 
                                            </Columns>
                                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <RowStyle BackColor="#EFF3FB" />
                                            <EditRowStyle BackColor="#2461BF" />
                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <AlternatingRowStyle BackColor="White" />
                                        </asp:GridView>
                                    </td>
                                </tr>
                             </table>
                            </fieldset>
                              </div></div>
                              </td>

                                </tr>

    <tr id="trAddressasdasd" runat="server">
            <td>
                &nbsp;</td>

                                </tr>


    <tr id="trAddresswqwq" runat="server">
            <td>
                &nbsp;</td>

                                </tr>


    <tr id="trAddress" runat="server">
            <td>
                <div align="center">
                    <div style="width: 98%;">
                        <fieldset style="width: 98%; text-align: center;">
                        <legend>EXPERIENCE DETAIL</legend>
                     
                           <table class="gen" style="width: 100%; text-align: left;" border="1" cellpadding="2px"
                                        cellspacing="1">
                                <tr>
                                    <td>
                

                                        <asp:GridView ID="gvDetailsExp" runat="server" AutoGenerateColumns="false" 
                                            CssClass="Gridview" DataKeyNames="SNo,RegestrationNumber" 
                                            onrowdeleting="gvDetails_RowDeleting" 
                                          >
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:ImageButton ID="imgbtnDelete" runat="server" CommandName="Delete" 
                                                            Height="20px" ImageUrl="~/Images/delete.jpg" Text="Edit" ToolTip="Delete" 
                                                            Width="20px" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Employer Name" HeaderStyle-Width="150px">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblitemUsr" runat="server" Text='<%#Eval("EmployerName") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Designation" HeaderStyle-Width="150px">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblcity" runat="server" Text='<%#Eval("Designation") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="From" HeaderStyle-Width="100px">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblFromDate" runat="server" Text='<%#Eval("FromDate") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="To" HeaderStyle-Width="100px">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblToDate" runat="server" Text='<%#Eval("ToDate") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Contact Person Name" HeaderStyle-Width="100px">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblTotalYear" runat="server" Text='<%#Eval("TotalYear") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Contact number" HeaderStyle-Width="100px">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblTotalMonths" runat="server" 
                                                            Text='<%#Eval("TotalMonths") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Email ID" HeaderStyle-Width="100px">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblTotalDays" runat="server" Text='<%#Eval("TotalDays") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Nature of Duty" HeaderStyle-Width="100px">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblNatureofDuty" runat="server" 
                                                            Text='<%#Eval("NatureofDuty") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Salary Drawn" HeaderStyle-Width="100px">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblSalaryDrawn" runat="server" 
                                                            Text='<%#Eval("SalaryDrawn") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <br />
                                        <asp:Label ID="lblexperience" runat="server"></asp:Label>
                

                            </td>
                                </tr>
                                  <tr>
                                  <td>
                                  
                                  <asp:GridView ID="gvExperience" runat="server" ShowFooter="True" AutoGenerateColumns="False" CellPadding="4" GridLines="Vertical" OnRowDeleting="gvExperience_RowDeleting"
                             Width="100%" Style="text-align: left"  >
                <Columns>
                    <asp:TemplateField HeaderText="Organization" HeaderStyle-Width="120px">
                      <ItemStyle HorizontalAlign="Center"  VerticalAlign="Top"/>
                        <ItemTemplate >
                           <asp:TextBox ID="txtEmployerName" runat="server" CssClass="inputaa" />
                        <asp:RequiredFieldValidator ID="rfvEmployerName" runat="server" ControlToValidate="txtEmployerName" Text="*" ValidationGroup="validaiton"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Designation" HeaderStyle-Width="120px">
                      <ItemStyle HorizontalAlign="Center"  VerticalAlign="Top"/>
                        <ItemTemplate >
                             <asp:TextBox ID="txtDesignation" runat="server" CssClass="inputaa"/>
                         <asp:RequiredFieldValidator ID="rfvDesignation" runat="server" ControlToValidate="txtDesignation" Text="*" ValidationGroup="validaiton"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="From" HeaderStyle-Width="100px">
                        <ItemStyle HorizontalAlign="Center"  VerticalAlign="Top"/>
                        <ItemTemplate  >
                             <asp:TextBox ID="txtFromDate" runat="server" CssClass="inputsmall"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator111" runat="server" ControlToValidate="txtFromDate"
                        CssClass="errorlbl" Display="Dynamic" ErrorMessage="From Date  is Required"
                        ForeColor="" SetFocusOnError="True" Width="16px" ValidationGroup="d">*</asp:RequiredFieldValidator>
                        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2222" runat="server" TargetControlID="txtFromDate" FilterType="Custom" ValidChars="0123456789/">
                    </cc1:FilteredTextBoxExtender>
                    <asp:RegularExpressionValidator ID="RegularExxpressionValidator1" runat="server" ErrorMessage="Invalid Date Format." 
                                    ValidationExpression="^([0-9]{1,2})[./-]+([0-9]{1,2})[./-]+([0-9]{2}|[0-9]{4})$" ControlToValidate="txtFromDate"
                                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="Submit"></asp:RegularExpressionValidator> 
                     <asp:RequiredFieldValidator ID="rfvFromDate" runat="server" ControlToValidate="txtFromDate" Text="*" ValidationGroup="validaiton"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="To" HeaderStyle-Width="120px">
                        <ItemStyle HorizontalAlign="Center"  VerticalAlign="Top"/>
                        <ItemTemplate  >
                           <asp:TextBox ID="txtToDate" runat="server" CssClass="inputsmall" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator112" runat="server" ControlToValidate="txtToDate"
                        CssClass="errorlbl" Display="Dynamic" ErrorMessage="To date is Required"
                        ForeColor="" SetFocusOnError="True" Width="16px" ValidationGroup="validaiton">*</asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="ReguularExpressionValidator1" runat="server" ErrorMessage="Invalid Date Format." 
                                    ValidationExpression="^([0-9]{1,2})[./-]+([0-9]{1,2})[./-]+([0-9]{2}|[0-9]{4})$" ControlToValidate="txtToDate"
                                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="Submit"></asp:RegularExpressionValidator> 
                       <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender233" runat="server" TargetControlID="txtToDate" FilterType="Custom" ValidChars="0123456789/">
                    </cc1:FilteredTextBoxExtender>
                      
                        </ItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Contact Person Name" HeaderStyle-Width="150px">
                        <ItemStyle HorizontalAlign="Center"  VerticalAlign="Top"/>
                        <ItemTemplate >
                             <asp:TextBox ID="txtTotalYear" runat="server" MaxLength="50" CssClass="inputaa"/>
                          <asp:RequiredFieldValidator ID="rfvTotalYear" runat="server" ControlToValidate="txtTotalYear" Text="*" ValidationGroup="dd"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField  HeaderText="Contact number" HeaderStyle-Width="100px">
                       <ItemStyle HorizontalAlign="Center"  VerticalAlign="Top"/>
                        <ItemTemplate >
                    <asp:TextBox ID="txtTotalMonths" runat="server" MaxLength="10" CssClass="inputaa"/>
                          <asp:RequiredFieldValidator ID="rfvTotalMonths" runat="server" ControlToValidate="txtTotalMonths" Text="*" ValidationGroup="dd"/>
                          <cc1:FilteredTextBoxExtender ID="FilteredTdextBoxExtender1" runat="server" TargetControlID="txtTotalMonths" ValidChars="1234567890"></cc1:FilteredTextBoxExtender>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Email ID" HeaderStyle-Width="100px">
                        <ItemStyle HorizontalAlign="Center"  VerticalAlign="Top"/>
                        <ItemTemplate>
                           <asp:TextBox ID="txtTotalDays" runat="server" MaxLength="50" CssClass="inputaa"/>
                          <asp:RequiredFieldValidator ID="rfvTotalDays" runat="server" ControlToValidate="txtTotalDays" Text="*" ValidationGroup="dd"/>
                                        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2444" runat="server" TargetControlID="txtTotalDays" ValidChars="asdfghjklqwertyuiopzxcvbnm@."></cc1:FilteredTextBoxExtender>
                                         <asp:RegularExpressionValidator ID="REVddpemail" runat="server" ControlToValidate="txtTotalDays" Display="Dynamic" 
                    ErrorMessage="Enter Valid E-Mail Address" ForeColor="#804000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Nature of Duty" HeaderStyle-Width="100px">
                       <ItemStyle HorizontalAlign="Center"  VerticalAlign="Top"/>
                        <ItemTemplate>
                           <asp:TextBox ID="txtNatureofDuty" runat="server" MaxLength="50" CssClass="inputaa" TextMode="MultiLine" Width="100px" Height="60px" />
                          <asp:RequiredFieldValidator ID="rfvNatureofDuty" runat="server" ControlToValidate="txtNatureofDuty" Text="*" ValidationGroup="validaiton"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Salary Drawn" HeaderStyle-Width="100px">
                        <ItemStyle HorizontalAlign="Center"  VerticalAlign="Top"/>
                        <ItemTemplate>
                                <asp:TextBox ID="txtSalaryDrawn" runat="server" MaxLength="8" CssClass="inputaa"/>
                          <asp:RequiredFieldValidator ID="rfvSalaryDrawn" runat="server" ControlToValidate="txtSalaryDrawn" Text="*" ValidationGroup="validaiton"/>
                          <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="txtSalaryDrawn" ValidChars="1234567890"></cc1:FilteredTextBoxExtender>
                        </ItemTemplate>
                        <FooterStyle HorizontalAlign="Right" />
                        <FooterTemplate>
                        <ItemStyle HorizontalAlign="Center"  VerticalAlign="Top"/>
                            <asp:Button ID="ButtonAddExp" runat="server" Text="Add Next"  OnClick="ButtonAddExp_Click" ValidationGroup="validaiton" />
                        </FooterTemplate>
                    </asp:TemplateField>
                   
                
                   
               
                </Columns>
               
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
              
                <RowStyle BackColor="#EFF3FB" />
                <EditRowStyle BackColor="#2461BF" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
                                  
                                  </td>
                                  
                                  
                                  </tr>
                             </table>
                             </fieldset>
                              </div></div>
                              </td>

                                </tr>

   <tr id="tr1" runat="server">
             <td align="center">
                <div>
                    <div style="width: 98%;">
                        <fieldset style="width: 98%; text-align: left;">
                        <legend>Upload Photograph/signature </legend>
                         <div style="padding: 10px 10px 5px 10px; text-align: center;">
                                <div>
                                    <table class="gen" style="width: 95%; text-align: left;" border="0" cellpadding="4px" cellspacing="0">
                                       <tr>   <td style="height: 25%; color: #19c78b;" align="right" colspan="6">
                                                   <ul>
                                                       <li style="text-align: left">If Photo / Signature is not loaded in appropriate format, your application is liable
                                                to get rejected</li>
                                                         
                                               <li style="text-align: left"> Allowed Photo Size - 20KB to 50 KB File Type : *.jpeg, *.gif
                                                    Allowed Signature Size - 10KB to 20 KB File Type : *.jpeg, *.gif </li>
                                                   </ul>
                                            </td>
                                        </tr>
                                       <tr>
                                                             
                                              <td  style="width: 40%; padding-left: 20px;" align="right" colspan="2">
                                                  Upload Photo</td>
                                                             
                                              <td  style="width: 40%; padding-left: 20px;" align="right" colspan="2">
                                                
                                                <asp:FileUpload ID="FileUpload1" runat="server" onchange="return ValidatePhoto();"/>
                                           
                                                </td>
                                                             
                                             <td style="padding-left: 20px;" colspan="2" rowspan="3">
                                                
                                                  <asp:Image ID="Image1" runat="server" Height="100px" Width="150px" />
                                           
                                                </td>
                                        </tr>
                                       <tr>
                                                             
                                              <td  style="width: 40%; padding-left: 20px;" align="right" colspan="2">
                                                   Upload Signature</td>
                                                             
                                              <td  style="width: 40%; padding-left: 20px;" align="right" colspan="2">
                                                
                                                <asp:FileUpload ID="FileUpload2" runat="server" onchange="return ValidateSignature();"/>
                                              
                                               </td>
                                        </tr>
                                       <tr>
                                                             
                                              <td  style="width: 40%; padding-left: 20px;" align="right" colspan="2">
                                                   &nbsp;</td>
                                                             
                                              <td  style="width: 40%; padding-left: 20px;" align="right" colspan="2">
                                                
                                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                                    Text="Upload Images" Visible="False" />
                                              
                                               </td>
                                        </tr>
                                       <tr>
                                                             
                                              <td  style="width: 40%; padding-left: 20px;" align="right" colspan="2">
                                                   &nbsp;</td>
                                                             
                                              <td  style="width: 40%; padding-left: 20px;" align="right" colspan="2">
                                                   &nbsp;</td>
                                              <td style="width: 60%; padding-left: 20px;" colspan="2">
                                                
                                                  <asp:Image ID="Image2" runat="server" Width="150px" Height="25px" />
                                              
                                               </td>
                                        </tr>
                                       <tr>
                                                             
                                               <td  style="padding-left: 20px; text-align: center;" align="right">
                                    <asp:Label ID="lblErrMsg" runat="server" CssClass="red_text"></asp:Label><br />
                                               </td>
                                                             
                                               <td  style="padding-left: 20px; text-align: center;" align="right" colspan="2">
                                    <asp:Label ID="lblErrMsg0" runat="server" CssClass="red_text"></asp:Label><br />
                                    <asp:Label ID="lblErrMsg2" runat="server" CssClass="red_text"></asp:Label>
                                               </td>
                                                             
                                               <td  style="padding-left: 20px; text-align: center;" align="right" colspan="2">
                                    <asp:Label ID="lblErrMsg1" runat="server" CssClass="red_text"></asp:Label><br />
                                    <asp:Label ID="lblErrMsg3" runat="server" CssClass="red_text"></asp:Label>
                                               </td>
                                                             
                                               <td  style="padding-left: 20px; text-align: center;" align="right">
                                    <asp:Label ID="lblErrMsg5" runat="server" CssClass="red_text"></asp:Label><br />
                                    <asp:Label ID="lblErrMsg4" runat="server" CssClass="red_text"></asp:Label>
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
                  <div style="text-align: right; width: 90%; padding-top: 10px; padding-bottom:6px;">
                        <table style="width: 100%">
                            <tr>
                                <td style="width: 70%; text-align: left; vertical-align: top;">
                                    <asp:HiddenField ID="hfregistration" runat="server" />
                                    <asp:HiddenField ID="hfpost" runat="server" />
                                    <asp:HiddenField ID="hfimage" runat="server" />
                                    <asp:HiddenField ID="hfsig" runat="server" />
                                    <asp:HiddenField ID="hfyears" runat="server" />
                                    <asp:HiddenField ID="hfper1" runat="server" />
                                    <asp:HiddenField ID="hfper2" runat="server" />
                                    <asp:HiddenField ID="hfper3" runat="server" />
                                    <asp:HiddenField ID="hfper4" runat="server" />
                                    <asp:HiddenField ID="hfper5" runat="server" />
                                    <asp:HiddenField ID="hfper6" runat="server" />
                                    <asp:HiddenField ID="hfper7" runat="server" />
                                
                                </td>
                                <td style="width: 30%; vertical-align: top;">
                                    <fieldset style="width: 85%; padding: 8px; text-align: center;">
                                        <asp:Button ID="btnSave" runat="server" Text="Final Submit For Payment" 
                                            onclick="btnSave_Click" Width="439px" BackColor="White" Font-Bold="True" 
                                            Font-Size="Large" ForeColor="Red" Height="50px"/>
                                      
                                    </fieldset>
                                </td>
                            </tr>
                        </table>
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

