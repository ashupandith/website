using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.UI.HtmlControls;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Security.Cryptography;
using System.Text;
using System.Net;
using System.IO;
using PassportBusiness;


public partial class BankPayment : System.Web.UI.Page
{
    public string action1 = string.Empty;
    public string hash1 = string.Empty;
    public string txnid1 = string.Empty;
    string surl = "http://report.hsrlmonline.in/Regprintset.aspx";
    string furl = "http://report.hsrlmonline.in/Bankerror.aspx";
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.RegisterRequiresViewStateEncryption();
      if (!Page.IsPostBack)
        {
            GetRecord();
            //trAdd.Visible = false;
        //  lblamtdis.EnableViewState = false;
//amount.EnableViewState = false;
        }
      try
      {

          key.Value = ConfigurationManager.AppSettings["MERCHANT_KEY"];

          if (!IsPostBack)
          {
              frmError.Visible = false; // error form
          }
          else
          {
              frmError.Visible = true;
          }
          if (string.IsNullOrEmpty(Request.Form["hash"]))
          {
              btnSave.Visible = true;
          }
          else
          {
              btnSave.Visible = false;
          }

      }
      catch (Exception ex)
      {
          Response.Write("<span style='color:red'>" + ex.Message + "</span>");

      }
    }
    private void GetRecord()
    {
        
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["HPSCDBNEW"].ConnectionString);
        cn.Open();
        String sql = "SELECT a.Aadharnumber,a.Category,a.PostCode,b.Post_Name,a.RegestrationNumber,a.CandidateName,a.FatherHusbandName,a.MotherName,a.Gender,a.MaritalStatus,a.Address,a.Block,a.Area,a.City,d.District_Name as State,a.PinCode,a.PermanentAddress,a.Permanentarea,a.PermanentBlock,a.PermanentCity,d.District_Name as PermanentState,a.PermanentPinCode,a.Nationality,a.Perma_contact,a.Corres_contact , CONVERT(VARCHAR(20), a.DOB, 103) as DOBB,a.Email,a.MaritalStatus,c.cat_name as Category  FROM ApplicantDetails a, TblPost b,tblcatgory c,Tbl_District d where a.PostCode=b.Id and a.Category=c.id and a.State=d.District_id and a.RegestrationNumber=@RegestrationNumber and a.status=1";
        SqlCommand cmd = new SqlCommand(sql, cn);
        cmd.Parameters.AddWithValue("@RegestrationNumber", Session["RegestrationNumber"].ToString());
       SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        lblamtdis.Text = "";
        if (ds.Tables[0].Rows.Count > 0)
        {
            // General

            if (ds.Tables[0].Rows[0]["Category"].ToString() == "1" && ds.Tables[0].Rows[0]["PostCode"].ToString() != "7")
            {
                lblamtdis.Text = "1000";
                amount.Text = "1000";
              
            }
            else if (ds.Tables[0].Rows[0]["Category"].ToString() == "1" && ds.Tables[0].Rows[0]["PostCode"].ToString() == "7")
            {
                lblamtdis.Text = "200";
                amount.Text = "200";
              
            }

            // General

            if (ds.Tables[0].Rows[0]["Category"].ToString() == "2" && ds.Tables[0].Rows[0]["PostCode"].ToString() != "7")
            {
                lblamtdis.Text = "750";
                amount.Text = "750";
               
            }
            else if (ds.Tables[0].Rows[0]["Category"].ToString() == "2" && ds.Tables[0].Rows[0]["PostCode"].ToString() == "7")
            {
                lblamtdis.Text = "150";
                amount.Text = "150";
               
            }

            // General

            if ((ds.Tables[0].Rows[0]["Category"].ToString() == "3" || ds.Tables[0].Rows[0]["Category"].ToString() == "4") && ds.Tables[0].Rows[0]["PostCode"].ToString() != "7")
            {
                lblamtdis.Text = "500";
                amount.Text = "500";
               
            }
            else if ((ds.Tables[0].Rows[0]["Category"].ToString() == "3" || ds.Tables[0].Rows[0]["Category"].ToString() == "4") && ds.Tables[0].Rows[0]["PostCode"].ToString() == "7")
            {
                lblamtdis.Text = "100";
                amount.Text = "100";
               
            }

            //candidate information
            lblname.Text = ds.Tables[0].Rows[0]["CandidateName"].ToString();
            lblpostcode.Text = ds.Tables[0].Rows[0]["PostCode"].ToString();
            lblpost.Text = ds.Tables[0].Rows[0]["Post_Name"].ToString();
            lblfname.Text = ds.Tables[0].Rows[0]["FatherHusbandName"].ToString();
            lbldob.Text = ds.Tables[0].Rows[0]["DOBB"].ToString();
            lblrgistration.Text = ds.Tables[0].Rows[0]["RegestrationNumber"].ToString();
            lblaadhar.Text = ds.Tables[0].Rows[0]["Aadharnumber"].ToString();
            lblmname.Text = ds.Tables[0].Rows[0]["MotherName"].ToString();
            lblpass.Text = Session["Password"].ToString();

            lblregistration.Text = ds.Tables[0].Rows[0]["RegestrationNumber"].ToString();
            firstname.Text = ds.Tables[0].Rows[0]["CandidateName"].ToString();
            city.Text = ds.Tables[0].Rows[0]["City"].ToString();
            state.Text = ds.Tables[0].Rows[0]["State"].ToString();
            hfcategory.Value = ds.Tables[0].Rows[0]["Category"].ToString();
            phone.Text = ds.Tables[0].Rows[0]["Perma_contact"].ToString();
            zipcode.Text = ds.Tables[0].Rows[0]["PermanentPinCode"].ToString();
            // other Details End
            

            // Address Start
            lblpermaadd.Text = ds.Tables[0].Rows[0]["Address"].ToString() + "," + ds.Tables[0].Rows[0]["State"].ToString() + "," + ds.Tables[0].Rows[0]["City"].ToString() + "-" + ds.Tables[0].Rows[0]["PinCode"].ToString() + ",Ph:" + ds.Tables[0].Rows[0]["Perma_contact"].ToString();
            email.Text = ds.Tables[0].Rows[0]["Email"].ToString();
            lblcorrospandance.Text = ds.Tables[0].Rows[0]["PermanentAddress"].ToString() + "," + ds.Tables[0].Rows[0]["PermanentState"].ToString() + "," + ds.Tables[0].Rows[0]["PermanentCity"].ToString() + "-" + ds.Tables[0].Rows[0]["PermanentPinCode"].ToString() + ",Ph:" + ds.Tables[0].Rows[0]["Corres_contact"].ToString();

            
        }
        else
        {
            lblErrMsg.Text = "Something went wrong. Please contact your Administrator";
            Label1.Text = "Something went wrong. Please contact your Administrator / Please complete your Form ....";
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            lblamtdis.Text = "";
            amount.Text = "";
            if (hfcategory.Value == "1" && lblpostcode.Text != "7")
            {
                lblamtdis.Text = "1000";
                amount.Text = "1000";
                hfamountcheck.Value = "1000";
            }
            else if (hfcategory.Value == "1" && lblpostcode.Text == "7")
            {
                lblamtdis.Text = "200";
                amount.Text = "200";
                hfamountcheck.Value = "200";
            }

            // General

            if (hfcategory.Value == "2" && lblpostcode.Text != "7")
            {
                lblamtdis.Text = "750";
                amount.Text = "750";
                hfamountcheck.Value = "750";
            }
            else if (hfcategory.Value == "2" && lblpostcode.Text == "7")
            {
                lblamtdis.Text = "150";
                amount.Text = "150";
                hfamountcheck.Value = "150";
            }

            // General

            if ((hfcategory.Value == "3" || lblpostcode.Text == "4") && lblpostcode.Text != "7")
            {
                lblamtdis.Text = "500";
                amount.Text = "500";
                hfamountcheck.Value = "500";
            }
            else if ((hfcategory.Value == "3" || lblpostcode.Text == "4") && lblpostcode.Text == "7")
            {
                lblamtdis.Text = "100";
                amount.Text = "100";
                hfamountcheck.Value = "100";
            }




            string[] hashVarsSeq;
            string hash_string = string.Empty;


            if (string.IsNullOrEmpty(Request.Form["txnid"])) // generating txnid
            {
               //Random rnd = new Random();
               //string strHash = Generatehash512(rnd.ToString() + DateTime.Now);
               // txnid1 = strHash.ToString().Substring(0, 20);
                txnid1 = lblregistration.Text;
             
            }
            else
            {
                txnid1 = Request.Form["txnid"];
            }
            if (string.IsNullOrEmpty(Request.Form["hash"])) // generating hash value
            {
                if (
                   string.IsNullOrEmpty(ConfigurationManager.AppSettings["MERCHANT_KEY"]) ||
                string.IsNullOrEmpty(txnid1) ||
                 string.IsNullOrEmpty(hfamountcheck.Value) ||
                string.IsNullOrEmpty(Request.Form["firstname"]) ||
                string.IsNullOrEmpty(Request.Form["email"]) ||
                string.IsNullOrEmpty(Request.Form["phone"]) ||
                string.IsNullOrEmpty(Request.Form["productinfo"]) 
                    )
                {
                    //error

                    frmError.Visible = true;
                    return;
                }

                else
                {
                    frmError.Visible = false;
                    hashVarsSeq = ConfigurationManager.AppSettings["hashSequence"].Split('|'); // spliting hash sequence from config
                    hash_string = "";
                    foreach (string hash_var in hashVarsSeq)
                    {
                        if (hash_var == "key")
                        {
                            hash_string = hash_string + ConfigurationManager.AppSettings["MERCHANT_KEY"];
                            hash_string = hash_string + '|';
                        }
                        else if (hash_var == "txnid")
                        {
                            hash_string = hash_string + txnid1;
                            hash_string = hash_string + '|';
                        }
                        else if (hash_var == "amount")
                        {
                            hash_string = hash_string + Convert.ToDecimal(hfamountcheck.Value).ToString("g29");
                            hash_string = hash_string + '|';
                        }
                        else
                        {

                            hash_string = hash_string + (Request.Form[hash_var] != null ? Request.Form[hash_var] : "");// isset if else
                            hash_string = hash_string + '|';
                        }
                    }

                    hash_string += ConfigurationManager.AppSettings["SALT"];// appending SALT

                    hash1 = Generatehash512(hash_string).ToLower();         //generating hash
                    action1 = ConfigurationManager.AppSettings["PAYU_BASE_URL"] + "_payment";// setting URL

                }


            }

            else if (!string.IsNullOrEmpty(Request.Form["hash"]))
            {
                hash1 = Request.Form["hash"];
                action1 = ConfigurationManager.AppSettings["PAYU_BASE_URL"] + "_payment";

            }




            if (!string.IsNullOrEmpty(hash1))
            {
                hash.Value = hash1;
                txnid.Value = txnid1;

                System.Collections.Hashtable data = new System.Collections.Hashtable(); // adding values in gash table for data post
                data.Add("hash", hash.Value);
                data.Add("txnid", txnid.Value);
                data.Add("key", key.Value);
                string AmountForm = Convert.ToDecimal(hfamountcheck.Value).ToString("g29");// eliminating trailing zeros
                hfamount.Value = AmountForm;
              
                data.Add("amount", hfamount.Value);
                data.Add("firstname", firstname.Text.Trim());
                data.Add("email", email.Text.Trim());
                data.Add("phone", phone.Text.Trim());
                data.Add("productinfo", "Fee");
                data.Add("surl", surl);
                data.Add("furl", furl);
                data.Add("lastname", "");
                data.Add("curl", "");
                data.Add("address1", lblpermaadd.Text.Trim());
                data.Add("address2", lblcorrospandance.Text.Trim());
                data.Add("city", city.Text.Trim());
                data.Add("state", state.Text.Trim());
                data.Add("country", "");
                data.Add("zipcode", zipcode.Text.Trim());
                data.Add("udf1", "");
                data.Add("udf2", "");
                data.Add("udf3", "");
                data.Add("udf4", "");
                data.Add("udf5", "");
                data.Add("pg", "");

                if (hfamountcheck.Value == hfamount.Value)
                {
                    string strForm = PreparePOSTForm(action1, data);
                    Page.Controls.Add(new LiteralControl(strForm));
                }
                else
                {
                    Label1.Text = "Your ammount is not correct";
                }
            }
           else
            {
               //no hash
            }
        }
        catch (Exception ex)
        {
            Response.Write("<span style='color:red'>" + ex.Message + "</span>");

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
    private string PreparePOSTForm(string url, System.Collections.Hashtable data)      // post form
    {
        //Set a name for the form
        string formID = "PostForm";
        //Build the form using the specified data to be posted.
        StringBuilder strForm = new StringBuilder();
        strForm.Append("<form id=\"" + formID + "\" name=\"" +
                       formID + "\" action=\"" + url +
                       "\" method=\"POST\">");

        foreach (System.Collections.DictionaryEntry key in data)
        {

            strForm.Append("<input type=\"hidden\" name=\"" + key.Key +
                           "\" value=\"" + key.Value + "\">");
        }


        strForm.Append("</form>");
        //Build the JavaScript which will do the Posting operation.
        StringBuilder strScript = new StringBuilder();
        strScript.Append("<script language='javascript'>");
        strScript.Append("var v" + formID + " = document." +
                         formID + ";");
        strScript.Append("v" + formID + ".submit();");
        strScript.Append("</script>");
        //Return the form and the script concatenated.
        //(The order is important, Form then JavaScript)
        return strForm.ToString() + strScript.ToString();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Entrydetail entryobj = new Entrydetail();
        DataSet ds = new DataSet();
        ds = entryobj.find_record(lblrgistration.Text.Trim(), lblpass.Text.Trim());
        Session["data"] = ds;
        Session["PostCode"] = lblpostcode.Text;
        Session["RegestrationNumber"] = lblrgistration.Text;
        Session["CandidateName"] = lblname.Text;
        Session["FatherHusbandName"] = lblfname.Text;
        Session["MotherName"] = lblmname.Text;
        Session["PostName"] = lblpost.Text;
        Session["Aadharnumber"] = lblaadhar.Text;
        Session["DOB"] = lbldob.Text;
        Session["addedit"] = 1;
        Response.Redirect("Register2.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Entrydetail entryobj = new Entrydetail();
        DataSet ds = new DataSet();
        ds = entryobj.find_record(lblrgistration.Text.Trim(), lblpass.Text.Trim());
         Session["data"] = ds;
        Session["PostCode"] = lblpostcode.Text;
        Session["RegestrationNumber"] = lblrgistration.Text;
        Session["CandidateName"] = lblname.Text;
        Session["FatherHusbandName"] = lblfname.Text;
        Session["MotherName"] = lblmname.Text;
        Session["PostName"] = lblpost.Text;
        Session["Aadharnumber"] = lblaadhar.Text;
        Session["DOB"] = lbldob.Text;
        Session["addedit"] = 1;
        Response.Redirect("Register3.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
}