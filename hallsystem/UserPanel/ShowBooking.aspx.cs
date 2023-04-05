using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace hallsystem.UserPanel
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
            cmd = new SqlCommand("Select * from tblbooking where rgEmail='" + Session["rgEmail"] + "'", con);
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
            Response.Write("<script>confirm('Data delete successfully')</script>");
          
            con.Close();
            Show();
        }

        protected void GridViewShowData_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string item = e.Row.Cells[0].Text;
                foreach (Button button in e.Row.Cells[16].Controls.OfType<Button>())
                {
                    if (button.CommandName == "Delete")
                    {
                        button.Attributes["onclick"] = "if(!confirm('Cancellation charges 20% on total" + item + "?')){ return false; };";
                    }
                }
            }
        }
    }
}