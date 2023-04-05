using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hallsystem
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rgEmail"] != null)
            {
                lblUserMail.Text = Session["rgEmail"].ToString();
            }
            else
            {
                Response.Redirect("../Website/HomePage.aspx");
                Session.RemoveAll();
            }


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("../Website/HomePage.aspx");
        }

       
    }
}