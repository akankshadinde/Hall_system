using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;

namespace hallsystem.AdminPanel
{
    public partial class BookingReport : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-FBK93I8;Initial Catalog=DbHallSystem;Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            Show();
            Label1.Text= DateTime.Now.ToString("yyyy-MM-dd");


        }
        public void Show()
        {
            con.Open();
            cmd = new SqlCommand("Select tblbookingid,tblbookingName,tblbookingMobino,tblbookingFunName,tblbookingDat,tblbookinggrandtotal,tblbookingUPIID from tblbooking", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridViewShowData.DataSource = dt;
            GridViewShowData.DataBind();
            con.Close();
        }

        protected void BtnExport_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Report.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            GridViewShowData.RenderControl(hw);
            Label1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfdoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparse = new HTMLWorker(pdfdoc);
            PdfWriter.GetInstance(pdfdoc, Response.OutputStream);
            pdfdoc.Open();
            htmlparse.Parse(sr);
            pdfdoc.Close();
            Response.Write(pdfdoc);
            Response.End();
            GridViewShowData.AllowPaging = true;
            GridViewShowData.DataBind();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("select * from tblbooking where tblbookingDat Like '%" + TextBox1.Text + "%'", con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridViewShowData.DataSource = dt;
            GridViewShowData.DataBind();
            con.Close();
        }

        protected void DropDownYear_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("select * from tblbooking where tblbookingDat Like '%" + DropDownYear.Text + "%'", con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridViewShowData.DataSource = dt;
            GridViewShowData.DataBind();
            con.Close();
        }
    }
}