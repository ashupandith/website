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


public partial class Password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnshow_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["HPSCDBNEW"].ConnectionString;
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "SELECT b.Post_Name,a.RegestrationNumber,a.CandidateName,a.FatherHusbandName,a.MotherName,a.Gender,a.MaritalStatus,a.Address,a.Block,a.Area,a.City,d.District_Name as State,a.PinCode,a.PermanentAddress,a.Permanentarea,a.PermanentBlock,a.PermanentCity,d.District_Name as PermanentState,a.PermanentPinCode,a.Nationality,a.Perma_contact,a.Corres_contact , CONVERT(VARCHAR(20), a.DOB, 103) as DOBB,a.Email,a.MaritalStatus,c.cat_name as Category, a.password  FROM ApplicantDetails a, TblPost b,tblcatgory c,Tbl_District d where a.PostCode=b.Id and a.Category=c.id and a.State=d.District_id and a.status=1 and IsPayment=1 and RegestrationNumber =@regno";
        cmd.Parameters.AddWithValue("@regno", txtregno.Text.Trim());
        cmd.CommandType = CommandType.Text;
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        dr.Dispose();
        cmd.Dispose();
    }
   
}
