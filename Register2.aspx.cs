using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PassportBusiness;
using System.IO;
using System.Web.UI.WebControls;
using System.Web;
using System.Drawing;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
using System.Net;
using System.Net.Mail;


public partial class Register2 : System.Web.UI.Page
{
    Int64 r;
    Entrydetail entryobj = new Entrydetail();
    protected void Page_PreLoad(object sender, EventArgs e)
    {
        lblpostcode.Text = Session["PostCode"].ToString();
       
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
      
          
           
             bind_Post();

            drpCategory.DataSource = Entrydetail.fillcategory();
            drpCategory.DataTextField = "cat_name";
            drpCategory.DataValueField = "id";
           drpCategory.DataBind();
            drpCategory.Items.Insert(0, new ListItem("--Select--", "0"));

            lblpostcode.Text = Session["PostCode"].ToString();
            lblname.Text = Session["CandidateName"].ToString();
            lblfname.Text = Session["FatherHusbandName"].ToString();
            lblmname.Text = Session["MotherName"].ToString();
            lblrgistration.Text = Session["RegestrationNumber"].ToString();
            lblpost.Text = Session["PostName"].ToString();
            lblaadhar.Text = Session["Aadharnumber"].ToString();
            lbldob.Text = Session["DOB"].ToString();
            lblpass.Text= Session["Password"].ToString();
            if (Convert.ToInt16(Session["addedit"].ToString()) == 0)
            {
                trcategory.Visible = true;
                trsubcategory.Visible = true;
             //   trsubcattype.Visible = false;
               // trdateofjoining.Visible = false;
              //  trdateofrelese.Visible = false;
              //  trcertificate.Visible = false;
             //   trcertificateissuedate.Visible = false;
              //  trcertificateissueauthority.Visible = false;
             //   trcertificateissueauthorityEmail.Visible = false;


            }
            else
            {
                DataSet ds = new DataSet();
                ds = (DataSet)Session["data"];

                Session["data"] = ds;
                drpGender.SelectedValue = ds.Tables[0].Rows[0]["Gender"].ToString();
                drpmarital.SelectedValue = ds.Tables[0].Rows[0]["MaritalStatus"].ToString();
                drpCategory.SelectedValue = ds.Tables[0].Rows[0]["Category"].ToString();
                           
                drpnationality.SelectedValue = ds.Tables[0].Rows[0]["Nationality"].ToString();
                drpsubcat.SelectedValue = ds.Tables[0].Rows[0]["Sub_Category"].ToString();
                drpphyhani.SelectedValue = ds.Tables[0].Rows[0]["Handicap_Sub_Category"].ToString();
                txtcertiname.Text = ds.Tables[0].Rows[0]["Certificate_Number"].ToString();
                txtissueauthority.Text = ds.Tables[0].Rows[0]["Issuing_Authority"].ToString();
                txtissueauthorityemail.Text = ds.Tables[0].Rows[0]["Issuing_Authority_Email"].ToString();
                if (ds.Tables[0].Rows[0]["Issue_Date"].ToString() == "1900-01-01 00:00:00" || ds.Tables[0].Rows[0]["Issue_Date"].ToString() == null || ds.Tables[0].Rows[0]["Issue_Date"].ToString() =="")
                {
                    txtissuedate.Text = "";
                }
                else
                {
                    DateTime dt = DateTime.Parse(ds.Tables[0].Rows[0]["Issue_Date"].ToString());
                    txtissuedate.Text = dt.ToShortDateString();

                }
                TxtEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                txtdebard.Text = ds.Tables[0].Rows[0]["debarredGovt"].ToString();
                txtarea.Text = ds.Tables[0].Rows[0]["Block"].ToString();
                txtblock.Text = ds.Tables[0].Rows[0]["Area"].ToString();
                txtcarea.Text = ds.Tables[0].Rows[0]["Permanentarea"].ToString();
                txtcblock.Text = ds.Tables[0].Rows[0]["PermanentBlock"].ToString();
             
                   
                    drpsubcattype.SelectedValue = ds.Tables[0].Rows[0]["Sub_CategoryType"].ToString();


                    if (ds.Tables[0].Rows[0]["JoiningDate"].ToString() == "1900-01-01 00:00:00" || ds.Tables[0].Rows[0]["JoiningDate"].ToString() == null || ds.Tables[0].Rows[0]["JoiningDate"].ToString() == "")
                    {
                        txtsubcatdatejoin.Text = "";
                    }
                    else
                    {
                        DateTime dt1 = DateTime.Parse(ds.Tables[0].Rows[0]["JoiningDate"].ToString());
                        txtsubcatdatejoin.Text = dt1.ToShortDateString();
                    }
                    if (ds.Tables[0].Rows[0]["LeavingDate"].ToString() == "1900-01-01 00:00:00" || ds.Tables[0].Rows[0]["LeavingDate"].ToString() == null || ds.Tables[0].Rows[0]["LeavingDate"].ToString() == "")
                    {
                        txtsubcatdaterel.Text = "";
                    }
                    else
                    {
                        DateTime dt2 = DateTime.Parse(ds.Tables[0].Rows[0]["LeavingDate"].ToString());
                        txtsubcatdaterel.Text = dt2.ToShortDateString();
                    }

          
                    
                
                txt_PAddress.Text = ds.Tables[0].Rows[0]["PermanentAddress"].ToString();
                txt_PTehsil.Text = ds.Tables[0].Rows[0]["PermanentCity"].ToString();
                drppdistrict.SelectedValue = ds.Tables[0].Rows[0]["PermanentState"].ToString();
                txt_PPinCode.Text = ds.Tables[0].Rows[0]["PermanentPinCode"].ToString();
                txt_PTelephone.Text = ds.Tables[0].Rows[0]["Perma_contact"].ToString();
                txt_PEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                txt_CAddress.Text = ds.Tables[0].Rows[0]["Address"].ToString();
                txt_CTehsil.Text = ds.Tables[0].Rows[0]["City"].ToString();
                Drpcdistrict.SelectedValue = ds.Tables[0].Rows[0]["State"].ToString();
                txt_CPinCode.Text = ds.Tables[0].Rows[0]["PinCode"].ToString();
                txt_CTelephone.Text = ds.Tables[0].Rows[0]["Corres_contact"].ToString();
                txtpostapplied.Text = ds.Tables[0].Rows[0]["Postapplied"].ToString();
                txtpostyear.Text = ds.Tables[0].Rows[0]["Year"].ToString();
                txtnationality.Text = ds.Tables[0].Rows[0]["NationalityName"].ToString();
                drpmaritalStatus.SelectedValue = ds.Tables[0].Rows[0]["Matrialstatustype"].ToString();
                txtshg.Text = ds.Tables[0].Rows[0]["SHG"].ToString();
                txthsrl.Text = ds.Tables[0].Rows[0]["HSRLM"].ToString();
                drpcardre.SelectedValue= ds.Tables[0].Rows[0]["Cadre"].ToString();
            }

        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {


        if (lblrgistration.Text.Trim() == "")
        {
            Response.Redirect("Regstration.aspx");
        }
        else
        {
            entryobj.RegestrationNumber = lblrgistration.Text.Trim();
        }
        entryobj.Gender = drpGender.SelectedValue;
        entryobj.MaritalStatus = drpmarital.SelectedValue;
        entryobj.Category = drpCategory.SelectedValue;
        entryobj.Nationality = drpnationality.SelectedValue;
        entryobj.Sub_Category = drpsubcat.SelectedValue;
        entryobj.Sub_Categorytype = drpsubcattype.SelectedValue;
        if (txtsubcatdatejoin.Text == "")
        {
            entryobj.JoiningDate = Convert.ToDateTime("1900-01-01");
        }
        else
        {
            entryobj.JoiningDate = Convert.ToDateTime(txtsubcatdatejoin.Text.Trim());
        }
        if (txtsubcatdaterel.Text == "")
        {
            entryobj.LeavingDate = Convert.ToDateTime("1900/01/01");
        }
        else
        {
            entryobj.LeavingDate = Convert.ToDateTime(txtsubcatdaterel.Text.Trim());
        }
        if (txtissuedate.Text == "")
        {
            entryobj.Issue_Date = Convert.ToDateTime("1900/01/01");
        }
        else
        {
            entryobj.Issue_Date = Convert.ToDateTime(txtissuedate.Text.Trim());
        }
        entryobj.Handicap_Sub_Category = drpphyhani.SelectedValue;
        entryobj.Certificate_Number = txtcertiname.Text.Trim();
        
        entryobj.Issuing_Authority = txtissueauthority.Text.Trim();
        entryobj.Issuing_Authority_Email = txtissueauthorityemail.Text.Trim();

        entryobj.Email = txt_PEmail.Text.Trim();
        entryobj.debarredGovt = txtdebard.Text.Trim();
        entryobj.PermanentAddress = txt_PAddress.Text.Trim();
        entryobj.PermanentState = drppdistrict.SelectedValue;
        entryobj.PermanentCity = txt_PTehsil.Text.Trim();
        entryobj.PermanentPinCode = Convert.ToInt32(txt_PPinCode.Text.Trim());
        entryobj.Contact_Number = txt_PTelephone.Text.Trim();
        entryobj.Address = txt_CAddress.Text.Trim();
        entryobj.State = drppdistrict.SelectedValue;
        entryobj.City = txt_CTehsil.Text.Trim();
        entryobj.PinCode = Convert.ToInt32(txt_CPinCode.Text.Trim());
        entryobj.P_contactnumber = txt_PTelephone.Text.Trim();
        entryobj.C_contactnumber = txt_CTelephone.Text.Trim();
        entryobj.Area = txtarea.Text.Trim();
        entryobj.Block = txtblock.Text.Trim();
        entryobj.PermanentArea = txtcarea.Text.Trim();
        entryobj.PermanentBlock = txtcblock.Text.Trim();
        entryobj.NationalityName = txtnationality.Text.Trim();
        entryobj.Postapplied = txtpostapplied.Text.Trim();
        entryobj.Year = txtpostyear.Text.Trim();
        entryobj.Matrialstatustype = drpmaritalStatus.SelectedValue;
        entryobj.SHG = txtshg.Text.Trim();
        entryobj.HSRLM = txthsrl.Text.Trim();
        entryobj.Cadre = drpcardre.SelectedValue;
        DataSet R;
        R = entryobj.UpdateRecord(Session["RegestrationNumber"].ToString());
        DataSet ds = new DataSet();
        ds = entryobj.find_record(lblrgistration.Text.Trim(), lblpass.Text.Trim());
        Session["data"] = ds;
        Session["RegestrationNumber"] = Session["RegestrationNumber"].ToString();






        Response.Redirect("Register3.aspx");
    }
    protected void drpCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
      
    }
    protected void Chk_SameAddress_CheckedChanged(object sender, EventArgs e)
    {
        if (Chk_SameAddress.Checked == true)
        {
            txt_CAddress.Text = txt_PAddress.Text.Trim();
            Drpcdistrict.SelectedIndex = drppdistrict.SelectedIndex;
            txt_CTehsil.Text = txt_PTehsil.Text.Trim();
            txt_CPinCode.Text = txt_PPinCode.Text.Trim();
            txt_CTelephone.Text = txt_PTelephone.Text.Trim();
            txtcblock.Text = txtblock.Text.Trim();
            txtcarea.Text = txtarea.Text.Trim();
        }
        else
        {
            txt_CAddress.Text = "";
            Drpcdistrict.SelectedIndex = 0;
            txt_CTehsil.Text = "";
            txt_CPinCode.Text = "";
            txt_CTelephone.Text = "";
        }
    }
    private void CheckIfExist()
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["HPSCDBNEW"].ConnectionString);
        cn.Open();
        String sql = "select count(*) as Record from  ApplicantDetails where CandidateName = @Name and FatherHusbandName=@FName and MotherName = @MName and DOB = @DOB AND PostCode = @PostCode";
        SqlCommand cmd = new SqlCommand(sql, cn);
        cmd.Parameters.AddWithValue("@Name", lblname.Text.Trim());
        cmd.Parameters.AddWithValue("@FName", lblfname.Text.Trim());
        cmd.Parameters.AddWithValue("@MName", lblmname.Text.Trim());
        cmd.Parameters.AddWithValue("@POSTCODE", lblpostcode.Text);
        IFormatProvider provider = new System.Globalization.CultureInfo("en-CA", true);
        String datetime = lbldob.Text.Trim();
        DateTime dt = DateTime.Parse(datetime, provider, System.Globalization.DateTimeStyles.NoCurrentDateDefault);
        cmd.Parameters.AddWithValue("@DOB", dt);
        //SqlCommand cmd = new SqlCommand(query, cn);
        string iemail = cmd.ExecuteScalar().ToString();

        //cn.Close();
        if (iemail == "0")
        {



            DataSet R = new DataSet();

            if (Convert.ToInt16(Session["addedit"].ToString()) == 1)
            {
                R = entryobj.CreateRecord();
                Session["data"] = R;
                Response.Redirect("Regprintset.aspx");

            }
            else
            {
                //entryobj.Postcode = Convert.ToInt32(ds.Tables[0].Rows[0]["PAddress"].ToString());
                R = entryobj.UpdateRecord(Session["RegestrationNumber"].ToString());
                Session["data"] = R;
                Response.Redirect("Regprintset.aspx");

            }
        }
        else
        {
            String sql1 = "select Regno from  SSB2010Entrydetail where Name = @Name and Fname=@FName and mname = @MName and DOb = @DOB and postcode = @postcode";
            SqlCommand cmd1 = new SqlCommand(sql1, cn);
            cmd1.Parameters.AddWithValue("@Name", lblname.Text.Trim());
            cmd1.Parameters.AddWithValue("@FName", lblfname.Text.Trim());
            cmd1.Parameters.AddWithValue("@MName", lblmname.Text.Trim());
            cmd1.Parameters.AddWithValue("@POSTCODE", Convert.ToInt32(lblpostcode.Text));


            String datetime1 = lbldob.Text.Trim();
            DateTime dt1 = DateTime.Parse(datetime, provider, System.Globalization.DateTimeStyles.NoCurrentDateDefault);
            cmd1.Parameters.AddWithValue("@DOB", dt1);
            SqlDataReader dr;
            dr = cmd1.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Session["regno"] = dr["Regno"].ToString();
                Session["edit"] = 1;
                Response.Redirect("Regedit.aspx");
            }



        }
    }
    protected void drpsubcat_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (drpsubcat.SelectedItem.Text == "ESM")
        {
            //trsubcattype.Visible = false;
         
          
        }

        else if (drpsubcat.SelectedItem.Text == "DESM")
        {
         //   trsubcattype.Visible = true;
       
          
        }
        else
        {
        //    trsubcattype.Visible = false;
        
          
        }
    }
    private void bind_Post()
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HPSCDBNEW"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * FROM Tbl_District", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Drpcdistrict.DataSource = ds;
        drppdistrict.DataSource = ds;
        Drpcdistrict.DataTextField = "District_Name";
        Drpcdistrict.DataValueField = "District_id";
        drppdistrict.DataTextField = "District_Name";
        drppdistrict.DataValueField = "District_id";
        Drpcdistrict.DataBind();
        drppdistrict.DataBind();

        con.Close();
    }

}