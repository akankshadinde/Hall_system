using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace hallsystem.UserPanel
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-FBK93I8;Initial Catalog=DbHallSystem;Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            this.clear();

            Response.Redirect("../Website/Login.aspx");
        }


        public void clear()
        {
            txtusername.Text = "";
            txtemail.Text = "";
            txtmobileno.Text = "";
            txtpass.Text = "";
            txtconfpass.Text = "";
        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            if (txtusername.Text.Equals(""))
            {
                Response.Write("<script>alert('Enter the User Name')</script>");
                txtusername.Focus();
            }
            else if (txtemail.Text.Equals(""))
            {
                Response.Write("<script>alert('Enter the Email')</script>");
                txtemail.Focus();
            }
            else if (txtmobileno.Text.Equals(""))
            {
                Response.Write("<script>alert('Enter the Mobile No')</script>");
                txtmobileno.Focus();
            }
            else if (txtpass.Text.Equals(""))
            {
                Response.Write("<script>alert('Enter the Password')</script>");
                txtpass.Focus();
            }
            else if (txtconfpass.Text.Equals(""))
            {
                Response.Write("<script>alert('Enter the Confirm Password')</script>");
                txtconfpass.Focus();
            }
            else if (txtpass.Text != txtconfpass.Text)
            {
                Response.Write("<script>alert('Enter Password Not Match')</script>");
                txtpass.Focus();
            }
            else
            {
                con.Open();
                cmd = new SqlCommand("insert into Tblregistration(rgUserName,rgEmail,rgMobileNo,rgPassword) values('" + txtusername.Text + "','" + txtemail.Text + "','" + txtmobileno.Text + "','" + txtconfpass.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Registration successfully')</script>");
                clear();
                Response.Redirect("../Website/Login.aspx");
            }
        }
    }

  
}