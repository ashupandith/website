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
using System.Data.SqlClient;
using PassportBusiness;
using System.Text;
using System.Net;
using System.Net.Mail;

public partial class Registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HPSCDBNEW"].ConnectionString);
    Entrydetail entryobj = new Entrydetail();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bind_Post();
        }

    }
  
    protected void btnSave_Click(object sender, EventArgs e)
    {
        lblErrMsg.Text = "";
        var dateformat = DateTime.Parse(txtDOb.Text);
        string datea = dateformat.ToString("yyyy-MM-dd");
        DateTime d1 = new DateTime(2017, 12, 31);
        DateTime d2 = Convert.ToDateTime(datea);
        dateclass date = new dateclass();
        date = date.DateDifference(d1, d2);
        Int32 year = date.Pyear;
        Int32 month = date.Pmonth;
        Int32 day = date.Pday;
        double Age = year + month / 12 + day / 30.5;
      bool abc = Verhoeff.validateVerhoeff(TxtAdhaarNo.Text);
        if (abc == true)
        {
          
            con.Open();
            SqlCommand cmd = new SqlCommand("Select Start_Date,End_Date FROM tblpost where Id ='" + ddlpost.SelectedValue +"'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet dsAge = new DataSet();
            da.Fill(dsAge);
            lblaadharerror.Text = "";
            if (Age >= Convert.ToInt32(dsAge.Tables[0].Rows[0]["Start_Date"]) && rbtnGover.SelectedValue == "No" && Age <= Convert.ToInt32(dsAge.Tables[0].Rows[0]["End_Date"]))
            {
                entryobj.PostCode = ddlpost.SelectedValue;
                entryobj.CandidateName = txtName.Text.Trim();
                entryobj.FatherHusbandName = txtFname.Text.Trim();
                entryobj.MotherName = txtMname.Text.Trim();
                entryobj.Aadharnumber = TxtAdhaarNo.Text.Trim();
                entryobj.Retiredemployee = rbtnGover.SelectedValue;
                IFormatProvider provider = new System.Globalization.CultureInfo("en-CA", true);
                String datetime = txtDOb.Text.Trim();
                Session["PostCode"] = ddlpost.SelectedValue;
                Session["PostName"] = ddlpost.SelectedItem.Text;
                Session["CandidateName"] = txtName.Text.Trim();
                Session["FatherHusbandName"] = txtFname.Text.Trim();
                Session["MotherName"] = txtMname.Text.Trim();
                Session["DOB"] = txtDOb.Text.Trim();
                CheckIfExist();
               
            }
            else if (Age >= Convert.ToInt32(dsAge.Tables[0].Rows[0]["Start_Date"]) && Age <= 62 && rbtnGover.SelectedValue == "Yes")
            {
                entryobj.PostCode = ddlpost.SelectedValue;
                entryobj.CandidateName = txtName.Text.Trim();
                entryobj.FatherHusbandName = txtFname.Text.Trim();
                entryobj.MotherName = txtMname.Text.Trim();
                IFormatProvider provider = new System.Globalization.CultureInfo("en-CA", true);
                String datetime = txtDOb.Text.Trim();
                Session["PostCode"] = ddlpost.SelectedValue;
                Session["PostName"] = ddlpost.SelectedItem.Text;
                Session["CandidateName"] = txtName.Text.Trim();
                Session["FatherHusbandName"] = txtFname.Text.Trim();
                Session["MotherName"] = txtMname.Text.Trim();
                Session["DOB"] = txtDOb.Text.Trim();
                Session["Aadharnumber"] = txtDOb.Text.Trim();
                CheckIfExist();
               
            }
            else
            {
                if (rbtnGover.SelectedValue == "Yes" && Age >= Convert.ToInt32(dsAge.Tables[0].Rows[0]["Start_Date"]) && Age >= 62)
                {
                    lblErrMsg.Text = "You are Over Age";
                    lblErrMsg.Visible = true;
                }
                else
                {
                    if (Age <= Convert.ToInt32(dsAge.Tables[0].Rows[0]["Start_Date"]) && Age <= Convert.ToInt32(dsAge.Tables[0].Rows[0]["End_Date"]))
                    {
                        lblErrMsg.Text = "You are Under Age";
                        lblErrMsg.Visible = true;
                    }
                    else
                    {
                        lblErrMsg.Text = "You are Over Age";
                        lblErrMsg.Visible = true;
                    }
                   

                }
            }
         
        }
        else
        {
            lblaadharerror.Text = "Aadhar card is not valid";
        }

    }
    private void bind_Post()
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HPSCDBNEW"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select id,Post_name FROM tblpost", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        ddlpost.DataSource = ds;            
        ddlpost.DataTextField = "Post_name";
        ddlpost.DataValueField = "id";
        ddlpost.DataBind();
        ddlpost.Items.Insert(0, new ListItem("--Select--", "0"));
        con.Close();
    }
    private void CheckIfExist()
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["HPSCDBNEW"].ConnectionString);
        cn.Open();
        String sqlaadhar = "select * from  ApplicantDetails where  Aadharnumber=@Aadharnumber and PostCode=@PostCode";
        SqlCommand cmdaadhar = new SqlCommand(sqlaadhar, cn);
        cmdaadhar.Parameters.AddWithValue("@POSTCODE", Convert.ToInt32(ddlpost.SelectedValue));
        cmdaadhar.Parameters.AddWithValue("@Aadharnumber", TxtAdhaarNo.Text.Trim());
        SqlDataAdapter daaadhar = new SqlDataAdapter(cmdaadhar);
        DataSet dsaadhar = new DataSet();
        daaadhar.Fill(dsaadhar);
        if (dsaadhar.Tables[0].Rows.Count > 0 && dsaadhar.Tables[0].Rows[0]["PostCode"].ToString() == ddlpost.SelectedValue)
        {
            lblErrMsg.Text = "You have alredy applied for this Post. Please login with User Name and Password send on your registered Email.  <a href = 'HomePage.aspx'  target=_blank>Click Here</a> ";
        }
        else
        {
            String sql = "select * from  ApplicantDetails where (CandidateName = @Name and FatherHusbandName=@FName and MotherName = @MName AND PostCode = @PostCode) and Aadharnumber=@Aadharnumber";
            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
            cmd.Parameters.AddWithValue("@FName", txtFname.Text.Trim());
            cmd.Parameters.AddWithValue("@MName", txtMname.Text.Trim());
            cmd.Parameters.AddWithValue("@POSTCODE", Convert.ToInt32(ddlpost.SelectedValue));
            cmd.Parameters.AddWithValue("@Aadharnumber", TxtAdhaarNo.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DataSet R = new DataSet();
                Session["RegestrationNumber"] = ds.Tables[0].Rows[0]["RegestrationNumber"].ToString();
                Session["PostCode"] = ds.Tables[0].Rows[0]["PostCode"].ToString();
                Session["PostName"] = ddlpost.SelectedItem.Text;
                Session["Aadharnumber"] = ds.Tables[0].Rows[0]["Aadharnumber"].ToString();
                Session["Password"] = ds.Tables[0].Rows[0]["Password"].ToString();
                Session["data"] = ds;
                Session["addedit"] = 1;
                Response.Redirect("Register2.aspx");
            }
            else
            {
                DataSet R = new DataSet();
                entryobj.PostCode = ddlpost.SelectedValue;
                entryobj.Aadharnumber = TxtAdhaarNo.Text.Trim();
                entryobj.Retiredemployee = rbtnGover.SelectedItem.Text;
               entryobj.RegestrationNumber = "";
                entryobj.CandidateName = txtName.Text.Trim();
                entryobj.FatherHusbandName = txtFname.Text.Trim();
                entryobj.MotherName = txtMname.Text.Trim();
                entryobj.DOB = Convert.ToDateTime(txtDOb.Text);
                string Password = CreateRandomPassword(8);
                entryobj.Password = Password;
                entryobj.Mobile_Number = txtmobilenumber.Text.Trim();
                entryobj.Email_field = txtemail.Text.Trim();
                R = entryobj.CreateRecord();
                SqlDataAdapter aaa = new SqlDataAdapter(cmdaadhar);
               
                String sqlaa = "select * from  ApplicantDetails where PostCode = @PostCode and Aadharnumber=@Aadharnumber";
                SqlCommand cmdaa = new SqlCommand(sqlaa, cn);
                cmdaa.Parameters.AddWithValue("@POSTCODE", Convert.ToInt32(ddlpost.SelectedValue));
                cmdaa.Parameters.AddWithValue("@Aadharnumber", TxtAdhaarNo.Text);
                 SqlDataAdapter daaa = new SqlDataAdapter(cmd);
                 DataSet aa = new DataSet();
                 daaa.Fill(aa);
                 if (aa.Tables[0].Rows.Count > 0)
                 {

                     Session["RegestrationNumber"] = aa.Tables[0].Rows[0]["RegestrationNumber"].ToString();
                     Session["data"] = R;
                     Session["addedit"] = 0;
                     // Session["RegestrationNumber"] = builder.ToString();
                     Session["Aadharnumber"] = TxtAdhaarNo.Text.Trim();
                     Session["Password"] = Password;
                     try
                     {
                         MailMessage Msg = new MailMessage();
                         // Sender e-mail address.
                         Msg.From = new MailAddress("hsrlmonline@gmail.com");
                         // Recipient e-mail address.
                         Msg.To.Add(txtemail.Text.Trim());
                         Msg.Subject = "You have been registered for the online application";
                         Msg.Body = "You have applied for the post" + ddlpost.SelectedItem.Text + "in HSRLM,Panchkula . Your Registration number is " + Session["RegestrationNumber"] + " and Password is " + Session["Password"];

                         SmtpClient smtp = new SmtpClient();
                         smtp.Host = "smtp.gmail.com";
                         smtp.Port = 587;
                         smtp.Credentials = new System.Net.NetworkCredential("hsrlmonline@gmail.com", "hsrlm@123");
                         smtp.EnableSsl = true;
                         smtp.Send(Msg);
                         Msg = null;

                     }
                     catch (Exception ex)
                     {
                         Console.WriteLine("{0} Exception caught.", ex);
                     }



                     Response.Redirect("Register2.aspx");
                 }
                 lblErrMsg.Text = "Yor are over Age";
               
            }
        }
        
           
        

    }
    private int RandomNumber(int min, int max)
    {
        Random random = new Random();
        return random.Next(min, max);
    }
    protected void TxtAdhaarNo_TextChanged(object sender, EventArgs e)
    {
          bool abc = Verhoeff.validateVerhoeff(TxtAdhaarNo.Text);
          if (abc == true)
          {

          }
          else
          {
              lblaadharerror.Text = "Aadhar card is not valid";
          }
    }
    public static string CreateRandomPassword(int PasswordLength)
    {
        string _allowedChars = "0123456789abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ";
        Random randNum = new Random();
        char[] chars = new char[PasswordLength];
        int allowedCharCount = _allowedChars.Length;
        for (int i = 0; i < PasswordLength; i++)
        {
            chars[i] = _allowedChars[(int)((_allowedChars.Length) * randNum.NextDouble())];
        }
        return new string(chars);
    }
}