using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using PassportBusiness;
using System.Drawing;
public partial class Register3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HPSCDBNEW"].ConnectionString);
    string aa = "";
    string bb = "";
    string cc = "";
    string dd = "";
    string ddd = "";
    Double years;
    string deleteexp = "";
    string deleteQli = "";
    int result = 0;
    protected void Page_PreLoad(object sender, EventArgs e)
    {
        years = 0;
       lblpostcode.Text = Session["PostCode"].ToString();
        hfpost.Value = Session["PostCode"].ToString();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            hfper1.Value = "";
            hfper2.Value = "";
            hfper3.Value = "";
            hfper4.Value = "";
            hfper5.Value = "";
            hfper6.Value = "";
            BindEmployeeDetails();
            BindEmployeeQulaification();
            FirstGridViewRow();
            FirstGridViewRowExperience();
            lblpostcode.Text = Session["PostCode"].ToString();
            lblname.Text = Session["CandidateName"].ToString();
            lblfname.Text = Session["FatherHusbandName"].ToString();
            lblmname.Text = Session["MotherName"].ToString();
            lblrgistration.Text = Session["RegestrationNumber"].ToString();
            lblpost.Text = Session["PostName"].ToString();
            lblaadhar.Text = Session["Aadharnumber"].ToString();
            lbldob.Text = Session["DOB"].ToString();
            hfregistration.Value = Session["RegestrationNumber"].ToString();
            hfpost.Value = Session["PostCode"].ToString();
            lblpass.Text = Session["Password"].ToString();
            //trimage.Visible = false;
            // image Bind
            DataSet ds = new DataSet();
            ds = (DataSet)Session["data"];
          
                if (ds.Tables[0].Rows[0]["imagename"].ToString() != "" )
                {
                    Image1.ImageUrl = "~/ShowImage.ashx?id=" + hfregistration.Value;
                    hfimage.Value = "image";
                }
                if (ds.Tables[0].Rows[0]["sigatureimage"].ToString() != "" )
                {
                    Image2.ImageUrl = "~/ShowImage2.ashx?id=" + hfregistration.Value;
                    hfsig.Value = "sigature";
                }
           
           
        }

    }
    /// <summary>
    /// Bind Qualification
    /// </summary>
    private void FirstGridViewRow()
    {
        DataTable dt = new DataTable();
        DataRow dr = null;
        dt.Columns.Add(new DataColumn("Col1", typeof(string)));
        dt.Columns.Add(new DataColumn("Col2", typeof(string)));
        dt.Columns.Add(new DataColumn("Col3", typeof(string)));
        dt.Columns.Add(new DataColumn("Col4", typeof(string)));
        dt.Columns.Add(new DataColumn("Col5", typeof(string)));
        dt.Columns.Add(new DataColumn("Col6", typeof(string)));
        dt.Columns.Add(new DataColumn("Col7", typeof(string)));
        dt.Columns.Add(new DataColumn("Col8", typeof(string)));
        dt.Columns.Add(new DataColumn("Col9", typeof(string)));
        dr = dt.NewRow();
        dr["Col1"] = string.Empty;
        dr["Col2"] = string.Empty;
        dr["Col3"] = string.Empty;
        dr["Col4"] = string.Empty;
        dr["Col5"] = string.Empty;
        dr["Col6"] = string.Empty;
        dr["Col7"] = string.Empty;
        dr["Col8"] = string.Empty;
        dr["Col9"] = string.Empty;
        dt.Rows.Add(dr);

        ViewState["CurrentTable"] = dt;


        grvStudentDetails.DataSource = dt;
        grvStudentDetails.DataBind();


        TextBox txn = (TextBox)grvStudentDetails.Rows[0].Cells[1].FindControl("txtBoard");
        txn.Focus();
         Button btnAdd = (Button)grvStudentDetails.FooterRow.Cells[5].FindControl("ButtonAdd");
        Page.Form.DefaultFocus = btnAdd.ClientID;

    }
    private void AddNewRow()
    {
        int rowIndex = 0;

        if (ViewState["CurrentTable"] != null)
        {
            DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                {
                    DropDownList drpexam = (DropDownList)grvStudentDetails.Rows[rowIndex].Cells[0].FindControl("ddlexmanation");
                    TextBox txtStream = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtstream");
                    TextBox txtBoard = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[2].FindControl("txtBoard");
                    TextBox txtSubject = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[3].FindControl("txtSubject");
                    TextBox txtPassingYear = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[4].FindControl("txtPassingYear");
                    TextBox txtMarksObtained = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[5].FindControl("txtMarksObtained");
                    TextBox txtTotalMarks = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[6].FindControl("txtTotalMarks");
                    TextBox txtTotalPercent = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[7].FindControl("txtTotalPercent");
                    TextBox txtDivison = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[8].FindControl("txtDivison");
                    if (i == 1)
                    {
                        txtTotalPercent.Text = hfper1.Value;
                    }
                    if (i == 2)
                    {
                        txtTotalPercent.Text = hfper2.Value;
                    }
                    if (i == 3)
                    {
                        txtTotalPercent.Text = hfper3.Value;
                    }
                    if (i == 4)
                    {
                        txtTotalPercent.Text = hfper4.Value;
                    }
                    if (i == 5)
                    {
                        txtTotalPercent.Text = hfper5.Value;
                    }
                    if (i == 6)
                    {
                        txtTotalPercent.Text = hfper6.Value;
                    }
                    if (i == 7)
                    {
                        txtTotalPercent.Text = hfper7.Value;
                    }
                    drCurrentRow = dtCurrentTable.NewRow();
                    dtCurrentTable.Rows[i - 1]["Col1"] = drpexam.SelectedValue;
                    dtCurrentTable.Rows[i - 1]["Col2"] = txtStream.Text;
                    dtCurrentTable.Rows[i - 1]["Col3"] = txtBoard.Text;
                    dtCurrentTable.Rows[i - 1]["Col4"] = txtSubject.Text;
                    dtCurrentTable.Rows[i - 1]["Col5"] = txtPassingYear.Text;
                    dtCurrentTable.Rows[i - 1]["Col6"] = txtMarksObtained.Text;
                    dtCurrentTable.Rows[i - 1]["Col7"] = txtTotalMarks.Text;
                    dtCurrentTable.Rows[i - 1]["Col8"] = txtTotalPercent.Text;
                    dtCurrentTable.Rows[i - 1]["Col9"] = txtDivison.Text;
                  
                    rowIndex++;
                }
                dtCurrentTable.Rows.Add(drCurrentRow);
                ViewState["CurrentTable"] = dtCurrentTable;

                grvStudentDetails.DataSource = dtCurrentTable;
                grvStudentDetails.DataBind();

                TextBox txn = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[2].FindControl("txtBoard");
                txn.Focus();
                // txn.Focus;
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        SetPreviousData();
    }
    private void SetPreviousData()
    {
        int rowIndex = 0;
        if (ViewState["CurrentTable"] != null)
        {
            DataTable dt = (DataTable)ViewState["CurrentTable"];
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    DropDownList drpexam = (DropDownList)grvStudentDetails.Rows[rowIndex].Cells[0].FindControl("ddlexmanation");
                    TextBox txtStream = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtstream");
                    TextBox txtBoard = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[2].FindControl("txtBoard");
                    TextBox txtSubject = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[3].FindControl("txtSubject");
                    TextBox txtPassingYear = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[4].FindControl("txtPassingYear");
                    TextBox txtMarksObtained = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[5].FindControl("txtMarksObtained");
                    TextBox txtTotalMarks = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[6].FindControl("txtTotalMarks");
                    TextBox txtTotalPercent = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[7].FindControl("txtTotalPercent");
                    TextBox txtDivison = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[8].FindControl("txtDivison");
                    drpexam.SelectedValue = dt.Rows[i]["Col1"].ToString();
                    txtStream.Text = dt.Rows[i]["Col2"].ToString();
                    txtBoard.Text = dt.Rows[i]["Col3"].ToString();
                    txtSubject.Text = dt.Rows[i]["Col4"].ToString();
                    txtPassingYear.Text = dt.Rows[i]["Col5"].ToString();
                    txtMarksObtained.Text = dt.Rows[i]["Col6"].ToString();
                    txtTotalMarks.Text = dt.Rows[i]["Col7"].ToString();
                    txtTotalPercent.Text = dt.Rows[i]["Col8"].ToString();
                    txtDivison.Text = dt.Rows[i]["Col9"].ToString();

                    rowIndex++;
                }
            }
        }
    }
    protected void ButtonAdd_Click(object sender, EventArgs e)
    {
        AddNewRow();
    }
    protected void grvStudentDetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SetRowData();
        if (ViewState["CurrentTable"] != null)
        {
            DataTable dt = (DataTable)ViewState["CurrentTable"];
            DataRow drCurrentRow = null;
            int rowIndex = Convert.ToInt32(e.RowIndex);
            if (dt.Rows.Count > 1)
            {
                dt.Rows.Remove(dt.Rows[rowIndex]);
                drCurrentRow = dt.NewRow();
                ViewState["CurrentTable"] = dt;
                grvStudentDetails.DataSource = dt;
                grvStudentDetails.DataBind();
                if (rowIndex == 0 && dt.Rows.Count > 1)
                {
                    hfper1.Value = "";
                    hfper1.Value = hfper2.Value;

                }
                else if (rowIndex == 1 && dt.Rows.Count > 1)
                {
                    hfper2.Value = "";
                    hfper2.Value = hfper3.Value;
                }
                else if (rowIndex == 2 && dt.Rows.Count > 1)
                {
                    hfper3.Value = "";
                    hfper3.Value = hfper4.Value;

                }
                else if (rowIndex == 3 && dt.Rows.Count > 1)
                {
                    hfper4.Value = "";
                    hfper4.Value = hfper5.Value;
                }
                 else if (rowIndex == 4)
                {
                    hfper5.Value = "";
                    hfper5.Value = hfper6.Value;
                }
                else if (rowIndex == 5)
                {
                    hfper6.Value = "";
                    hfper6.Value = hfper7.Value;
                }
                else if (rowIndex == 6)
                {
                    hfper7.Value = "";
                }


                SetPreviousData();
            }
        }
    }
    private void SetRowData()
    {
        int rowIndex = 0;

        if (ViewState["CurrentTable"] != null)
        {
            DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                {
                    DropDownList drpexam = (DropDownList)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("ddlexmanation");
                    TextBox txtstream = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtstream");
                    TextBox txtBoard = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[2].FindControl("txtBoard");
                    TextBox txtSubject = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[3].FindControl("txtSubject");
                    TextBox txtPassingYear = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[4].FindControl("txtPassingYear");
                    TextBox txtMarksObtained = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[5].FindControl("txtMarksObtained");
                    TextBox txtTotalMarks = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[6].FindControl("txtTotalMarks");
                    TextBox txtTotalPercent = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[7].FindControl("txtTotalPercent");
                    TextBox txtDivison = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[8].FindControl("txtDivison");

                    drCurrentRow = dtCurrentTable.NewRow();
                    dtCurrentTable.Rows[i - 1]["Col1"] = drpexam.SelectedValue;
                    dtCurrentTable.Rows[i - 1]["Col2"] = txtstream.Text;
                    dtCurrentTable.Rows[i - 1]["Col3"] = txtBoard.Text;
                    dtCurrentTable.Rows[i - 1]["Col4"] = txtSubject.Text;
                    dtCurrentTable.Rows[i - 1]["Col5"] = txtPassingYear.Text;
                    dtCurrentTable.Rows[i - 1]["Col6"] = txtMarksObtained.Text;
                    dtCurrentTable.Rows[i - 1]["Col7"] = txtTotalMarks.Text;
                    dtCurrentTable.Rows[i - 1]["Col8"] = txtTotalPercent.Text;
                    dtCurrentTable.Rows[i - 1]["Col9"] = txtDivison.Text;

                    rowIndex++;
                }

                ViewState["CurrentTable"] = dtCurrentTable;
                grvStudentDetails.DataSource = dtCurrentTable;
                grvStudentDetails.DataBind();
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        //SetPreviousData();
    }




    /// <summary>
    /// Bind experence
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>


    private void FirstGridViewRowExperience()
    {
        DataTable dtExperinece = new DataTable();
        DataRow drExperinece = null;
        dtExperinece.Columns.Add(new DataColumn("Col1", typeof(string)));
        dtExperinece.Columns.Add(new DataColumn("Col2", typeof(string)));
        dtExperinece.Columns.Add(new DataColumn("Col3", typeof(string)));
        dtExperinece.Columns.Add(new DataColumn("Col4", typeof(string)));
        dtExperinece.Columns.Add(new DataColumn("Col5", typeof(string)));
        dtExperinece.Columns.Add(new DataColumn("Col6", typeof(string)));
        dtExperinece.Columns.Add(new DataColumn("Col7", typeof(string)));
        dtExperinece.Columns.Add(new DataColumn("Col8", typeof(string)));
        dtExperinece.Columns.Add(new DataColumn("Col9", typeof(string)));
        drExperinece = dtExperinece.NewRow();
        drExperinece["Col1"] = string.Empty;
        drExperinece["Col2"] = string.Empty;
        drExperinece["Col3"] = string.Empty;
        drExperinece["Col4"] = string.Empty;
        drExperinece["Col5"] = string.Empty;
        drExperinece["Col6"] = string.Empty;
        drExperinece["Col7"] = string.Empty;
        drExperinece["Col8"] = string.Empty;
        drExperinece["Col9"] = string.Empty;
        dtExperinece.Rows.Add(drExperinece);

        ViewState["CurrentTableExperinece"] = dtExperinece;


        gvExperience.DataSource = dtExperinece;
        gvExperience.DataBind();


        TextBox txn = (TextBox)gvExperience.Rows[0].Cells[0].FindControl("txtEmployerName");
        txn.Focus();
        Button btnAdd = (Button)gvExperience.FooterRow.Cells[5].FindControl("ButtonAddExp");
        Page.Form.DefaultFocus = btnAdd.ClientID;

    }
    private void AddNewRowExperinece()
    {
        int rowIndexExperinece = 0;

        if (ViewState["CurrentTableExperinece"] != null)
        {
            DataTable dtCurrentTableExperinece = (DataTable)ViewState["CurrentTableExperinece"];
            DataRow drCurrentRowExperinece = null;
            if (dtCurrentTableExperinece.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentTableExperinece.Rows.Count; i++)
                {
                    TextBox txtEmployerName = (TextBox)gvExperience.Rows[rowIndexExperinece].Cells[0].FindControl("txtEmployerName");
                    TextBox txtDesignation = (TextBox)gvExperience.Rows[rowIndexExperinece].Cells[1].FindControl("txtDesignation");
                    TextBox txtFromDate = (TextBox)gvExperience.Rows[rowIndexExperinece].Cells[2].FindControl("txtFromDate");
                    TextBox txtToDate = (TextBox)gvExperience.Rows[rowIndexExperinece].Cells[3].FindControl("txtToDate");
                    TextBox txtTotalYear = (TextBox)gvExperience.Rows[rowIndexExperinece].Cells[4].FindControl("txtTotalYear");
                    TextBox txtTotalMonths = (TextBox)gvExperience.Rows[rowIndexExperinece].Cells[5].FindControl("txtTotalMonths");
                    TextBox txtTotalDays = (TextBox)gvExperience.Rows[rowIndexExperinece].Cells[6].FindControl("txtTotalDays");
                    TextBox txtNatureofDuty = (TextBox)gvExperience.Rows[rowIndexExperinece].Cells[7].FindControl("txtNatureofDuty");
                    TextBox txtSalaryDrawn = (TextBox)gvExperience.Rows[rowIndexExperinece].Cells[8].FindControl("txtSalaryDrawn");
                    drCurrentRowExperinece = dtCurrentTableExperinece.NewRow();
                    dtCurrentTableExperinece.Rows[i - 1]["Col1"] = txtEmployerName.Text;
                    dtCurrentTableExperinece.Rows[i - 1]["Col2"] = txtDesignation.Text;
                    dtCurrentTableExperinece.Rows[i - 1]["Col3"] = txtFromDate.Text;
                    dtCurrentTableExperinece.Rows[i - 1]["Col4"] = txtToDate.Text;
                    dtCurrentTableExperinece.Rows[i - 1]["Col5"] = txtTotalYear.Text;
                    dtCurrentTableExperinece.Rows[i - 1]["Col6"] = txtTotalMonths.Text;
                    dtCurrentTableExperinece.Rows[i - 1]["Col7"] = txtTotalDays.Text;
                    dtCurrentTableExperinece.Rows[i - 1]["Col8"] = txtNatureofDuty.Text;
                    dtCurrentTableExperinece.Rows[i - 1]["Col9"] = txtSalaryDrawn.Text;
                    rowIndexExperinece++;
                }
                dtCurrentTableExperinece.Rows.Add(drCurrentRowExperinece);
                ViewState["CurrentTableExperinece"] = dtCurrentTableExperinece;

                gvExperience.DataSource = dtCurrentTableExperinece;
                gvExperience.DataBind();

                TextBox txn = (TextBox)gvExperience.Rows[rowIndexExperinece].Cells[1].FindControl("txtEmployerName");
                txn.Focus();
                // txn.Focus;
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        SetPreviousDataExperience();
    }
    private void SetPreviousDataExperience()
    {
        int rowIndexExperinece = 0;
        if (ViewState["CurrentTableExperinece"] != null)
        {
            DataTable dtExperinece = (DataTable)ViewState["CurrentTableExperinece"];
            if (dtExperinece.Rows.Count > 0)
            {
                for (int i = 0; i < dtExperinece.Rows.Count; i++)
                {
                    TextBox txtEmployerName = (TextBox)gvExperience.Rows[rowIndexExperinece].Cells[0].FindControl("txtEmployerName");
                    TextBox txtDesignation = (TextBox)gvExperience.Rows[rowIndexExperinece].Cells[1].FindControl("txtDesignation");
                    TextBox txtFromDate = (TextBox)gvExperience.Rows[rowIndexExperinece].Cells[2].FindControl("txtFromDate");
                    TextBox txtToDate = (TextBox)gvExperience.Rows[rowIndexExperinece].Cells[3].FindControl("txtToDate");
                    TextBox txtTotalYear = (TextBox)gvExperience.Rows[rowIndexExperinece].Cells[4].FindControl("txtTotalYear");
                    TextBox txtTotalMonths = (TextBox)gvExperience.Rows[rowIndexExperinece].Cells[5].FindControl("txtTotalMonths");
                    TextBox txtTotalDays = (TextBox)gvExperience.Rows[rowIndexExperinece].Cells[6].FindControl("txtTotalDays");
                    TextBox txtNatureofDuty = (TextBox)gvExperience.Rows[rowIndexExperinece].Cells[7].FindControl("txtNatureofDuty");
                    TextBox txtSalaryDrawn = (TextBox)gvExperience.Rows[rowIndexExperinece].Cells[8].FindControl("txtSalaryDrawn");

                    txtEmployerName.Text = dtExperinece.Rows[i]["Col1"].ToString();
                    txtDesignation.Text = dtExperinece.Rows[i]["Col2"].ToString();
                    txtFromDate.Text = dtExperinece.Rows[i]["Col3"].ToString();
                    txtToDate.Text = dtExperinece.Rows[i]["Col4"].ToString();
                    txtTotalYear.Text = dtExperinece.Rows[i]["Col5"].ToString();
                    txtTotalMonths.Text = dtExperinece.Rows[i]["Col6"].ToString();
                    txtTotalDays.Text = dtExperinece.Rows[i]["Col7"].ToString();
                    txtNatureofDuty.Text = dtExperinece.Rows[i]["Col8"].ToString();
                    txtSalaryDrawn.Text = dtExperinece.Rows[i]["Col9"].ToString();
                    rowIndexExperinece++;
                }
            }
        }
    }
    protected void ButtonAddExp_Click(object sender, EventArgs e)
    {
        AddNewRowExperinece();
    }
    protected void gvExperience_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SetRowDataExperinece();
        if (ViewState["CurrentTableExperinece"] != null)
        {
            DataTable dtExperinece = (DataTable)ViewState["CurrentTableExperinece"];
            DataRow drCurrentRowExperinece = null;
            int rowIndexExperinece = Convert.ToInt32(e.RowIndex);
            if (dtExperinece.Rows.Count > 1)
            {
                dtExperinece.Rows.Remove(dtExperinece.Rows[rowIndexExperinece]);
                drCurrentRowExperinece = dtExperinece.NewRow();
                ViewState["CurrentTableExperinece"] = dtExperinece;
                gvExperience.DataSource = dtExperinece;
                gvExperience.DataBind();


                SetPreviousDataExperience();
            }
        }
    }

    private void SetRowDataExperinece()
    {
        int rowIndex = 0;

        if (ViewState["CurrentTableExperinece"] != null)
        {
            DataTable dtCurrentTableExperinece = (DataTable)ViewState["CurrentTableExperinece"];
            DataRow drCurrentRowExperinece = null;
            if (dtCurrentTableExperinece.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentTableExperinece.Rows.Count; i++)
                {

                    TextBox txtEmployerName = (TextBox)gvExperience.Rows[rowIndex].Cells[0].FindControl("txtEmployerName");
                    TextBox txtDesignation = (TextBox)gvExperience.Rows[rowIndex].Cells[1].FindControl("txtDesignation");
                    TextBox txtFromDate = (TextBox)gvExperience.Rows[rowIndex].Cells[2].FindControl("txtFromDate");
                    TextBox txtToDate = (TextBox)gvExperience.Rows[rowIndex].Cells[3].FindControl("txtToDate");
                    TextBox txtTotalYear = (TextBox)gvExperience.Rows[rowIndex].Cells[4].FindControl("txtTotalYear");
                    TextBox txtTotalMonths = (TextBox)gvExperience.Rows[rowIndex].Cells[5].FindControl("txtTotalMonths");
                    TextBox txtTotalDays = (TextBox)gvExperience.Rows[rowIndex].Cells[6].FindControl("txtTotalDays");
                    TextBox txtNatureofDuty = (TextBox)gvExperience.Rows[rowIndex].Cells[7].FindControl("txtNatureofDuty");
                    TextBox txtSalaryDrawn = (TextBox)gvExperience.Rows[rowIndex].Cells[8].FindControl("txtSalaryDrawn");

                    drCurrentRowExperinece = dtCurrentTableExperinece.NewRow();
                    dtCurrentTableExperinece.Rows[i - 1]["Col1"] = txtEmployerName.Text;
                    dtCurrentTableExperinece.Rows[i - 1]["Col2"] = txtDesignation.Text;
                    dtCurrentTableExperinece.Rows[i - 1]["Col3"] = txtFromDate.Text;
                    dtCurrentTableExperinece.Rows[i - 1]["Col4"] = txtToDate.Text;
                    dtCurrentTableExperinece.Rows[i - 1]["Col5"] = txtTotalYear.Text;
                    dtCurrentTableExperinece.Rows[i - 1]["Col6"] = txtTotalMonths.Text;
                    dtCurrentTableExperinece.Rows[i - 1]["Col7"] = txtTotalDays.Text;
                    dtCurrentTableExperinece.Rows[i - 1]["Col8"] = txtNatureofDuty.Text;
                    dtCurrentTableExperinece.Rows[i - 1]["Col9"] = txtSalaryDrawn.Text;
                    rowIndex++;
                }

                ViewState["CurrentTableExperinece"] = dtCurrentTableExperinece;
                //grvStudentDetails.DataSource = dtCurrentTable;
                //grvStudentDetails.DataBind();
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        //SetPreviousData();
    }


    /// <summary>
    /// End of the Experence
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    /// 




    /// save part start

    protected void btnSave_Click(object sender, EventArgs e)
    {

        try
        {
            Button1_Click(sender,e);

            SetRowData();
            SetRowDataExperinece();
            DataTable table = ViewState["CurrentTable"] as DataTable;
            DataTable tableExperinece = ViewState["CurrentTableExperinece"] as DataTable;


            if (table != null && table.Rows[0].ItemArray[0].ToString() != "0" && table.Rows.Count >= 1)
            {
                foreach (DataRow row in table.Rows)
                {
                    String userid = hfregistration.Value;
                    string exmanation = row.ItemArray[0] as string;
                    string Stream = row.ItemArray[1] as string;
                    string Board = row.ItemArray[2] as string;
                    string Subject = row.ItemArray[3] as string;
                    string PassingYear = row.ItemArray[4] as string;
                    string MarksObtained = row.ItemArray[5] as string;
                    string TotalMarks = row.ItemArray[6] as string;
                    string asb = (Double.Parse(MarksObtained) / Double.Parse(TotalMarks) * 100.0).ToString("#0.00");
                    string TotalPercent = asb as string;
                    string Divison = row.ItemArray[8] as string;
                    if (userid != null && exmanation != "0" && Board != null && Subject != null && PassingYear != null && MarksObtained != null && TotalMarks != null && TotalPercent != null && Divison != null)
                    {

                        if (PassingYear == "")
                        {
                            PassingYear = "1900-01-01";
                        }


                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }
                        SqlCommand cmd =
                           new SqlCommand(
                               "insert into ApplicantQualificationDetails(RegestrationNumber,Exmanation,Stream,Board,Subject,PassingYear,MarksObtained,TotalMarks,TotalPercent,Divison) values('" + userid + "','" +
                               exmanation + "','" + Stream  + "','" + Board + "','" + Subject + "','" +
                               Convert.ToDateTime(PassingYear) + "','" + MarksObtained + "','" + TotalMarks + "','" +
                               TotalPercent + "','" + Divison + "')", con);
                        cmd.ExecuteNonQuery();

                     aa = "Qualification";
                       con.Close();



                    }

                }
            }

            if (tableExperinece != null && tableExperinece.Rows[0].ItemArray[0].ToString() != "" && tableExperinece.Rows.Count >= 1)
            {



                foreach (DataRow rowExperinece in tableExperinece.Rows)
                {


                    string userid = hfregistration.Value;
                    string EmployerName = rowExperinece.ItemArray[0] as string;
                    string Designation = rowExperinece.ItemArray[1] as string;
                    string FromDate = rowExperinece.ItemArray[2] as string;
                    string ToDate = rowExperinece.ItemArray[3] as string;
                    string TotalYear = rowExperinece.ItemArray[4] as string;
                    string TotalMonths = rowExperinece.ItemArray[5] as string;
                    string TotalDays = rowExperinece.ItemArray[6] as string;
                    string NatureofDuty = rowExperinece.ItemArray[7] as string;
                    string SalaryDrawn = rowExperinece.ItemArray[8] as string;
                    if (FromDate == "")
                    {
                        FromDate = "1900-01-01";
                    }
                    if (ToDate == "")
                    {
                        ToDate = "1900-01-01";
                    }

                    DateTime d1 = Convert.ToDateTime(FromDate);
                    DateTime d2 = Convert.ToDateTime(ToDate);
                     result = DateTime.Compare(d1, d2);

                    if (userid != null && EmployerName != null && Designation != null && FromDate != null && ToDate != null && TotalYear != null && SalaryDrawn != null && FromDate != "1900-01-01" && ToDate != "1900-01-01")
                    {
                        if (result != 1)
                        {
                            dateclass date = new dateclass();
                            date = date.DateDifference(d1, d2);

                            Int32 year = date.Pyear;
                            Int32 month = date.Pmonth;
                            Int32 day = date.Pday;
                            double abc = year + month / 12 + day / 30.5;
                            years += abc;



                            if (con.State == ConnectionState.Closed)
                            {
                                con.Open();
                            }
                                 SqlCommand cmd =
                                new SqlCommand(
                                    "insert into ApplicantExperienceDetails(RegestrationNumber,EmployerName,Designation,FromDate,ToDate,TotalYear,TotalMonths,TotalDays,NatureofDuty,SalaryDrawn) values('" + userid + "','" + EmployerName + "','" +
                                    Designation + "','" + Convert.ToDateTime(FromDate) + "','" + Convert.ToDateTime(ToDate) + "','" +
                                    TotalYear + "','" + TotalMonths + "','" + TotalDays + "','" +
                                    NatureofDuty + "','" + SalaryDrawn + "')", con);
                            cmd.ExecuteNonQuery();
                            con.Close();
                            bb = "Experinece";
                        }
                        else
                        {
                            bb = "";
                        }

                    }

                }
            }


        }


        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmdAge = new SqlCommand("Select Exp FROM tblpost where Id ='" + lblpostcode.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmdAge);
        DataSet dsAge = new DataSet();
         DataSet dsEducation = new DataSet();
        da.Fill(dsAge);
        if (Convert.ToInt32(dsAge.Tables[0].Rows[0]["Exp"]) == Convert.ToInt32(0))
        {
            SqlCommand cmdEducation = new SqlCommand("Select ISNULL(sum(datediff(year,FromDate,ToDate)),0) as years FROM ApplicantExperienceDetails where RegestrationNumber ='" + lblrgistration.Text + "'", con);
            SqlDataAdapter daEducation = new SqlDataAdapter(cmdEducation);

            daEducation.Fill(dsEducation);
            bb = "Experinece";

        }
        else
        {
            SqlCommand cmdEducation = new SqlCommand("Select ISNULL(sum(datediff(year,FromDate,ToDate)),0) as years FROM ApplicantExperienceDetails where RegestrationNumber ='" + lblrgistration.Text + "'", con);
            SqlDataAdapter daEducation = new SqlDataAdapter(cmdEducation);
         
            daEducation.Fill(dsEducation);
            if (Convert.ToInt32(dsEducation.Tables[0].Rows[0]["years"]) >= Convert.ToInt32(dsAge.Tables[0].Rows[0]["Exp"]))
            {
                bb = "Experinece";
            }
            else
            {
                bb = "";
            }
        }

        
        

        SqlCommand cmdQulaification = new SqlCommand("Select Count(*) as Count FROM ApplicantQualificationDetails where RegestrationNumber ='" + lblrgistration.Text + "'", con);
        SqlDataAdapter daqualificcation = new SqlDataAdapter(cmdQulaification);
        DataSet dsQulaification = new DataSet();
        daqualificcation.Fill(dsQulaification);
        if (Convert.ToInt32(dsQulaification.Tables[0].Rows[0]["Count"]) >= Convert.ToInt32(3))
        {
            aa = "Qualification";
        }
        else
        {
            aa = "";
        }
       
        
        con.Close();
      

        if (aa == "Qualification" && bb == "Experinece" && hfimage.Value == "image" && hfsig.Value == "sigature" && Convert.ToInt32(dsEducation.Tables[0].Rows[0]["years"]) >= Convert.ToInt32(dsAge.Tables[0].Rows[0]["Exp"]) && ddd != "ERROR")
        {

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
                SqlCommand cmd = new SqlCommand("Update ApplicantDetails set status=1 where RegestrationNumber ='" + Session["RegestrationNumber"].ToString() +"'", con);  
               cmd.ExecuteNonQuery();                 
                cmd.Dispose();
                con.Close();

            Session["RegestrationNumber"] = Session["RegestrationNumber"].ToString();

            Response.Redirect("BankPayment.aspx");
           
        }
        else {
            BindEmployeeDetails();
            BindEmployeeQulaification();
            FirstGridViewRow();
            FirstGridViewRowExperience();

           if (aa == "")
            {
                lblErrMsg.Text = "Please Fill full detail of the Qulaification";
            }
            else
            { lblErrMsg.Text = ""; }
           if (bb == "" || Convert.ToInt32(dsEducation.Tables[0].Rows[0]["years"]) < Convert.ToInt32(dsAge.Tables[0].Rows[0]["Exp"]))
            {
                lblErrMsg0.Text = "Please Fill full detail in the Experience Section.  ";
                if (Convert.ToInt32(dsEducation.Tables[0].Rows[0]["years"]) < Convert.ToInt32(dsAge.Tables[0].Rows[0]["Exp"]))
                {
                    lblErrMsg3.Text = "Please Experience should be greater than eual to " + Convert.ToInt32(dsAge.Tables[0].Rows[0]["Exp"]) + " years";
                }
                else
                {
                    lblErrMsg3.Text = "";
                }
                if (result == 1) {
                    lblErrMsg4.Text = "Please Check From is lesser than To date in the Experience Section.";
                }
            }
            else
           { lblErrMsg0.Text = ""; lblErrMsg3.Text = ""; lblErrMsg4.Text = ""; }
            if (hfimage.Value == "")
            {
                lblErrMsg1.Text = "Please Upload the image";
            }
            else
          { lblErrMsg1.Text = ""; }
            if (hfsig.Value == "")
            {
                lblErrMsg2.Text = "Please Upload the Signature";
            }
            else
            { lblErrMsg2.Text = ""; }
            

          
        }
    }
    protected void grvStudentDetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {
       if (e.Row.RowType == DataControlRowType.DataRow)
        {

            DropDownList ddl = e.Row.FindControl("ddlexmanation") as DropDownList;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HPSCDBNEW"].ConnectionString);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("select * from tblqualification order by Post_id", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            ddl.DataSource = ds;
            ddl.DataTextField = "Examination_name";
            ddl.DataValueField = "Examination_name";
            ddl.DataBind();
            con.Close();
            ddl.Items.Insert(0, new ListItem("--Select--", "0"));


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentLength < 51200)
            {
                string strpath = System.IO.Path.GetExtension(FileUpload1.FileName);
                if (strpath != ".jpg" && strpath != ".jpeg" && strpath != ".gif" && strpath != ".png")
                {
                    lblErrMsg.ForeColor = System.Drawing.Color.Red;
                    lblErrMsg.Text = "";
                    lblErrMsg.Text = "Only image formats (jpg, png, gif) are accepted ";
                }
                else
                {
                    int length = FileUpload1.PostedFile.ContentLength;
                    byte[] imgbyte = new byte[length];
                    HttpPostedFile img = FileUpload1.PostedFile;
                    //set the binary data
                    img.InputStream.Read(imgbyte, 0, length);

                    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandText = "Update ApplicantDetails set imagename=@Data where RegestrationNumber =@RegestrationNumber";
                        cmd.Parameters.AddWithValue("@RegestrationNumber", hfregistration.Value);
                        cmd.Parameters.AddWithValue("@Data", imgbyte);
                        cmd.Connection = con;
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Image1.ImageUrl = "~/ShowImage.ashx?id=" + hfregistration.Value;
                 //       trimage.Visible = true;
                        lblErrMsg.Text = "";
                        hfimage.Value = "image";
                    }

                }
            }
            else
            {

                lblErrMsg.Text = "";
                lblErrMsg.Text = "File size exceeds maximum limit 50 KB.";
            }
        }
        else
        {
            lblErrMsg.Text = "Please Select some file.";
        }


        if (FileUpload2.HasFile)
        {
            if (FileUpload2.PostedFile.ContentLength < 30480)
            {
                string strpath = System.IO.Path.GetExtension(FileUpload2.FileName);
                if (strpath != ".jpg" && strpath != ".jpeg" && strpath != ".gif" && strpath != ".png")
                {
                    lblErrMsg.ForeColor = System.Drawing.Color.Red;
                    lblErrMsg.Text = "";
                    lblErrMsg.Text = "Only image formats (jpg, png, gif) are accepted ";
                }
                else
                {
                    int length = FileUpload2.PostedFile.ContentLength;
                    byte[] imgbyte = new byte[length];
                    HttpPostedFile img = FileUpload2.PostedFile;
                    //set the binary data
                    img.InputStream.Read(imgbyte, 0, length);

                    string filename = Path.GetFileName(FileUpload2.PostedFile.FileName);
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandText = "Update ApplicantDetails set sigatureimage=@Data where RegestrationNumber =@RegestrationNumber";
                        cmd.Parameters.AddWithValue("@RegestrationNumber", hfregistration.Value);
                        cmd.Parameters.AddWithValue("@Data", imgbyte);
                        cmd.Connection = con;
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }
                        cmd.ExecuteNonQuery();
                        Image2.ImageUrl = "~/ShowImage2.ashx?id=" + hfregistration.Value;
                        //trimage.Visible = true;
                        lblErrMsg.Text = "";
                        hfsig.Value = "sigature";
                    }
                }
            }
            else
            {
                lblErrMsg.Text = "";
                lblErrMsg.Text = "File size exceeds maximum limit 50 KB.";
            }
        }
        else
        {
            lblErrMsg.Text = "Please Select some file.";
        }
    }
    //protected void txtTotalMarks_TextChanged(object sender, EventArgs e)
    //{
    //  //  TextBox txtEmployerName = (TextBox)gvExperience.Rows[].Cells[0].FindControl("txtEmployerName");

    //    GridViewRow row = ((GridViewRow)((TextBox)sender).NamingContainer);
    //    TextBox txt = (TextBox)row.FindControl("txtMarksObtained");
    //    TextBox txt2 = (TextBox)row.FindControl("txtTotalMarks");
    //    TextBox txt3 = (TextBox)row.FindControl("txtTotalPercent");
    //    int Percentage = int.Parse(txt.Text) * 100 / int.Parse(txt2.Text);
    //    txt3.Text = Percentage.ToString();

    //}
    protected void BindEmployeeDetails()
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmdExperience = new SqlCommand("Select SNo,RegestrationNumber,EmployerName,Designation,CONVERT(VARCHAR(20), FromDate, 103) AS FromDate,CONVERT(VARCHAR(20), ToDate, 103) AS ToDate,TotalYear,TotalMonths,TotalDays,NatureofDuty,SalaryDrawn from ApplicantExperienceDetails where RegestrationNumber='" + Session["RegestrationNumber"] + "'", con);
        SqlDataAdapter daExperience = new SqlDataAdapter(cmdExperience);
        DataSet dsExperience = new DataSet();
        daExperience.Fill(dsExperience);
        con.Close();
        if (dsExperience.Tables[0].Rows.Count > 0)
        {
            gvDetailsExp.DataSource = dsExperience;
            gvDetailsExp.DataBind();
            gvDetailsExp.Visible = true;
        }
        else
        {
            gvDetailsExp.Visible = false;
           
        }

    }
    protected void gvDetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int userid = Convert.ToInt32(gvDetailsExp.DataKeys[e.RowIndex].Values["SNo"].ToString());
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand("delete from ApplicantExperienceDetails where SNo=" + userid, con);
        int result = cmd.ExecuteNonQuery();
        con.Close();
        if (result == 1)
        {
            BindEmployeeDetails();
            lblexperience.ForeColor = Color.Red;
            lblexperience.Text = " details deleted successfully";
        }
    }
    protected void BindEmployeeQulaification()
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
          SqlCommand cmdQulaification = new SqlCommand("Select SNo,RegestrationNumber,Exmanation,Stream,Board,Subject, CONVERT(VARCHAR(20), PassingYear, 103) AS PassingYear,MarksObtained,TotalMarks,TotalPercent,Divison from ApplicantQualificationDetails where RegestrationNumber='" + Session["RegestrationNumber"] + "'", con);
          SqlDataAdapter daQulaification = new SqlDataAdapter(cmdQulaification);
          DataSet dsQulaification = new DataSet();
          daQulaification.Fill(dsQulaification);
        con.Close();
        if (dsQulaification.Tables[0].Rows.Count > 0)
        {
            gvDetailsqulification.DataSource = dsQulaification;
            gvDetailsqulification.DataBind();
            gvDetailsqulification.Visible = true;
        }
        else
        {
            gvDetailsqulification.Visible = false;
            //dsQulaification.Tables[0].Rows.Add(dsQulaification.Tables[0].NewRow());
            //gvDetailsqulification.DataSource = dsQulaification;
            //gvDetailsqulification.DataBind();
            //int columncount = gvDetailsqulification.Rows[0].Cells.Count;
            //gvDetailsqulification.Rows[0].Cells.Clear();
            //gvDetailsqulification.Rows[0].Cells.Add(new TableCell());
            //gvDetailsqulification.Rows[0].Cells[0].ColumnSpan = columncount;
            //gvDetailsqulification.Rows[0].Cells[0].Text = "No Records Found";
        }

    }
    protected void gvDetailsqulification_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int userid = Convert.ToInt32(gvDetailsqulification.DataKeys[e.RowIndex].Values["SNo"].ToString());
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand("delete from ApplicantQualificationDetails where SNo=" + userid, con);
        int result = cmd.ExecuteNonQuery();
        con.Close();
        if (result == 1)
        {
            BindEmployeeQulaification();
            lblQulification.ForeColor = Color.Red;
            lblQulification.Text = " details deleted successfully";
        }
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
}