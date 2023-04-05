using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hallsystem.UserPanel
{
    public partial class BookingDates : System.Web.UI.Page
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
            cmd = new SqlCommand("Select tblbookingid,tblbookingDat from tblbooking", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridViewShowData.DataSource = dt;
            GridViewShowData.DataBind();
            con.Close();
        }
    }
}