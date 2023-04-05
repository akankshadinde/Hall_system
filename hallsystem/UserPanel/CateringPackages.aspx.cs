using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace hallsystem.UserPanel
{
    public partial class CateringPackages : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-FBK93I8;Initial Catalog=DbHallSystem;Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            repiter();
        }

        public void repiter()
        {

            con.Open();
            cmd = new SqlCommand("select tblCateringId,tblCateringName,tblCateringImage,tblCateringPrice,tblCateringType from tblCatering", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();

        }

        protected void btnNext_Click1(object sender, EventArgs e)
        {
            Session["Cname"] = HttpUtility.UrlDecode(Request.QueryString["name"]);
            Session["Cprice"] = HttpUtility.UrlDecode(Request.QueryString["price"]);

            if (Session["Cname"] == null && Session["Cprice"] == null)
            {
                Response.Write("<script>alert('Please Select Plate')</script>");
            }
            else
            {

                Response.Redirect("../UserPanel/Confarmation.aspx");
            }
        }

        protected void btnBack_Click1(object sender, EventArgs e)
        {
            Response.Redirect("../UserPanel/DecorationPackages.aspx");
        }
    }
}