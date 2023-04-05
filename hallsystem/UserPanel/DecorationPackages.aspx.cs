using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace hallsystem.UserPanel
{
    public partial class DecorationPackages : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-FBK93I8;Initial Catalog=DbHallSystem;Integrated Security=True");
        SqlCommand cmd;

        string a, b;
        public void Page_Load(object sender, EventArgs e)
        {
          
            repiter();
            //if (!this.IsPostBack)
            //{
            //    a = HttpUtility.UrlDecode(Request.QueryString["name"]);
            //    b = HttpUtility.UrlDecode(Request.QueryString["price"]);

            //}
          
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("../UserPanel/Booking.aspx");
        }

        public void repiter()
        {

            con.Open();
            cmd = new SqlCommand("select tblDesignId,tblDesignname,tblDesignImage,tblDesignPrice,tblDesigntype from tblDecorationdesign", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();

        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            Session["dname"] = HttpUtility.UrlDecode(Request.QueryString["name"]);
            Session["dprice"] = HttpUtility.UrlDecode(Request.QueryString["price"]);

            if (Session["dname"] ==null && Session["dprice"] == null)
            {
                Response.Write("<script>alert('Please Select Design')</script>");
            }
            else
            {
               
                Response.Redirect("../UserPanel/CateringPackages.aspx");
            }
            //if(Session["dname"].ToString()=="")
            //{
            //    Response.Redirect("<Script>alert('Selcet Design')</Script>");
            //}
            //else
            //{
               
            //}
            // Response.Redirect("../UserPanel/DecorationPackages.aspx");

            //Session["dname"] = a;
            //Session["dprice"] = b;


        }

        



        //protected void btnbook_Command(object sender, CommandEventArgs e)
        //{


        //    Response.Redirect("../UserPanel/Confarmation.aspx");
        //}

        //protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        //{


        //    Session["tbldesignid"] = e.CommandArgument;
        //    Session["tbldesignname"] = e.CommandArgument;


        //    //Response.Redirect("../UserPanel/Confarmation.aspx");
        //}


    }
}