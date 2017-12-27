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
public partial class paymentgateway : System.Web.UI.Page
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


    protected void Button1_Click(object sender, EventArgs e)
    {
        Entrydetail entryobj = new Entrydetail();
        DataSet ds = new DataSet();
        ds = entryobj.find_rec(ddlpost.SelectedValue, txtRegno.Text.Trim(), txtPassword.Text.Trim());

        if (ds.Tables[0].Rows.Count == 0)
        {
            lblmsg.Text = "Please Check your Registraion Number and Password";
        }
        else
         {
            Session["RegestrationNumber"] = ds.Tables[0].Rows[0]["RegestrationNumber"].ToString();
            Response.Redirect("BankPayment.aspx");
            }

        }
        
    
}