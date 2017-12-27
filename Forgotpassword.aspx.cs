using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PassportBusiness;
using System.Data.SqlClient;
using  System.Data;
using System.Configuration;
using System.Data.SqlClient;
using PassportBusiness;
using System.Text;
using System.Net;
using System.Net.Mail;
public partial class Forgotpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bind_Post();
        }
    }
    private void bind_Post()
    {

    }
    protected void btnprint_Click(object sender, EventArgs e)
    {
         SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["HPSCDBNEW"].ConnectionString);
        cn.Open();
        String sqlaadhar = "select RegestrationNumber,Email_field,Password from  ApplicantDetails where  RegestrationNumber=@RegestrationNumber";
        SqlCommand cmdaadhar = new SqlCommand(sqlaadhar, cn);
        cmdaadhar.Parameters.AddWithValue("@RegestrationNumber", txtRegno.Text.Trim());
        SqlDataAdapter daaadhar = new SqlDataAdapter(cmdaadhar);
        DataSet dsaadhar = new DataSet();
        daaadhar.Fill(dsaadhar);
        if (dsaadhar.Tables[0].Rows.Count > 0)
        {

            try
            {
                MailMessage Msg = new MailMessage();
                // Sender e-mail address.
                Msg.From = new MailAddress("hsrlmonline@gmail.com");
                // Recipient e-mail address.
                Msg.To.Add(dsaadhar.Tables[0].Rows[0]["Email_field"].ToString());
                Msg.Subject = "You have been registered for the online application";
                Msg.Body = "Your Registration number is " + dsaadhar.Tables[0].Rows[0]["RegestrationNumber"].ToString() + " and Password is " + dsaadhar.Tables[0].Rows[0]["Password"].ToString();
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("hsrlmonline@gmail.com", "hsrlm@123");
                smtp.EnableSsl = true;
                smtp.Send(Msg);
                Msg = null;
                lblmsg.Text = "Email Send to your registered Email Id. Please go to the login page and register again  <a href = 'HomePage.aspx'  target=_blank>Click Here</a>" ;

            }
            catch (Exception ex)
            {
                Console.WriteLine("{0} Exception caught.", ex);
            }
        }
        else
        {
            lblmsg.Text = "Your Registration Number is not valid";
        }
        
    }


  
        
    
}