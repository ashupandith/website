using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;
using PassportBusiness;
using System.Data.SqlClient;
using System.Text;
using System.Security.Cryptography;


public partial class RegprintsetAgain_BOA : System.Web.UI.Page
{
    Entrydetail entryobj = new Entrydetail();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HPSCDBNEW"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

        GetRecord();
    }
    
    private void GetRecord()
    {
        try
        {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["HPSCDBNEW"].ConnectionString);
        cn.Open();
        String sql = "SELECT b.Post_Name,a.RegestrationNumber,a.CandidateName,a.FatherHusbandName,a.MotherName,a.Gender,a.MaritalStatus,a.Address,a.Block,a.Area,a.City,d.District_Name as State,a.PinCode,a.PermanentAddress,a.Permanentarea,a.PermanentBlock,a.PermanentCity,d.District_Name as PermanentState,a.PermanentPinCode,a.Nationality,a.Perma_contact,a.Corres_contact , CONVERT(VARCHAR(20), a.DOB, 103) as DOBB,a.Email,a.MaritalStatus,c.cat_name as Category  FROM ApplicantDetails a, TblPost b,tblcatgory c,Tbl_District d where a.PostCode=b.Id and a.Category=c.id and a.State=d.District_id and a.RegestrationNumber=@RegestrationNumber and a.status=1 and a.IsPayment =1";
        SqlCommand cmd = new SqlCommand(sql, cn);
        cmd.Parameters.AddWithValue("@RegestrationNumber", Session["RegestrationNumber"].ToString());
       SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            lbl_Stream.Text = ds.Tables[0].Rows[0]["Post_Name"].ToString();
            lbl_formno.Text = ds.Tables[0].Rows[0]["RegestrationNumber"].ToString();
            lbl_name.Text = ds.Tables[0].Rows[0]["CandidateName"].ToString();
            lbl_fname.Text = ds.Tables[0].Rows[0]["FatherHusbandName"].ToString();
            lbl_mname.Text = ds.Tables[0].Rows[0]["MotherName"].ToString();
            lbl_Category.Text = ds.Tables[0].Rows[0]["Category"].ToString();
            lbl_DOB.Text = ds.Tables[0].Rows[0]["DOBB"].ToString();
            switch (ds.Tables[0].Rows[0]["Gender"].ToString())
            {
                case "M":
                    this.lbl_gender.Text = "Male";
                    break;
                case "F":
                    this.lbl_gender.Text = "Female";
                    break;
            }

            lbl_marital.Text = ds.Tables[0].Rows[0]["MaritalStatus"].ToString();

            lbldistrict.Text = ds.Tables[0].Rows[0]["State"].ToString();



            // other Details End


            // Address Start
            lbl_PA.Text = ds.Tables[0].Rows[0]["Address"].ToString() + "," + ds.Tables[0].Rows[0]["State"].ToString() + "," + ds.Tables[0].Rows[0]["City"].ToString() + "-" + ds.Tables[0].Rows[0]["PinCode"].ToString() + ",Ph:" + ds.Tables[0].Rows[0]["Perma_contact"].ToString();
            lbl_email.Text = ds.Tables[0].Rows[0]["Email"].ToString();
            lbl_CA.Text = ds.Tables[0].Rows[0]["PermanentAddress"].ToString() + "," + ds.Tables[0].Rows[0]["PermanentState"].ToString() + "," + ds.Tables[0].Rows[0]["PermanentCity"].ToString() + "-" + ds.Tables[0].Rows[0]["PermanentPinCode"].ToString() + ",Ph:" + ds.Tables[0].Rows[0]["Corres_contact"].ToString();

            DataSet ds1 = new DataSet();
            ds1 = Entrydetail.bind_repeter(Session["RegestrationNumber"].ToString());
            Repeater1.DataSource = ds1;
            Repeater1.DataBind();

            DataSet dsExp = new DataSet();
            dsExp = Entrydetail.bind_repeterEXP(Session["RegestrationNumber"].ToString());
            Repeater2.DataSource = dsExp;
            Repeater2.DataBind();
            // image Bind
            Image1.ImageUrl = "~/ShowImage.ashx?id=" + Session["RegestrationNumber"].ToString();
            Image2.ImageUrl = "~/ShowImage2.ashx?id=" + Session["RegestrationNumber"].ToString();
            Label7.Text = "Printing Again. Amount has been paid  earlier";
        }
        else
        {
            Label7.Text = "Incomplete Form Please Update your Detail.";
            
        }
        }
        catch (Exception ex)
        {
            // Log the exception                      
            Response.Redirect("RegistrationErr.aspx");
        }
        finally
        {
        }  
    }
    public string Generatehash512(string text)
    {
        byte[] message = Encoding.UTF8.GetBytes(text);

        UnicodeEncoding UE = new UnicodeEncoding();
        byte[] hashValue;
        SHA512Managed hashString = new SHA512Managed();
        string hex = "";
        hashValue = hashString.ComputeHash(message);
        foreach (byte x in hashValue)
        {
            hex += String.Format("{0:x2}", x);
        }
        return hex;
    }
}

