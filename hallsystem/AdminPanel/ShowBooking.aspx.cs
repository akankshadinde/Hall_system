using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hallsystem.AdminPanel
{
    public partial class ShowBooking : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-FBK93I8;Initial Catalog=DbHallSystem;Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            Show();
        }
        public void Show()
        {
            con.Open();
            cmd = new SqlCommand("Select * from tblbooking", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridViewShowData.DataSource = dt;
            GridViewShowData.DataBind();
            con.Close();
        }

        protected void GridViewShowData_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridViewShowData.Rows[e.RowIndex];
            Label lbldeleteid = (Label)row.FindControl("lblID");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete FROM tblbooking where tblbookingid='" + Convert.ToInt32(GridViewShowData.DataKeys[e.RowIndex].Value.ToString()) + "'", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data delete successfully')</script>");
            con.Close();
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
    }
}