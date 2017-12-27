<%@ Page Title="" Language="C#" MasterPageFile="~/HRLMS.master" AutoEventWireup="true" CodeFile="Register2.aspx.cs" Inherits="Register2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

 <link type="text/css" href="css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.19.custom.min.js"></script>
<script type="text/javascript">

    $(document).ready(function () {
        document.getElementById("<%=txtissuedate.ClientID%>").readOnly = true;
        document.getElementById("<%=txtsubcatdatejoin.ClientID%>").readOnly = true;
        document.getElementById("<%=txtsubcatdaterel.ClientID%>").readOnly = true;

        var txtval = document.getElementById("<%=txtcertiname.ClientID%>");
        var parmvalCategory = document.getElementById('<%=drpCategory.ClientID%>');
        var strvalCategory = parmvalCategory.options[parmvalCategory.selectedIndex].text;
        var myVal2121 = document.getElementById('<%=RequiredFieldValidator5.ClientID%>');
        var myVal31311 = document.getElementById('<%=RequiredFieldValidator6.ClientID%>');
        var myVal41414 = document.getElementById('<%=RequiredFieldValidator7.ClientID%>');
        var myVal5151 = document.getElementById('<%=RegularExpressionValidator1.ClientID%>');
        if (txtval.value == "" || strvalCategory === "General") {
        
            document.getElementById('tr3').style.display = 'none';
            document.getElementById('tr4').style.display = 'none';
            document.getElementById('tr5').style.display = 'none';
            document.getElementById('tr6').style.display = 'none';
            ValidatorEnable(myVal5151, false);
            ValidatorEnable(myVal31311, false);
            ValidatorEnable(myVal2121, false);
            ValidatorEnable(myVal41414, false);

        }
        else {

            document.getElementById('tr3').style.display = '';
            document.getElementById('tr4').style.display = '';
            document.getElementById('tr5').style.display = '';
            document.getElementById('tr6').style.display = '';
            ValidatorEnable(myVal5151, true);
            ValidatorEnable(myVal31311, true);
            ValidatorEnable(myVal2121, true);
            ValidatorEnable(myVal41414, true);
        }
        changetextbox();
        changenationalitytextbox();
        changeCattextbox();

        var textboxapplied1a = document.getElementById('<%=txtpostyear.ClientID%>');
        var textboxapplied2a = document.getElementById('<%=txtpostapplied.ClientID%>');
        var myVal9455 = document.getElementById('<%=RequiredFieldValidator9.ClientID%>');
        var myVal10455 = document.getElementById('<%=RequiredFieldValidator10.ClientID%>');
        var labelapplied11 = document.getElementById('<%=Label13.ClientID%>');
        var labelapplied22 = document.getElementById('<%=Label14.ClientID%>');
        if (textboxapplied1a.value == "" && textboxapplied2a.value == "") {
            textboxapplied1a.style.visibility = 'hidden';
            textboxapplied2a.style.visibility = 'hidden';
            labelapplied11.style.visibility = 'hidden';
            labelapplied22.style.visibility = 'hidden';
            textboxapplied1a.value = "";
            textboxapplied2a.value = "";
            ValidatorEnable(myVal9455, false);
            ValidatorEnable(myVal10455, false);
        }
        else {
            textboxapplied1a.style.visibility = 'visible';
            textboxapplied2a.style.visibility = 'visible';
            labelapplied11.style.visibility = 'visible';
            labelapplied22.style.visibility = 'visible';
            ValidatorEnable(myVal9455, true);
            ValidatorEnable(myVal10455, true);
        }

        var e = document.getElementById('<%=drpphyhani.ClientID%>');
        var textboxPhysicala = document.getElementById('<%=drpphyhani.ClientID%>');
        var myVal1178 = document.getElementById('<%=CompareValidatvfdor1.ClientID%>');

        if (e.options[e.selectedIndex].value === "0") {

            textboxPhysicala.style.visibility = 'hidden';
            ValidatorEnable(myVal1178, false);
        } else {
            textboxPhysicala.style.visibility = 'visible';
            ValidatorEnable(myVal1178, true);
        }

        var textboxdebarda = document.getElementById('<%=txtdebard.ClientID%>');
        var myVal88 = document.getElementById('<%=RequiredFieldValidator8.ClientID%>');
        var labeldebarda = document.getElementById('<%=Label15.ClientID%>');
        if (textboxdebarda.value == "") {
            textboxdebarda.style.visibility = 'hidden';
            labeldebarda.style.visibility = 'hidden';
            textboxdebarda.value = "";
            ValidatorEnable(myVal88, false);
        } else {
            textboxdebarda.style.visibility = 'visible';
            labeldebarda.style.visibility = 'visible';
            ValidatorEnable(myVal88, true);
        }

        var textboxtxtshg = document.getElementById('<%=txtshg.ClientID%>');
        var myVal77788 = document.getElementById('<%=RequiredFieldValidator11.ClientID%>');
        var labelSHG1 = document.getElementById('<%=Label10.ClientID%>');
        if (textboxtxtshg.value == "") {
            labelSHG1.style.visibility = 'hidden';
            textboxtxtshg.style.visibility = 'hidden';
            textboxtxtshg.value = "";
            ValidatorEnable(myVal77788, false);
        } else {
            textboxtxtshg.style.visibility = 'visible';
            labelSHG1.style.visibility = 'visible';
            ValidatorEnable(myVal77788, true);
        }

        var textboxtxthsrl = document.getElementById('<%=txthsrl.ClientID%>');
        var myVal7778812 = document.getElementById('<%=RequiredFieldValidator12.ClientID%>');
        var labelHSRLMPhy1 = document.getElementById('<%=Label11.ClientID%>');
        if (textboxtxthsrl.value == "") {
            textboxtxthsrl.style.visibility = 'hidden';
            labelHSRLMPhy1.style.visibility = 'hidden';
            textboxtxthsrl.value = "";
            ValidatorEnable(myVal7778812, false);
        } else {
            textboxtxthsrl.style.visibility = 'visible';
            labelHSRLMPhy1.style.visibility = 'visible';
            ValidatorEnable(myVal7778812, true);
        }
        var ee = document.getElementById('<%=drpcardre.ClientID%>');
        var rbtnCadresel = document.getElementById('<%=rbtnCadre.ClientID%>');
        var textboxtxtcardre = document.getElementById('<%=drpcardre.ClientID%>');
        var labelCadre1 = document.getElementById('<%=Label12.ClientID%>');
        var myVal7778813 = document.getElementById('<%=CompareValidatxor1.ClientID%>');

        if (ee.options[e.selectedIndex].value === "0") {
            textboxtxtcardre.style.visibility = 'hidden';
            labelCadre1.style.visibility = 'hidden';
            ValidatorEnable(myVal7778813, false);
        } else {
            textboxtxtcardre.style.visibility = 'visible';
            labelCadre1.style.visibility = 'visible';
            ValidatorEnable(myVal7778813, true);
            rbtnCadresel.value = "0";

        }

    });


    function Gendertextbox() {

        var parm1 = document.getElementById('<%=drpmarital.ClientID%>');
        var textbox = document.getElementById('<%=drpmaritalStatus.ClientID%>');
         var temp = "0";
         $(parm1).val(temp);
         $(textbox).val(temp);
         textbox.style.visibility = 'hidden';
         var myVal12 = document.getElementById('<%=CompareValivcxdator1.ClientID%>');
         ValidatorEnable(myVal12, false);
     }
  

    function changetextbox() {
        var parm = document.getElementById('<%=drpGender.ClientID%>');
        var strUser = parm.options[parm.selectedIndex].text;
        var parm2 = document.getElementById('<%=drpmarital.ClientID%>');
        var strUser2 = parm2.options[parm2.selectedIndex].text;
        var textbox = document.getElementById('<%=drpmaritalStatus.ClientID%>');
        if (strUser === "Female" && strUser2 === "Married") {
            textbox.style.visibility = 'visible';
            var myVal12 = document.getElementById('<%=CompareValivcxdator1.ClientID%>');
            ValidatorEnable(myVal12, true);
        } else {
            textbox.style.visibility = 'hidden';
            textbox.value = "";
            var myVal12 = document.getElementById('<%=CompareValivcxdator1.ClientID%>');
            ValidatorEnable(myVal12, false);
        }
    }
    function changenationalitytextbox() {
        var parmnation = document.getElementById('<%=drpnationality.ClientID%>');
        var strUsernation = parmnation.options[parmnation.selectedIndex].text;
        var textbox = document.getElementById('<%=txtnationality.ClientID%>');
        if (strUsernation === "Any Other") {

            textbox.style.visibility = 'visible';
            var myVal110 = document.getElementById('<%=RequiredFieldValidator121.ClientID%>');
            ValidatorEnable(myVal110, true);
        } else {
            textbox.style.visibility = 'hidden';
            textbox.value = "";
            var myVal110 = document.getElementById('<%=RequiredFieldValidator121.ClientID%>');
            ValidatorEnable(myVal110, false);
        }
    };


    function changeCattextbox() {
        var parcat = document.getElementById('<%=drpsubcat.ClientID%>');
        var strcat = parcat.options[parcat.selectedIndex].text;
        var textboxcat = document.getElementById('<%=drpsubcattype.ClientID%>');
        var textbox1 = document.getElementById('<%=txtsubcatdatejoin.ClientID%>');
        var textbox2 = document.getElementById('<%=txtsubcatdaterel.ClientID%>');
        if (strcat === "DESM") {

            textboxcat.style.visibility = 'visible';
            var myVal99 = document.getElementById('<%=CompareValidaasdtor1.ClientID%>');
            ValidatorEnable(myVal99, true);
            document.getElementById('tr1').style.display = 'none';
            document.getElementById('tr2').style.display = 'none';
            textbox1.value = "";
            textbox2.value = "";
            var myVal = document.getElementById('<%=RequiredFieldValidator3.ClientID%>');
            ValidatorEnable(myVal, false);
            var myVal1 = document.getElementById('<%=RequiredFieldValidator4.ClientID%>');
            ValidatorEnable(myVal1, false);

        } else if (strcat === "ESM") {

            textboxcat.style.visibility = 'hidden';
            var temp = "0";
             $(textboxcat).val(temp);
            var myVal99AA = document.getElementById('<%=CompareValidaasdtor1.ClientID%>');
            ValidatorEnable(myVal99AA, false);

            document.getElementById('tr1').style.display = '';
            document.getElementById('tr2').style.display = '';
           var myVal = document.getElementById('<%=RequiredFieldValidator3.ClientID%>');
            ValidatorEnable(myVal, true);
            var myVal1 = document.getElementById('<%=RequiredFieldValidator4.ClientID%>');
            ValidatorEnable(myVal1, true);
        }
        
        
        else {
            textboxcat.style.visibility = 'hidden';
            textboxcat.value = "";
            var myVal99 = document.getElementById('<%=CompareValidaasdtor1.ClientID%>');
            ValidatorEnable(myVal99, false);
            document.getElementById('tr1').style.display = 'none';
            document.getElementById('tr2').style.display = 'none';
            textbox1.value = "";
            textbox2.value = "";
            var myVal = document.getElementById('<%=RequiredFieldValidator3.ClientID%>');
            ValidatorEnable(myVal, false);
            var myVal1 = document.getElementById('<%=RequiredFieldValidator4.ClientID%>');
            ValidatorEnable(myVal1, false);
			
        }
    };

    function changedebarredtextbox() {
        var radiolist = document.getElementById('<%= RadioButtonList1.ClientID %>');
        var radio = radiolist.getElementsByTagName("input");
        var textboxdebard = document.getElementById('<%=txtdebard.ClientID%>');
        var labelgedebarredtext = document.getElementById('<%=Label15.ClientID%>');
       if ((radio[0].type === "radio" && radio[0].checked))
       {
           textboxdebard.style.visibility = 'visible';
           labelgedebarredtext.style.visibility = 'visible';
           textboxdebard.value = "";
           var myVal8 = document.getElementById('<%=RequiredFieldValidator8.ClientID%>');
           ValidatorEnable(myVal8, true);
       } else {
                 textboxdebard.style.visibility = 'hidden';
                 labelgedebarredtext.style.visibility = 'hidden';
           var myVal8 = document.getElementById('<%=RequiredFieldValidator8.ClientID%>');
           ValidatorEnable(myVal8, false);
        }
   };

   function changePhysicaltextbox() {
      
       var radiolistPhy = document.getElementById('<%= rbtnGover.ClientID %>');
       var radioPhy = radiolistPhy.getElementsByTagName("input");
       var textboxPhysical = document.getElementById('<%=drpphyhani.ClientID%>');
       if ((radioPhy[0].type === "radio" && radioPhy[0].checked)) {
       
           textboxPhysical.style.visibility = 'visible';
           var myVal11 = document.getElementById('<%=CompareValidatvfdor1.ClientID%>');
           ValidatorEnable(myVal11, true);
       } else {
           textboxPhysical.style.visibility = 'hidden';
             var myVal11 = document.getElementById('<%=CompareValidatvfdor1.ClientID%>');
           ValidatorEnable(myVal11, false);
           var tempqq = "0";
           $(textboxPhysical).val(tempqq);
           $(textboxPhysical).val(tempqq);
       }
   };

   function changeappliedtextbox() {
       var radiolistapplied = document.getElementById('<%= RadioButtonList2.ClientID %>');
       var radioapplied = radiolistapplied.getElementsByTagName("input");
       var textboxapplied1 = document.getElementById('<%=txtpostyear.ClientID%>');
       var textboxapplied2 = document.getElementById('<%=txtpostapplied.ClientID%>');
       var labelapplied1 = document.getElementById('<%=Label13.ClientID%>');
       var labelapplied2 = document.getElementById('<%=Label14.ClientID%>');
       if ((radioapplied[0].type === "radio" && radioapplied[0].checked )) {
           textboxapplied1.style.visibility = 'visible';
           textboxapplied2.style.visibility = 'visible';
           labelapplied1.style.visibility = 'visible';
           labelapplied2.style.visibility = 'visible';
           var myVal9 = document.getElementById('<%=RequiredFieldValidator9.ClientID%>');
           ValidatorEnable(myVal9, true);
           var myVal10 = document.getElementById('<%=RequiredFieldValidator10.ClientID%>');
           ValidatorEnable(myVal10, true);
       } else {
           textboxapplied1.style.visibility = 'hidden';
           textboxapplied2.style.visibility = 'hidden';
           labelapplied1.style.visibility = 'hidden';
           labelapplied2.style.visibility = 'hidden';
           textboxapplied1.value = "";
           textboxapplied2.value = "";
           var myVal9 = document.getElementById('<%=RequiredFieldValidator9.ClientID%>');
           ValidatorEnable(myVal9, false);
           var myVal10 = document.getElementById('<%=RequiredFieldValidator10.ClientID%>');
           ValidatorEnable(myVal10, false);
       }
   };


   function changeCategorytextbox() {

        var parmCategory = document.getElementById('<%=drpCategory.ClientID%>');
       var strCategory = parmCategory.options[parmCategory.selectedIndex].text;

       if (strCategory === "General" || strCategory === "--Select--") {
           var textbox3 = document.getElementById('<%=txtcertiname.ClientID%>');
           var textbox4 = document.getElementById('<%=txtissuedate.ClientID%>');
           var textbox5 = document.getElementById('<%=txtissueauthority.ClientID%>');
           var textbox6 = document.getElementById('<%=txtissueauthorityemail.ClientID%>');
   
           textbox3.value = "";
           textbox4.value = "";
           textbox5.value = "";
           textbox6.value = "";
        
            document.getElementById('tr3').style.display = 'none';
            document.getElementById('tr4').style.display = 'none';
            document.getElementById('tr5').style.display = 'none';
            document.getElementById('tr6').style.display = 'none';
           var myVal2 = document.getElementById('<%=RequiredFieldValidator5.ClientID%>');
           ValidatorEnable(myVal2, false);
            var myVal3 = document.getElementById('<%=RequiredFieldValidator6.ClientID%>');
            ValidatorEnable(myVal3, false);
            var myVal4 = document.getElementById('<%=RequiredFieldValidator7.ClientID%>');
            ValidatorEnable(myVal4, false);
            var myVal5 = document.getElementById('<%=RegularExpressionValidator1.ClientID%>');
            ValidatorEnable(myVal5, false);

       } else {
         
            document.getElementById('tr3').style.display = '';
            document.getElementById('tr4').style.display = '';
            document.getElementById('tr5').style.display = '';
            document.getElementById('tr6').style.display = '';
           var myVal2 = document.getElementById('<%=RequiredFieldValidator5.ClientID%>');
            ValidatorEnable(myVal2, true);
            var myVal3 = document.getElementById('<%=RequiredFieldValidator6.ClientID%>');
            ValidatorEnable(myVal3, true);
            var myVal4 = document.getElementById('<%=RequiredFieldValidator7.ClientID%>');
            ValidatorEnable(myVal4, true);
            var myVal5 = document.getElementById('<%=RegularExpressionValidator1.ClientID%>');
            ValidatorEnable(myVal5, true);
       }
   };


   function WaterMarkPost(txt, evt) {
       if (txt.value.length == 0 && evt.type == "blur") {
           txt.style.color = "gray";
           txt.value = "Enter Post Name";
       }
       if (txt.value == "Enter Post Name" && evt.type == "focus") {
           txt.style.color = "black";
           txt.value = "";
       }
   };
   function WaterMarkYear(txt, evt) {
       if (txt.value.length == 0 && evt.type == "blur") {
           txt.style.color = "gray";
           txt.value = "Enter Year";
       }
       if (txt.value == "Enter Year" && evt.type == "focus") {
           txt.style.color = "black";
           txt.value = "";
       }
   };
   function changeSHGtextbox() {
       var radioshr = document.getElementById('<%= rbtnSHR.ClientID %>');
       var radioshrPhy = radioshr.getElementsByTagName("input");
       var textboxSHG = document.getElementById('<%=txtshg.ClientID%>');
       var labelSHG = document.getElementById('<%=Label10.ClientID%>');
       if ((radioshrPhy[0].type === "radio" && radioshrPhy[0].checked)) {
           textboxSHG.style.visibility = 'visible';
           labelSHG.style.visibility = 'visible';
           var myValval = document.getElementById('<%=RequiredFieldValidator11.ClientID%>');
           ValidatorEnable(myValval, true);
       } else {
           textboxSHG.style.visibility = 'hidden';
           labelSHG.style.visibility = 'hidden';
           textboxSHG.value = "";
           var myValval = document.getElementById('<%=RequiredFieldValidator11.ClientID%>');
           ValidatorEnable(myValval, false);
       }
   };

   function changeHSRLMtextbox() {
       var radioHSRLM = document.getElementById('<%= rbtnHSRLM.ClientID %>');
       var radioHSRLMPhy = radioHSRLM.getElementsByTagName("input");
       var textboxHSRLM = document.getElementById('<%=txthsrl.ClientID%>');
       var labelHSRLMPhy = document.getElementById('<%=Label11.ClientID%>');
       if ((radioHSRLMPhy[0].type === "radio" && radioHSRLMPhy[0].checked)) {
           textboxHSRLM.style.visibility = 'visible';
           labelHSRLMPhy.style.visibility = 'visible';
           var myValval1 = document.getElementById('<%=RequiredFieldValidator12.ClientID%>');
           ValidatorEnable(myValval1, true);
       } else {
           textboxHSRLM.style.visibility = 'hidden';
           labelHSRLMPhy.style.visibility = 'hidden';
           textboxHSRLM.value = "";
           var myValval1 = document.getElementById('<%=RequiredFieldValidator12.ClientID%>');
           ValidatorEnable(myValval1, false);
       }
   };
   function changeCadretextbox() {

       var radioCadre = document.getElementById('<%= rbtnCadre.ClientID %>');
       var radioCadrePhy = radioCadre.getElementsByTagName("input");
       var textboxCadrse = document.getElementById('<%=drpcardre.ClientID%>');
       var labelCadre = document.getElementById('<%=Label12.ClientID%>');
    
       if ((radioCadrePhy[0].type === "radio" && radioCadrePhy[0].checked)) {
           textboxCadrse.style.visibility = 'visible';
           labelCadre.style.visibility = 'visible';
           var myValvale511 = document.getElementById('<%=CompareValidatxor1.ClientID%>');
           ValidatorEnable(myValvale511, true);
       } else {
           textboxCadrse.style.visibility = 'hidden';
           labelCadre.style.visibility = 'hidden';
          var myValvale5112 = document.getElementById('<%=CompareValidatxor1.ClientID%>');
          ValidatorEnable(myValvale5112, false);
          var tempq = "0";
          $(textboxCadrse).val(tempq);
          $(textboxCadrse).val(tempq);
       }
   };

  

   function syncAddress() {
          var chkPassport = document.getElementById('<%= Chk_SameAddress.ClientID %>');
         

              var textbox1 = document.getElementById('<%=txt_PAddress.ClientID%>');
              var textbox11 = document.getElementById('<%=txt_CAddress.ClientID%>');

              var textbox2 = document.getElementById('<%=txtarea.ClientID%>');
              var textbox22 = document.getElementById('<%=txtcarea.ClientID%>');

              var textbox3 = document.getElementById('<%=txtblock.ClientID%>');
              var textbox33 = document.getElementById('<%=txtcblock.ClientID%>');

              var textbox4 = document.getElementById('<%=txt_PTehsil.ClientID%>');
              var textbox44 = document.getElementById('<%=txt_CTehsil.ClientID%>');

              var textbox5 = document.getElementById('<%=txt_PPinCode.ClientID%>');
              var textbox55 = document.getElementById('<%=txt_CPinCode.ClientID%>');

              var textbox6 = document.getElementById('<%=txt_PTelephone.ClientID%>');
              var textbox66 = document.getElementById('<%=txt_CTelephone.ClientID%>');

              var parmnation7 = document.getElementById('<%=drppdistrict.ClientID%>');
              var parmnation77 = document.getElementById('<%=Drpcdistrict.ClientID%>');
              if (chkPassport.checked) {
              textbox11.value = textbox1.value;
              textbox22.value = textbox2.value;
              textbox33.value = textbox3.value;
              textbox44.value = textbox4.value;
              textbox55.value = textbox5.value;
              textbox66.value = textbox6.value;
              parmnation77.value = parmnation7.value;

          }
          else {
              textbox11.value = "";
              textbox22.value = "";
              textbox33.value = "";
              textbox44.value = "";
              textbox55.value = "";
              textbox66.value = "";
              textbox77.value = "";
              var temps = "0";
              parmnation77.val(temp);
          }
   };
</script>
    <style type="text/css">
        .style3
    {
        text-align: center;
    }
    </style>
    
<script type="text/javascript">
    $(function () {
        var tid = document.getElementById('<%=txtissuedate.ClientID%>');
        $(tid).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1945:2017'
        });

        var tid1 = document.getElementById('<%=txtsubcatdatejoin.ClientID%>');
        $(tid1).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1945:2017'
        });


        var tid2 = document.getElementById('<%=txtsubcatdaterel.ClientID%>');
        $(tid2).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1945:2017'
        });

    });
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
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="Step 1" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" ForeColor="#00CC00" Height="50px"></asp:Label>
                    <asp:Label
                        ID="Label16" runat="server" Text="===>" ForeColor="#009933" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" Height="50px"></asp:Label>
                <asp:Label ID="Label2"
                    runat="server" Text="Step 2" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" Height="50px"></asp:Label>
                    <asp:Label
                        ID="Label17" runat="server" Text="===>" ForeColor="Red" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" Height="50px"></asp:Label>
                <asp:Label ID="Label3" 
                    runat="server" Text="Step 3" ForeColor="Red" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" Height="50px"></asp:Label>
                    <asp:Label
                        ID="Label18" runat="server" Text="===>" ForeColor="Red" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" Height="50px"></asp:Label>
                <asp:Label
                        ID="Label4" runat="server" Text="Step 4" ForeColor="Red" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" Height="50px"></asp:Label>
                    <asp:Label
                        ID="Label19" runat="server" Text="===>" ForeColor="Red" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" Height="50px"></asp:Label>
                <asp:Label
                        ID="Label5" runat="server" Text="Step 5" ForeColor="Red" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger" Height="50px"></asp:Label>
            </td>
        </tr>
         <tr id="trAddinfo" runat="server">
            <td align="center">
                <div>
                    <div style="width: 90%;">
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
                                            <td style="width: 18%; padding-left: 20px;" colspan="2">
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
                                            <td style="width: 18%; padding-left: 20px;" colspan="2">
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
                                            <td style="width: 18%; padding-left: 20px;" colspan="2">
                                                     Mother's Name :</td>
                                            <td style="width: 32%;">
                                               <asp:Label ID="lblmname" runat="server"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 18%; padding-left: 20px;">
                                                     Date of Birth :</td>
                                            <td>
                                                 <asp:Label ID="lbldob" runat="server" ></asp:Label></td>
                                            <td>
                                                 &nbsp;</td>
                                            <td colspan="2">
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



        <tr id="trAdd" runat="server">
            <td align="center">
                <div align="center">
                    <div style="width: 90%;" align="center">
                        <fieldset style="width: 98%; text-align: left;">
                            <legend>Basic Information</legend>
                            <div style="padding: 10px 10px 5px 10px; text-align: center;">
                                <div>
                                    <table class="gen" style="width: 95%; text-align: left;"  cellpadding="4px"
                                        cellspacing="0">
                                        <tr>
                                            <td  style="width: 40%; padding-left: 20px;" align="right">
                                              Gender:<asp:Label ID="Label8" runat="server" ForeColor="#C00000" Text="*" Width="1px"></asp:Label>
                                            </td>
                                            <td style="width: 60%; padding-left: 20px;" colspan="5">
                                           <asp:DropDownList ID="drpGender" runat="server" CssClass="inputnew" 
                                                    onChange="Gendertextbox();">
                                            <asp:ListItem Text="Select" Value="0" />
                                            <asp:ListItem Text="Male" Value="1" />
                                            <asp:ListItem Text="Female" Value="2" />
                                            </asp:DropDownList>
                                            <asp:CompareValidator ID="CVgender" runat="server" ControlToValidate="drpGender" 
                                                    Display="Dynamic" ErrorMessage="Select Valid Gender" ForeColor="#804000" 
                                                    Operator="NotEqual" ValueToCompare="0" ValidationGroup="reg">*</asp:CompareValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 40%; padding-left: 20px;" align="right">
                                                    Marital Status: <asp:Label ID="Label7" runat="server" ForeColor="#C00000" Text="*" Width="1px"></asp:Label>
                                            </td>
                                            <td style="width: 40%; padding-left: 20px;" colspan="5">
                                               <asp:DropDownList ID="drpmarital" runat="server" CssClass="inputnew" onChange="changetextbox();">
                                                <asp:ListItem Text="Select"  Value="0" />
                                                <asp:ListItem Text="UnMarried" Value="UnMarried" />
                                                <asp:ListItem  Text="Married" Value="Married" />
                                         </asp:DropDownList>
                                        <asp:CompareValidator ID="CompareValidator9" runat="server" 
                                                    ControlToValidate="drpmarital" Display="Dynamic" 
                                                    ErrorMessage="Select Valid Marital Status" ForeColor="#804000" 
                                                    Operator="NotEqual" ValueToCompare="0" ValidationGroup="reg">*</asp:CompareValidator>
                                                     <asp:DropDownList ID="drpmaritalStatus" runat="server" CssClass="inputnew" style="visibility:hidden" Visible="true" >
                                                <asp:ListItem Value="0">...</asp:ListItem>
                                                <asp:ListItem Value="1">Widow</asp:ListItem>
                                                <asp:ListItem Value="2">Divorce or Legally Separated </asp:ListItem>
                                                    <asp:ListItem Value="3" >Destitute</asp:ListItem>
                                                    <asp:ListItem Value="4">Husband has been ordered by Civil/Criminal court to Pay Maintenance &nbsp;</asp:ListItem>
                                                    <asp:ListItem Value="5">Husband has remarried</asp:ListItem>
                                                    <asp:ListItem Value="6">Wives of Serving Disabled Military Personnel &nbsp;</asp:ListItem>
                                                    <asp:ListItem Value="7">Non </asp:ListItem>
                                         </asp:DropDownList>
                                           <asp:CompareValidator ID="CompareValivcxdator1" runat="server" 
                                                    ControlToValidate="drpmaritalStatus" Display="Dynamic" 
                                                    ErrorMessage="Select Valid Marital Status" ForeColor="#804000" 
                                                    Operator="NotEqual" ValueToCompare="0" ValidationGroup="reg">*</asp:CompareValidator>
                                            </td>
                                        </tr>
                                       <tr>
                                          <td style="width: 40%; padding-left: 20px;" align="right">
                                               Nationality :</td>
                                          <td style="width: 60%; padding-left: 20px;" colspan="5">
                                            <asp:DropDownList ID="drpnationality" runat="server" CssClass="inputnew" onChange="changenationalitytextbox();">
                                            <asp:ListItem Text="---"  Value="0" />
                                            <asp:ListItem Text="Indian"  Value="1" />
                                            <asp:ListItem Text="Any Other"  Value="2" />
                                            </asp:DropDownList>
                                            <asp:CompareValidator ID="CompareValidator2" runat="server" 
                                                  ControlToValidate="drpnationality" Display="Dynamic" 
                                                  ErrorMessage="Select Valid Nationality" ForeColor="#804000" Operator="NotEqual" 
                                                  ValueToCompare="0" ValidationGroup="reg">*</asp:CompareValidator>
                                                   <asp:TextBox ID="txtnationality" runat="server" MaxLength="20" 
                                                   CssClass="inputnew" style="visibility:hidden" Visible="true" ></asp:TextBox>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator121" runat="server" 
                                                      ControlToValidate="txtnationality" Display="Dynamic" 
                                                      ErrorMessage="Enter Nationality" ForeColor="#804000" 
                                                      ValidationGroup="reg">*</asp:RequiredFieldValidator>
                                         </td>
                                        </tr>
                                     
                                        <tr id="trcategory" runat="server">
                                              <td style="width: 40%; padding-left: 20px;" align="right">
                                                    Category :<asp:Label ID="Label9" runat="server" ForeColor="#C00000" Text="*" Width="1px"></asp:Label></td>
                                              <td style="width: 60%; padding-left: 20px;" colspan="5">
                                                    <asp:DropDownList ID="drpCategory" runat="server" CssClass="inputnew" 
                                                        onChange="changeCategorytextbox();">
                                                 
                                                    </asp:DropDownList>
                                                    <asp:CompareValidator ID="cmcategory" runat="server" 
                                                        ControlToValidate="drpCategory" Display="Dynamic" 
                                                        ErrorMessage="Select Valid Category" ForeColor="#804000" Operator="NotEqual" 
                                                        Type="Integer" ValueToCompare="0" ValidationGroup="reg">*</asp:CompareValidator>
                                             </td>
                                        </tr>

                                        

      
                                        <tr id="tr3">
                                              <td style="width: 40%; padding-left: 20px;" align="right">
                                               <asp:Label ID="lb3" runat="server" Text ="Certificate Number :" ></asp:Label>
                                               </td>
                                              <td  style="width: 60%; padding-left: 20px;" colspan="5">
                                               <asp:TextBox ID="txtcertiname" MaxLength="50" runat="server" CssClass="input" ></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                      ControlToValidate="txtcertiname" Display="Dynamic" 
                                                      ErrorMessage="Enter Certificate Number" ForeColor="#804000" 
                                                      ValidationGroup="reg">*</asp:RequiredFieldValidator>
                                               </td>
                                        </tr>
                                        

      
                                        <tr id="tr4">
                                              <td style="width: 40%; padding-left: 20px;" align="right">
                                               <asp:Label ID="lb4" runat="server" Text =" Issue Date:"></asp:Label>
                                             
                                                   </td>
                                              <td  style="width: 60%; padding-left: 20px;" colspan="5">
                                             
                                                   <asp:TextBox ID="txtissuedate" MaxLength="50" CssClass="input" runat="server" ></asp:TextBox>
                                          <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender233" runat="server" TargetControlID="txtissuedate" FilterType="Custom" ValidChars="0123456789/">
                                        </cc1:FilteredTextBoxExtender>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                      ControlToValidate="txtissuedate" Display="Dynamic" 
                                                      ErrorMessage="Enter Issue Date" ForeColor="#804000" 
                                                      ValidationGroup="reg">*</asp:RequiredFieldValidator>    
                                                </td>
                                        </tr>
                                        

      
                                        <tr id="tr5">
                                              <td style="width: 40%; padding-left: 20px;" align="right">
                                               <asp:Label ID="lb6" runat="server" Text ="Authority Name:" ></asp:Label>
                                             
                                                   </td>
                                              <td  style="width: 60%; padding-left: 20px;" colspan="5">
                                             
                                                   <asp:TextBox ID="txtissueauthority" MaxLength="50" CssClass="input" runat="server" ></asp:TextBox>
                                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                      ControlToValidate="txtissueauthority" Display="Dynamic" 
                                                      ErrorMessage="Enter Issue Authority" ForeColor="#804000" 
                                                      ValidationGroup="reg">*</asp:RequiredFieldValidator>   
                                                   </td>
                                        </tr>
                                        

      
                                        <tr id="tr6">
                                              <td style="width: 40%; padding-left: 20px;" align="right">
                                               <asp:Label ID="lb5" runat="server" Text ="Authority Email:" ></asp:Label>
                                                 </td>
                                              <td style="width: 60%; padding-left: 20px;" colspan="5">
                                                 <asp:TextBox ID="txtissueauthorityemail"  MaxLength="50" CssClass="input" runat="server" ></asp:TextBox>
                                                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                      ControlToValidate="txtissueauthorityemail" Display="Dynamic" 
                                                      ErrorMessage="Enter Valid E-Mail Address" ForeColor="#804000" 
                                                      ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                                      ValidationGroup="reg">*</asp:RegularExpressionValidator>
                                                  </td>
                                        </tr>
                                        

                                        
                                      <tr id="trsubcategory" runat="server">
                                              <td style="width: 40%; padding-left: 20px;" align="right">
                                                   Sub Category </td>
                                              <td style="width: 30%; padding-left: 20px;" colspan="2">
                                                     <asp:DropDownList ID="drpsubcat" runat="server" AppendDataBoundItems="True" 
                                                         CssClass="input" onChange="changeCattextbox();">
                                                     <asp:ListItem Value="Non">Non</asp:ListItem>
                                                     <asp:ListItem>ESM</asp:ListItem>
                                                     <asp:ListItem>DESM</asp:ListItem>
                                                    </asp:DropDownList>
                                               </td>
                                              <td style="width: 30%; padding-left: 20px;" colspan="3">
                                                   <asp:DropDownList ID="drpsubcattype" runat="server" AppendDataBoundItems="True" 
                                                       CssClass="input" style="visibility:hidden" Visible="true">
                                                    <asp:ListItem Value="...">...</asp:ListItem>
                                                    <asp:ListItem Value="1">Dependent Son/Daughter of ESM</asp:ListItem>
                                                    <asp:ListItem Value="2">Wife of ESM</asp:ListItem>
                                                    <asp:ListItem Value="3">Widow of ESM/Military Personnel Killed in Action</asp:ListItem>
                                                    <asp:ListItem Value="4">Wife of Serving/Disabled Military Personnel</asp:ListItem>
                                                    </asp:DropDownList>
                                                      <asp:CompareValidator ID="CompareValidaasdtor1" runat="server" ControlToValidate="drpsubcattype" 
                                                    Display="Dynamic" ErrorMessage="Select sub category type" ForeColor="#804000" 
                                                    Operator="NotEqual" ValueToCompare="..." ValidationGroup="reg">*</asp:CompareValidator>
                                               </td>
                                        </tr>
          

      
                                        <tr id="tr1">
                                              <td style="width: 40%; padding-left: 20px;" align="right">
                                                 <asp:Label ID="lb1" runat="server" Text ="Date of Joining:" ></asp:Label></td>
                                              <td  style="width: 60%; padding-left: 20px;" colspan="5">
                                              
                                                      <asp:TextBox ID="txtsubcatdatejoin" runat="server" CssClass="input"></asp:TextBox>
                                                    <cc1:FilteredTextBoxExtender ID="Filterdatejoin" runat="server" TargetControlID="txtsubcatdatejoin" FilterType="Custom" ValidChars="0123456789/">
                                                    </cc1:FilteredTextBoxExtender>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                      ControlToValidate="txtsubcatdatejoin" Display="Dynamic" 
                                                      ErrorMessage="Enter date Of Joining" ForeColor="#804000" 
                                                      ValidationGroup="reg">*</asp:RequiredFieldValidator>
                                               </td>
                                        </tr>
                                        

      
                                        <tr id="tr2">
                                              <td style="width: 40%; padding-left: 20px;" align="right">
                                                  <asp:Label ID="lb2" runat="server" Text=" Date of Release:"></asp:Label>
                                              </td>
                                              <td  style="width: 60%; padding-left: 20px;" colspan="5">
                                              
                                             
                                                     <asp:TextBox ID="txtsubcatdaterel" runat="server" CssClass="input" ></asp:TextBox>
                                                   <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="txtsubcatdaterel" FilterType="Custom" ValidChars="0123456789/">
                                                    </cc1:FilteredTextBoxExtender>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                      ControlToValidate="txtsubcatdaterel" Display="Dynamic" 
                                                      ErrorMessage="Enter date Of Release" ForeColor="#804000" 
                                                      ValidationGroup="reg">*</asp:RequiredFieldValidator>
                                                    </td>
                                        </tr>
                                        <tr  style="display:none">
                                              <td style="width: 40%; padding-left: 20px;" align="right">

                                                    Email</td>
                                              <td style="width: 60%; padding-left: 20px;" colspan="5">
                                                 <asp:TextBox ID="TxtEmail" MaxLength="50" CssClass="input" runat="server"></asp:TextBox>
                                               </td>
                                        </tr>
                                        <tr>
                                              <td style="width: 40%; padding-left: 20px;" align="right">
                                                   Have you ever been debarred by any State Govt  </td>
                                              <td style="width: 20%; padding-left: 20px;">
                                                  <asp:RadioButtonList ID="RadioButtonList1" runat="server"  
                                                      RepeatDirection="Horizontal" onChange="changedebarredtextbox();" 
                                                      TextAlign="Left">
                                                     <asp:ListItem Text="Yes"  Value="0" />
                                                   <asp:ListItem Text="No"  Value="1"  Selected="True" />
                                                  </asp:RadioButtonList>
                                                </td>
                                              <td style="padding-left: 20px;" colspan="2">
                                                  <asp:Label ID="Label15" runat="server" Text="Ground of debarment"></asp:Label>
                                                </td>
                                              <td style="padding-left: 20px;" colspan="2">
                                                  <asp:TextBox ID="txtdebard" MaxLength="50" CssClass="input" runat="server" style="visibility:hidden" Visible="true"></asp:TextBox>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                      ControlToValidate="txtdebard" Display="Dynamic" 
                                                      ErrorMessage="Enter debard" ForeColor="#804000" 
                                                      ValidationGroup="reg">*</asp:RequiredFieldValidator>   
                                                </td>
                                        </tr>
                                      
                                        <tr>
                                              <td style="width: 20%; padding-left: 5px;" align="right" >
                                                     Do you Belong to Physical Handicap Category of Haryana :</td>
                                              <td style="width: 20%; padding-left: 20px; text-align: left;">
                                                   <asp:RadioButtonList ID="rbtnGover" runat="server" RepeatDirection="Horizontal" 
                                                       CssClass="input1" onChange="changePhysicaltextbox();">
                                                         <asp:ListItem Text="Yes"  Value="0" />
                                                          <asp:ListItem Text="No"  Value="1" Selected="True"/>
                                                         </asp:RadioButtonList>

                                                   
                                               </td>
                                              <td style="padding-left: 20px; text-align: left;" colspan="4">
                                                <asp:DropDownList ID="drpphyhani" runat="server" AppendDataBoundItems="True" CssClass="input" style="visibility:hidden" Visible="true">
                                                  <asp:ListItem Value="0">select Type of handicap</asp:ListItem>
                                                  <asp:ListItem Value="1">Handicapped (Blindness or Low Vision)</asp:ListItem>
                                                  <asp:ListItem Value="2">Handicapped (Locomotor disability of cerebral palsy)</asp:ListItem>
                                                  <asp:ListItem Value="3">Handicapped (Hearing Impairment)</asp:ListItem>
                                                      <asp:ListItem Value="4">Ortho </asp:ListItem>
                                                  </asp:DropDownList>
                                                    <asp:CompareValidator ID="CompareValidatvfdor1" runat="server" 
                                                    ControlToValidate="drpphyhani" Display="Dynamic" 
                                                    ErrorMessage="Select Valid Physical Hnadicapped" ForeColor="#804000" 
                                                    Operator="NotEqual" ValueToCompare="0" ValidationGroup="reg">*</asp:CompareValidator>
                                                   
                                               </td>
                                        </tr>
                                      
                                       
                                        <tr id="trPostapplied" runat="server">
                                              <td style="width: 40%; padding-left: 5px;" align="right">
                                                     Have you ever applied for the Post in HSRLM</td>
                                              <td style="width: 20%; padding-left: 20px; text-align: left;">
                                                  <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                                                      RepeatDirection="Horizontal" CssClass="input1" onChange="changeappliedtextbox();" >
                                                     <asp:ListItem Text="Yes"  Value="0" />
                                                     <asp:ListItem Text="No"  Value="1" Selected="True"/>
                                               
                                                  </asp:RadioButtonList>
                                              </td>
                                             
                                              <td style="padding-left: 20px; text-align: left;" colspan="3">
                                                  <asp:Label ID="Label13" runat="server" Text="Post name "></asp:Label>
                                                <asp:TextBox ID="txtpostapplied" CssClass="input" runat="server" MaxLength="100" style="visibility:hidden" Visible="true"  ForeColor = "Gray" onblur = "WaterMarkPost(this, event);" onfocus = "WaterMarkPost(this, event);"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                      ControlToValidate="txtpostapplied" Display="Dynamic" 
                                                      ErrorMessage="Enter Post Applied" ForeColor="#804000" 
                                                      ValidationGroup="reg">*</asp:RequiredFieldValidator> 
                                              </td>
                                             
                                              <td style="width: 20%; padding-left: 20px; text-align: left;">
                                                  <asp:Label ID="Label14" runat="server" Text="Year"></asp:Label><br />
                                                     <asp:TextBox ID="txtpostyear" runat="server" Width="70px" MaxLength="4" 
                                                         style="visibility:hidden" Visible="true"  ForeColor = "Gray" 
                                                         onblur = "WaterMarkYear(this, event);" onfocus = "WaterMarkYear(this, event);"></asp:TextBox>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                                      ControlToValidate="txtpostyear" Display="Dynamic" 
                                                      ErrorMessage="Enter Year Applied" ForeColor="#804000" 
                                                      ValidationGroup="reg">*</asp:RequiredFieldValidator> 
                                                  <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" 
                                                      TargetControlID="txtpostyear" ValidChars="1234567890"></cc1:FilteredTextBoxExtender></td>
                                             
                                        </tr>
                                       
                                                                           
                                        <tr>
                                              <td style="width: 40%; padding-left: 5px;" align="right">
                                                   Are you SHG member?</td>
                                              <td style="width: 20%; padding-left: 20px; text-align: left;">
                                                   <asp:RadioButtonList ID="rbtnSHR" runat="server" RepeatDirection="Horizontal" 
                                                       CssClass="input1" onChange="changeSHGtextbox();">
                                                         <asp:ListItem Text="Yes"  Value="0" />
                                                          <asp:ListItem Text="No"  Value="1" Selected="True"/>
                                                         </asp:RadioButtonList>

                                                   
                                               </td>
                                             
                                              <td style="padding-left: 20px; text-align: left;" colspan="3">
                                                  <asp:Label ID="Label10" runat="server" Text="SHG Code"></asp:Label>
                                              </td>
                                             
                                              <td style="width: 20%; padding-left: 20px; text-align: left;">
                                                  <asp:TextBox ID="txtshg" runat="server" CssClass="input1" MaxLength="50"></asp:TextBox>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                                      ControlToValidate="txtshg" Display="Dynamic" 
                                                      ErrorMessage="Enter SHG" ForeColor="#804000" 
                                                      ValidationGroup="reg">*</asp:RequiredFieldValidator>
                                                     &nbsp;</td>
                                             
                                        </tr>
                                       
                                                                           
                                        <tr>
                                              <td style="width: 40%; padding-left: 5px;" align="right">
                                                     Are you the employee of the HSRLM</td>
                                              <td style="width: 20%; padding-left: 20px; text-align: left;">
                                                   <asp:RadioButtonList ID="rbtnHSRLM" runat="server" RepeatDirection="Horizontal" 
                                                       CssClass="input1" onChange="changeHSRLMtextbox();">
                                                         <asp:ListItem Text="Yes"  Value="0" />
                                                          <asp:ListItem Text="No"  Value="1" Selected="True"/>
                                                         </asp:RadioButtonList>

                                                   
                                               </td>
                                             
                                              <td style="padding-left: 20px; text-align: left;" colspan="3">
                                                  <asp:Label ID="Label11" runat="server" Text="Mention Post"></asp:Label>
                                              </td>
                                             
                                              <td style="width: 20%; padding-left: 20px; text-align: left;">
                                                  <asp:TextBox ID="txthsrl" runat="server" CssClass="input1" MaxLength="50"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                                      ControlToValidate="txthsrl" Display="Dynamic" 
                                                      ErrorMessage="Enter Hsrl Post Name" ForeColor="#804000" 
                                                      ValidationGroup="reg">*</asp:RequiredFieldValidator></td>
                                             
                                        </tr>
                                       
                                                                           
                                        <tr>
                                              <td style="width: 40%; padding-left: 5px;" align="right">
                                                     Are you Community Cadre Member</td>
                                              <td style="width: 20%; padding-left: 20px; text-align: left;">
                                                   <asp:RadioButtonList ID="rbtnCadre" runat="server" RepeatDirection="Horizontal" 
                                                       CssClass="input1" onChange="changeCadretextbox();">
                                                         <asp:ListItem Text="Yes"  Value="0" />
                                                          <asp:ListItem Text="No"  Value="1" Selected="True"/>
                                                         </asp:RadioButtonList>

                                                   
                                               </td>
                                             
                                              <td style="padding-left: 20px; text-align: left;" colspan="3">
                                                  <asp:Label ID="Label12" runat="server" Text="Choose Post"></asp:Label>
                                              </td>
                                             
                                              <td style="width: 20%; padding-left: 20px; text-align: left;">
                                                 
                                                  <asp:DropDownList ID="drpcardre" runat="server"  AppendDataBoundItems="True" CssClass="input" style="visibility:hidden" Visible="true">
                                                      <asp:ListItem Value="0" Selected="True">Choose your Post </asp:ListItem>
                                                      <asp:ListItem Value="1">CRPs</asp:ListItem>
                                                      <asp:ListItem Value="2">PRPs</asp:ListItem>
                                                      <asp:ListItem Value="3">Smooh Sevika</asp:ListItem>
                                                      <asp:ListItem Value="4">Bank Mintra</asp:ListItem>
                                                  </asp:DropDownList>
                                                  <asp:CompareValidator ID="CompareValidatxor1" runat="server" 
                                                        ControlToValidate="drpcardre" Display="Dynamic" 
                                                        ErrorMessage="Select Post" ForeColor="#804000" Operator="NotEqual" 
                                                         ValueToCompare="0" ValidationGroup="reg">*</asp:CompareValidator>
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
        <tr id="trAddress" runat="server">
            <td align="center">
                <div>
                    <div style="width: 90%;">
                        <fieldset style="width: 98%; text-align: left;">
                            <legend>Correspondence / Permanent Address  </legend>
                            <div style="padding: 10px 10px 5px 10px; text-align: center;">
                                <div>
                                    <table class="gen" style="width: 95%; text-align: left;" border="0" cellpadding="4px"
                                        cellspacing="0">
                                        <tr>
                                            <td style="padding-left: 20px;" colspan="2">
                                                &nbsp;</td>
                                            <td style="padding-left: 20px;" colspan="2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 18%; padding-left: 20px;">
                                               House Number</td>
                                            <td style="width: 32%;">
                                               <asp:TextBox id="txt_PAddress" runat="server" CssClass="inputaa" 
                                                    MaxLength="20"  ></asp:TextBox>
                                                <asp:RequiredFieldValidator id="RFVpaddress" runat="server" ForeColor="#804000" 
                                                    ErrorMessage="Enter Valid Permanent Address" Display="Dynamic" 
                                                    ControlToValidate="txt_PAddress" ValidationGroup="reg">*</asp:RequiredFieldValidator>
                                                </td>
                                            <td style="width: 18%; padding-left: 20px;">
                                                House Number</td>
                                            <td style="width: 32%;">
                                                  <asp:TextBox id="txt_CAddress" runat="server" CssClass="inputaa" MaxLength="20"></asp:TextBox>
                                                  <asp:RequiredFieldValidator id="RFVcaddress" runat="server" ForeColor="Maroon" ErrorMessage="Enter Valid Correspondance Address" Display="Dynamic" ControlToValidate="txt_CAddress"  ValidationGroup="reg">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 18%; padding-left: 20px;">
                                                Area/Colony/ <br />Sector/village
                                            </td>
                                            <td style="width: 32%;">
                                               <asp:TextBox ID="txtarea" runat="server" CssClass="inputaa" MaxLength="30"></asp:TextBox>
                                               <asp:RequiredFieldValidator id="RequiredFieldValidatorrr" runat="server" 
                                                    ForeColor="#804000" ErrorMessage="Enter Valid Area" Display="Dynamic" 
                                                    ControlToValidate="txtarea" ValidationGroup="reg">*</asp:RequiredFieldValidator>
                                             </td>
                                            <td style="width: 18%; padding-left: 20px;">
                                                Area/Colony/ <br />Sector/village</td>
                                            <td style="width: 32%;">
                                                <asp:TextBox ID="txtcarea" runat="server"  CssClass="inputaa" MaxLength="30"></asp:TextBox>
                                                <asp:RequiredFieldValidator id="RequiredFieldValidatordsds1" runat="server" ForeColor="#804000" ErrorMessage="Enter Valid Area" Display="Dynamic" ControlToValidate="txtcarea"  ValidationGroup="reg">*</asp:RequiredFieldValidator>
                                         </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 18%; padding-left: 20px;">
                                               Block</td>
                                            <td style="width: 32%;">
                                                <asp:TextBox ID="txtblock" runat="server" CssClass="inputaa" MaxLength="30"></asp:TextBox>
                                               <asp:RequiredFieldValidator id="RequiredFieldValidatsor1" runat="server" 
                                                    ForeColor="#804000" ErrorMessage="Enter Valid Block" Display="Dynamic" 
                                                    ControlToValidate="txtblock" ValidationGroup="reg">*</asp:RequiredFieldValidator>
                                             </td>
                                            <td style="width: 18%; padding-left: 20px;">
                                               Block</td>
                                            <td style="width: 32%;">
                                               <asp:TextBox ID="txtcblock" runat="server" CssClass="inputaa" MaxLength="30"></asp:TextBox>
                                               <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ForeColor="#804000" ErrorMessage="Enter Corrospondance Valid Block" Display="Dynamic" ControlToValidate="txtcblock"  ValidationGroup="reg">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 18%; padding-left: 20px;">
                                                Distict</td>
                                            <td style="width: 32%;">
                                               <asp:TextBox ID="txt_PTehsil" runat="server" CssClass="inputaa" MaxLength="40"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RFVpteh" runat="server" 
                                                    ControlToValidate="txt_PTehsil" Display="Dynamic" 
                                                    ErrorMessage="Enter Valid Permanent Address District" ForeColor="#804000" 
                                                    ValidationGroup="reg">*</asp:RequiredFieldValidator>
                                             </td>
                                            <td style="width: 18%; padding-left: 20px;">
                                                Distict</td>
                                            <td style="width: 32%;">
                                               <asp:TextBox ID="txt_CTehsil" runat="server" CssClass="inputaa" MaxLength="40"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RFVctehsil" runat="server" ControlToValidate="txt_CTehsil" Display="Dynamic" ErrorMessage="Enter Valid Correspondance Address District" ForeColor="Maroon"  ValidationGroup="reg">*</asp:RequiredFieldValidator>
                                             </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 18%; padding-left: 20px;">
                                                State</td>
                                            <td style="width: 32%;">
                                                <asp:DropDownList ID="drppdistrict" runat="server" AppendDataBoundItems="True" CssClass="inputaa">
                                                    <asp:ListItem Value="...">...</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:CompareValidator ID="cmppdistrict" runat="server" 
                                                    ControlToValidate="drppdistrict" Display="Dynamic" 
                                                    ErrorMessage="Select Valid Permanent District" ForeColor="#804000" 
                                                    Operator="NotEqual" ValueToCompare="..." ValidationGroup="reg">*</asp:CompareValidator>
                                            </td>
                                            <td style="width: 18%; padding-left: 20px;">
                                                State</td>
                                            <td style="width: 32%;">
                                                <asp:DropDownList ID="Drpcdistrict" runat="server" AppendDataBoundItems="True" CssClass="inputaa">
                                                    <asp:ListItem Value="...">...</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:CompareValidator ID="cmpcdistrict" runat="server" ControlToValidate="Drpcdistrict" Display="Dynamic" ErrorMessage="Select Valid Correspondence District" ForeColor="#804000" Operator="NotEqual" ValueToCompare="..."  ValidationGroup="reg">*</asp:CompareValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 18%; padding-left: 20px;">
                                                Pin Code</td>
                                            <td style="width: 32%;">
                                                <asp:TextBox ID="txt_PPinCode" runat="server" CssClass="inputaa" MaxLength="6"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RFVppincode" runat="server" 
                                                    ControlToValidate="txt_PPinCode" Display="Dynamic" 
                                                    ErrorMessage="Enter Valid Permanent Pin Code" ForeColor="#804000" 
                                                    ValidationGroup="reg">*</asp:RequiredFieldValidator>
                                                <cc1:FilteredTextBoxExtender ID="ValidatePPin" runat="server" FilterType="Numbers" TargetControlID="txt_PPinCode"></cc1:FilteredTextBoxExtender>
                                            </td>
                                            <td style="width: 18%; padding-left: 20px;">
                                                Pin Code</td>
                                            <td style="width: 32%;">
                                                <asp:TextBox ID="txt_CPinCode" runat="server" CssClass="inputaa" MaxLength="6"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RFVcpin" runat="server" ControlToValidate="txt_CPinCode" Display="Dynamic" ErrorMessage="Enter Valid Correspondance Address Pin Code" ForeColor="Maroon"  ValidationGroup="reg">*</asp:RequiredFieldValidator>
                                                <cc1:FilteredTextBoxExtender ID="ValidateCPin" runat="server" FilterType="Numbers" TargetControlID="txt_CPinCode"></cc1:FilteredTextBoxExtender>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 18%; padding-left: 20px;">
                                                Alternative
                                                Contact Number</td>
                                            <td style="width: 32%;">
                                                <asp:TextBox ID="txt_PTelephone" runat="server" CssClass="inputaa" MaxLength="11"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RFVptelphone" runat="server" 
                                                    ControlToValidate="txt_PTelephone" Display="Dynamic" 
                                                    ErrorMessage="Enter Valid Permanent Telephone Number" ForeColor="#804000" 
                                                    ValidationGroup="reg">*</asp:RequiredFieldValidator>
                                                <cc1:FilteredTextBoxExtender ID="cp" runat="server" FilterType="Numbers" TargetControlID="txt_PTelephone" ></cc1:FilteredTextBoxExtender>
                                            </td>
                                            <td style="width: 18%; padding-left: 20px;">
                                                Alternative
                                                Contact Number</td>
                                            <td style="width: 32%;">
                                                <asp:TextBox ID="txt_CTelephone" runat="server" CssClass="inputaa" MaxLength="10" ></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RFVctel" runat="server" ControlToValidate="txt_CTelephone" Display="Dynamic" ErrorMessage="Enter Valid Correspondance Telephone Number" ForeColor="Maroon"  ValidationGroup="reg">*</asp:RequiredFieldValidator>
                                                <cc1:FilteredTextBoxExtender ID="ValidateCTel" runat="server" FilterType="Numbers" TargetControlID="txt_CTelephone"></cc1:FilteredTextBoxExtender>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 18%; padding-left: 20px;">
                                                Alternative Email </td>
                                            <td style="width: 32%;">
                                                <asp:TextBox ID="txt_PEmail" runat="server" CssClass="inputaa" MaxLength="50" ></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_PEmail" Display="Dynamic" ErrorMessage="Enter Valid Correspondance Telephone Number" ForeColor="Maroon"  ValidationGroup="reg">*</asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="REVpemail" runat="server" 
                                                    ControlToValidate="txt_PEmail" Display="Dynamic" 
                                                    ErrorMessage="Enter Valid E-Mail Address" ForeColor="#804000" 
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="reg" >*</asp:RegularExpressionValidator>
                                            </td>
                                            <td style="width: 18%; padding-left: 20px;">
                                                &nbsp;</td>
                                            <td style="width: 32%;">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="padding-left: 20px;" colspan="4">
                                                <asp:CheckBox ID="Chk_SameAddress" runat="server"  onChange="syncAddress();"
                                                    Text="Click for Correspondence Address Same As Permanent Address" 
                                                    Width="626px" />
                                            </td>
                                        </tr>
                                        </table>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                  
                </div>
                  <div style="text-align: right; width: 90%; padding-top: 10px; padding-bottom:6px;">
                        <table style="width: 100%">
                            <tr>
                                <td style="width: 70%; text-align: left; vertical-align: top;">
                                    <asp:Label ID="lblErrMsg" runat="server" CssClass="red_text"></asp:Label>
                                    <asp:HiddenField ID="hfregistration" runat="server" />
                                    <asp:HiddenField ID="hfname" runat="server" />
                                    <asp:HiddenField ID="hfaadharcard" runat="server" />
                                    <asp:HiddenField ID="hfdob" runat="server" />
                                </td>
                                <td style="width: 30%; vertical-align: top;">
                                    <fieldset style="width: 85%; padding: 8px; text-align: center;">
                                        <asp:Button ID="btnSave" runat="server" Text="Proceed Next" 
                                            onclick="btnSave_Click" BackColor="White" Font-Bold="True" 
                                            Font-Size="Large" ForeColor="Red" Height="50px"  
                                            ValidationGroup="reg" style="margin-bottom: 1px" />
                                      
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

