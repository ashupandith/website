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

public partial class Regstatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["HPSCDBNEW"].ConnectionString;
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "select b.Post_Name as Post_Name,count(*) as records from dbo.ApplicantDetails a,dbo.TblPost b where a.PostCode=b.Id  and status =1 group by Post_Name ";
        cmd.CommandType = CommandType.Text;
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        dr.Dispose();
        cmd.Dispose();

        

    }
}
