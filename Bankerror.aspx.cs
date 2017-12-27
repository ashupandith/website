using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Security.Cryptography;
using System.Text;

public partial class Bankerror : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HPSCDBNEW"].ConnectionString);
        using (SqlCommand cmd = new SqlCommand())
        {
            cmd.CommandText = "Update ApplicantDetails set IsPayment=NULL where RegestrationNumber =@RegestrationNumber";
            cmd.Parameters.AddWithValue("@RegestrationNumber", "");
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            cmd.Connection = con;
            
            cmd.ExecuteNonQuery();
            con.Close();
         }
           string[] merc_hash_vars_seq;
                string merc_hash_string = string.Empty;
                string merc_hash = string.Empty;
                string mihpayid = string.Empty;
                string mode = string.Empty;
                string status = string.Empty;
                string key = string.Empty;
                string txnid = string.Empty;
                string amount = string.Empty;
                string Firstname = string.Empty;
                string udf1 = string.Empty;
                string udf2 = string.Empty;
                string udf3 = string.Empty;
                string Error = string.Empty;
                string bankcode = string.Empty;
                string bank_ref_num = string.Empty;
                string hash_seq = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|udf6|udf7|udf8|udf9|udf10";
                    merc_hash_vars_seq = hash_seq.Split('|');
                    Array.Reverse(merc_hash_vars_seq);
                    merc_hash_string = ConfigurationManager.AppSettings["SALT"] + "|" + Request.Form["status"];
                    foreach (string merc_hash_var in merc_hash_vars_seq)
                    {
                        merc_hash_string += "|";
                        merc_hash_string = merc_hash_string + (Request.Form[merc_hash_var] != null ? Request.Form[merc_hash_var] : "");
                    }
                    merc_hash = Generatehash512(merc_hash_string).ToLower();
                   if (merc_hash != Request.Form["hash"])
                    {
                        Response.Write("Hash value did not matched");

                    }
                    else
                    {
                       mihpayid = Request.Form["mihpayid"];
                        mode = Request.Form["mode"];
                        status = Request.Form["status"];
                        key = Request.Form["key"];
                        txnid = Request.Form["txnid"];
                        amount = Request.Form["amount"];
                        Firstname = Request.Form["Firstname"];
                        udf1 = Request.Form["udf1"];
                        udf2 = Request.Form["udf2"];
                        udf3 = Request.Form["udf3"];
                        Error = Request.Form["Error"];
                        bankcode = Request.Form["bankcode"];
                        bank_ref_num = Request.Form["bank_ref_num"];
                      using (SqlCommand cmdbank = new SqlCommand())
                        {
                            cmdbank.CommandText = "insert into Tbl_bankDetail (mihpayid ,mode,status,key_key,txnid,amount,Firstname,udf1,udf2,udf3,Error,bankcode,bank_ref_num) values (@mihpayid ,@mode,@status,@key_key,@txnid,@amount,@Firstname,@udf1,@udf2,@udf3,@Error,@bankcode,@bank_ref_num)";
                            cmdbank.Parameters.AddWithValue("@mihpayid", mihpayid);
                            cmdbank.Parameters.AddWithValue("@mode", mode);
                            cmdbank.Parameters.AddWithValue("@status", status);
                            cmdbank.Parameters.AddWithValue("@key_key", key);
                            cmdbank.Parameters.AddWithValue("@txnid", txnid);
                            cmdbank.Parameters.AddWithValue("@amount", amount);
                            cmdbank.Parameters.AddWithValue("@Firstname", Firstname);
                            cmdbank.Parameters.AddWithValue("@udf1", udf1);
                            cmdbank.Parameters.AddWithValue("@udf2", udf2);
                            cmdbank.Parameters.AddWithValue("@udf3", udf3);
                            cmdbank.Parameters.AddWithValue("@Error", Error);
                            cmdbank.Parameters.AddWithValue("@bankcode", bankcode);
                            cmdbank.Parameters.AddWithValue("@bank_ref_num", bank_ref_num);
                             cmdbank.Connection = con;
                             if (con.State != ConnectionState.Open)
                             {
                                 con.Open();
                             }
                             cmdbank.ExecuteNonQuery();
                 
                      }


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
