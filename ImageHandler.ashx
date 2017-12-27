<%@ WebHandler Language="C#" Class="ImageHandler" %>

using System;
using System.Web;
using System.Data.SqlClient;

public class ImageHandler : IHttpHandler {
    public void ProcessRequest (HttpContext context) {
        string imageid = context.Request.QueryString["ImID"];
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["HPSCDBNEW"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select imagename from ApplicantDetails where RegestrationNumber =" + imageid, con);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        context.Response.BinaryWrite((byte[])dr[0]);
        con.Close();
        context.Response.End();
    }
    public bool IsReusable {
        get {
            return false;
        }
    }
}