using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PassportBusiness;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class HomePage1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/paymentgateway.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/paymentgateway.aspx");
    }
    protected void btn_Login_Click(object sender, EventArgs e)
    {
        Entrydetail entryobj = new Entrydetail();
        DataSet ds = new DataSet();
        ds = entryobj.find_record(txt_REID.Text.Trim(), txt_Password.Text.Trim());

        if (ds.Tables[0].Rows.Count == 0)
        {
            lblmsg.Text = "Please Check your Registraion Number and Password";
        }
        else
        {
            Session["data"] = ds;
            {
                Session["PrintAgain"] = "Print";
                Session["PostCode"] = ds.Tables[0].Rows[0]["PostCode"].ToString();
                Session["RegestrationNumber"] = ds.Tables[0].Rows[0]["RegestrationNumber"].ToString();
                Session["CandidateName"] = ds.Tables[0].Rows[0]["CandidateName"].ToString();
                Session["FatherHusbandName"] = ds.Tables[0].Rows[0]["FatherHusbandName"].ToString();
                Session["MotherName"] = ds.Tables[0].Rows[0]["MotherName"].ToString();
                Session["PostName"] = ds.Tables[0].Rows[0]["Post_name"].ToString();
                Session["Aadharnumber"] = ds.Tables[0].Rows[0]["Aadharnumber"].ToString();
                Session["DOB"] = ds.Tables[0].Rows[0]["DOBB"].ToString();
                Session["Password"] = ds.Tables[0].Rows[0]["Password"].ToString();
                Session["addedit"] = 1;
                if (ds.Tables[0].Rows[0]["Stage"].ToString() == "Stage2" && ds.Tables[0].Rows[0]["Status"].ToString() !="1")
                {
                Response.Redirect("Register3.aspx");
                }
                else if (ds.Tables[0].Rows[0]["Status"].ToString() == "1" && ds.Tables[0].Rows[0]["IsPayment"].ToString() == "" && ds.Tables[0].Rows[0]["Stage"].ToString() == "Stage2")
                {
                    Response.Redirect("BankPayment.aspx");
                }
                else if (ds.Tables[0].Rows[0]["Status"].ToString() == "1" && ds.Tables[0].Rows[0]["IsPayment"].ToString() == "1")
                {
                    Response.Redirect("RegprintsetAgain.aspx");
                }
                else
                {
                     Response.Redirect("Register2.aspx");
                }
            }

        }
    }
    protected void btn_Apply_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Registration.aspx");
    }
}