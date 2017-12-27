<%@ WebHandler Language="C#" Class="ShowImage" %>

using System;
using System.Configuration;
using System.Web;
using System.IO;
using System.Data;
using System.Data.SqlClient;

public class ShowImage : IHttpHandler 
{
    public void ProcessRequest(HttpContext context)
    {
       string empno;
       if (context.Request.QueryString["id"] != null)
       {
           empno = context.Request.QueryString["id"];
       }
       else
       {
           throw new ArgumentException("No parameter specified");
       }

     //  context.Response.ContentType = "image/jpeg";
       Stream strm = ShowEmpImage(empno);
       if (strm != null)
       {
           byte[] buffer = new byte[4096];
           int byteSeq = strm.Read(buffer, 0, 4096);
           
           while (byteSeq > 0)
           {
               context.Response.OutputStream.Write(buffer, 0, byteSeq);
               byteSeq = strm.Read(buffer, 0, 4096);
           }
       }     
       //context.Response.BinaryWrite(buffer);
    }

    public Stream ShowEmpImage(string empno)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HPSCDBNEW"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select imagename from ApplicantDetails where RegestrationNumber= @ID", con);
        
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@ID", empno);
        object img = cmd.ExecuteScalar();
        try
        {
            return new MemoryStream((byte[])img);
        }
        catch 
        {
            return null;
        }
        finally
        {
            con.Close();
        }
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }


}