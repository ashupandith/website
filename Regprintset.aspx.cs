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


public partial class Regprintset_BOA : System.Web.UI.Page
{
    Entrydetail entryobj = new Entrydetail();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HPSCDBNEW"].ConnectionString);
    #region On Page Init
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        Response.Buffer = true;
        Response.ExpiresAbsolute = DateTime.Now.AddDays(-1);
        Response.Cache.SetExpires(DateTime.Now.AddDays(-1));
        Response.Expires = 0;
        Response.CacheControl = "no-cache";
        Response.Cache.SetNoStore();
    }
    #endregion
      protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
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
               
                if (Request.Form["status"] == "success")
                {
                    Label7.Text = "Your Payment has been recieved.";
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
                        Session["RegestrationNumber"] = txnid;
                        lblTransactionID.Text = mihpayid;
                        lblTransactionDate.Text = mode;
                        lblName.Text = Firstname;
                        lblRegistration.Text = txnid;
                        lblLevel.Text = udf2;
                        lblCategory.Text = udf3;
                        lblBank.Text = bankcode;
                        lblAmounta.Text = amount;
                        lblAmount.Text = amount;


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
                              con.Open();
                             cmdbank.ExecuteNonQuery();
                           
                            using (SqlCommand cmd = new SqlCommand())
                            {
                                cmd.CommandText = "Update ApplicantDetails set IsPayment=1 where RegestrationNumber =@RegestrationNumber";
                                cmd.Parameters.AddWithValue("@RegestrationNumber", txnid);

                                cmd.Connection = con;
                                if (con.State != ConnectionState.Open)
                                {
                                    con.Open();
                                }
                                cmd.ExecuteNonQuery();
                              
                                con.Close();

                            }
                            GetRecord();
                           
                      }


                    }


                }
                else
                {
                    Label7.Text = "Transaction is Failed by Bank";
                    Response.Write("Hash value did not matched");

                    using (SqlCommand cmdbanker = new SqlCommand())
                    {
                        cmdbanker.CommandText = "insert into Tbl_bankDetail (mihpayid ,mode,status,key_key,txnid,amount,Firstname,udf1,udf2,udf3,Error,bankcode,bank_ref_num) values (@mihpayid ,@mode,@status,@key_key,@txnid,@amount,@Firstname,@udf1,@udf2,@udf3,@Error,@bankcode,@bank_ref_num)";
                        cmdbanker.Parameters.AddWithValue("@mihpayid", mihpayid);
                        cmdbanker.Parameters.AddWithValue("@mode", mode);
                        cmdbanker.Parameters.AddWithValue("@status", status);
                        cmdbanker.Parameters.AddWithValue("@key_key", key);
                        cmdbanker.Parameters.AddWithValue("@txnid", txnid);
                        cmdbanker.Parameters.AddWithValue("@amount", amount);
                        cmdbanker.Parameters.AddWithValue("@Firstname", Firstname);
                        cmdbanker.Parameters.AddWithValue("@udf1", udf1);
                        cmdbanker.Parameters.AddWithValue("@udf2", udf2);
                        cmdbanker.Parameters.AddWithValue("@udf3", udf3);
                        cmdbanker.Parameters.AddWithValue("@Error", Error);
                        cmdbanker.Parameters.AddWithValue("@bankcode", bankcode);
                        cmdbanker.Parameters.AddWithValue("@bank_ref_num", bank_ref_num);
                        cmdbanker.Connection = con;
                        if (con.State != ConnectionState.Open)
                        {
                            con.Open();
                        }
                        cmdbanker.ExecuteNonQuery();
                    }
                           
                    Response.Redirect("Bankerror.aspx");
                   
                }
            }
            catch (Exception ex)
            {
                Label7.Text = ex.Source;
              
            } 
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
        }
        else
        {
            Label7.Text = "Incomplete Form Please Uppdate your Detail/ If not make the payment Please make Payment ";
            
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

