using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace hallsystem.UserPanel
{
    public partial class book : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-FBK93I8;Initial Catalog=DbHallSystem;Integrated Security=True");
        SqlCommand cmd;
        int a, b, c, y, x, z;

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("../UserPanel/Main.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtgooglepay.Text.Equals(""))
            {
                Response.Write("<script>alert('Enter UPI ID')</script>");
            }
            else
            {
                con.Open();
                cmd = new SqlCommand("insert into tblbooking(tblbookingName,tblbookingAddress,tblbookingMobino,tblbookingFunName,tblbookingPerson,tblbookingDat,tblbookingTime,rgEmail,tblbookingaudiosystem,tblbookingviedosystem,tblbookinglightsystem,tblbookingdecorationdesing,tblbookingdecorationprice,tblbookingdishname,tblbookingdishprice,tblbookinggrandtotal,tblbookingUPIID)values('" + Label5.Text + "','" + Label7.Text + "','" + Label8.Text + "','" + Label9.Text + "','" + Label10.Text + "','" + Label11.Text + "','" + Label12.Text + "','" + Label6.Text + "','" + Label13.Text + "','" + Label14.Text + "','" + Label15.Text + "','" + Label1.Text + "','" + Label2.Text + "','" + Label3.Text + "','" + Label4.Text + "','" + txtgrandtotal.Text + "','" + txtgooglepay.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                if (true)
                {
                    Response.Write("<script>alert('Booking successfully')</script>");
                    if (true)
                    {
                        Server.Transfer("../UserPanel/Main.aspx");
                    }
                }

            }



        }

        protected void Page_Load(object sender, EventArgs e)
        {


            //string a, b;

            //if (!this.IsPostBack) 
            //{
            //  a = HttpUtility.UrlDecode(Request.QueryString["name"]);
            //   b = HttpUtility.UrlDecode(Request.QueryString["price"]);
            //}
            //Label1.Text= Session["tblDesignId"].ToString();
            //Label2.Text= Session["tblDesignname"].ToString();


            if (!this.IsPostBack)
            {
                Label1.Text = Session["dname"].ToString();
                Label2.Text = Session["dprice"].ToString();

                Label3.Text = Session["Cname"].ToString();
                Label4.Text = Session["Cprice"].ToString();

                Label5.Text = Session["BName"].ToString();
                Label6.Text = Session["rgEmail"].ToString();
                Label7.Text = Session["Baddress"].ToString();
                Label8.Text = Session["Bmobile"].ToString();
                Label9.Text = Session["BfuncName"].ToString();
                Label10.Text = Session["Bpersonfunc"].ToString();
                Label11.Text = Session["Bday"].ToString();
                Label12.Text = Session["Btime"].ToString();
                Label13.Text = Session["Baudio"].ToString();
                Label14.Text = Session["Bvideo"].ToString();
                Label15.Text = Session["Blight"].ToString();


            }

        }

        protected void txtCateringTotal_Load(object sender, EventArgs e)
        {


            a = Convert.ToInt32(Label10.Text);
            b = Convert.ToInt32(Label4.Text);

            c = a * b;

            txtCateringTotal.Text = Convert.ToInt32(c).ToString();
        }

        protected void txtgrandtotal_Load(object sender, EventArgs e)
        {


            x = Convert.ToInt32(Label2.Text);
            y = Convert.ToInt32(txtCateringTotal.Text);
            z = x + y;

            txtgrandtotal.Text = Convert.ToInt32(z).ToString();
        }

    }
}