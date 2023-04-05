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

    public partial class Login : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-FBK93I8;Initial Catalog=DbHallSystem;Integrated Security=True");
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnsingup_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void btnsingin_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Equals(""))
            {
                Response.Write("<script>alert('Enter the Gmail ID')</script>");
                TextBox1.Focus();
            }
            else if (TextBox3.Text.Equals(""))
            {
                Response.Write("<script>alert('Enter the Password')</script>");
                TextBox3.Focus();
            }
            else
            {
                con.Open();
                cmd = new SqlCommand("select * from Tblregistration where rgEmail='" + TextBox1.Text + "' and rgPassword='" + TextBox3.Text + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                con.Close();

                if (dt.Rows.Count > 0)
                {


                    Session["rgEmail"] = TextBox1.Text;
                    Response.Write("<script>alert('login successfuly')</script>");

                    Response.Redirect("../UserPanel/Main.aspx");

                    Session.RemoveAll();
                }
                else
                {
                    Response.Write("<script>alert(' Your username and password is incorrect')</script>");

                }
            }

            if (true)
            {
               
                    con.Open();
                    cmd = new SqlCommand("select * from tblAdmin where tblAdminname='" + TextBox1.Text + "' and tblAdminPass='" + TextBox3.Text + "'", con);
                    SqlDataAdapter sdaa = new SqlDataAdapter(cmd);
                    DataTable dtt = new DataTable();
                    sdaa.Fill(dtt);
                    con.Close();

                    if (dtt.Rows.Count > 0)
                    {


                        Session["tblAdminname"] = TextBox1.Text;
                        Response.Write("<script>alert('login successfuly')</script>");

                        Response.Redirect("../AdminPanel/DefaultPage.aspx");

                        Session.RemoveAll();
                    }
                    else
                    {
                        Response.Write("<script>alert(' Your username and password is incorrect')</script>");

                    }
                }
            }

       
    }

    }
