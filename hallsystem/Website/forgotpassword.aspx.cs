using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Data;

namespace hallsystem.Website
{
    public partial class forgotpassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-FBK93I8;Initial Catalog=DbHallSystem;Integrated Security=True");
        SqlCommand cmd;
        String password;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsend_Click(object sender, EventArgs e)
        {
            if(txtforgot.Text.Equals(""))
            {
                Response.Write("<script>alert('Enter the Gmail ID')</script>");
                txtforgot.Focus();
            }
            else
            {
                con.Open();
                cmd = new SqlCommand("Select * from Tblregistration where rgEmail='" + txtforgot.Text + "'", con);
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                  

                    password = ds.Tables[0].Rows[0]["rgPassword"].ToString();
                    sendpassword(password, txtforgot.Text);
                    Response.Write("<script>alert('Password Has Been Sent to  Email Address. Check Your Mail Inbox');</script>");
                    txtforgot.Text.Equals("");
                   // Response.Redirect("../Website/HomePage.aspx");
                    
                   


                }
                else
                {
                    Response.Write("<script>alert('Your Username is Not Valid or Email Not Registered');</script>");
                    txtforgot.Text.Equals("");
                    txtforgot.Focus();
          

                }
                con.Close();
               
            }
        }

        private void sendpassword(String password, String email)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("svayanvarmultipurposehall857@gmail.com", "Hall@85711");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Forgot Password ( svayanvar multipurpose hall forgot password )";
            msg.Body = "Dear " + txtforgot.Text + ", Your Password is  " + password + "\n\n\nThanks & Regards\n svayanvar multipurpose hall";
            string toaddress = txtforgot.Text;
            msg.To.Add(toaddress);
            string fromaddress = " svayanvar multipurpose hall <svayanvarmultipurposehall857@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);


            }
            catch
            {
                throw;
            }
        }
    }
}