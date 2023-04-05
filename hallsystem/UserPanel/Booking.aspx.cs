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
    public partial class Booking : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-FBK93I8;Initial Catalog=DbHallSystem;Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            { 
            txtrbBooking.Text = Session["rgEmail"].ToString();
            }
        }

      
        public void clr()
        {
            txtname.Text = "";
            txtAddress.Text = "";
            txtmobileno.Text = "";
            txtfunctionname.Text = "";
            txtPersonfunct.Text = "";
            txtDay.Text = "";
            txtTime.Text = "";
            txtrbBooking.Text = "";
        }

        protected void txtDay_Load(object sender, EventArgs e)
        {
            if (true)
            {
                SqlDataAdapter da1;
                SqlCommand cmd = new SqlCommand("select  * from tblbooking where tblbookingDat='" + txtDay.Text + "'", con);
                da1 = new SqlDataAdapter(cmd);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                int i1 = ds1.Tables[0].Rows.Count;
                if (i1 > 0)
                {
                    Response.Write("<script>alert('Date is Already Book')</script>");
                    txtDay.Text = "";
                    txtDay.Focus();
                }

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtname.Text.Equals(""))
            {
                Response.Write("<script>alert('Enter the Name')</script>");
                txtname.Focus();
            }
            else if (txtAddress.Text.Equals(""))
            {
                Response.Write("<script>alert('Enter the Address')</script>");
                txtAddress.Focus();
            }
            else if (txtmobileno.Text.Equals(""))
            {
                Response.Write("<script>alert('Enter the Mobile No')</script>");
                txtmobileno.Focus();
            }
            else if (txtfunctionname.Text.Equals(""))
            {
                Response.Write("<script>alert('Enter the Function Name')</script>");
                txtfunctionname.Focus();
            }
            else if (txtPersonfunct.Text.Equals(""))
            {
                Response.Write("<script>alert(' Enter the Number Functions')</script>");
                txtPersonfunct.Focus();
            }
            else if (txtDay.Text.Equals(""))
            {
                Response.Write("<script>alert('Please Select Date')</script>");
                txtDay.Focus();
            }
            else if (txtTime.Text.Equals(""))
            {
                Response.Write("<script>alert('Please Select Time')</script>");
                txtTime.Focus();
            }
            else if (ddlAudio.Text.Equals(""))
            {
                Response.Write("<script>alert('Please Select Audio System')</script>");
                ddlAudio.Focus();
            }
            else if (ddlVideo.Text.Equals(""))
            {
                Response.Write("<script>alert('Please Select Video System')</script>");
                ddlVideo.Focus();
            }
            else if (ddllight.Text.Equals(""))
            {
                Response.Write("<script>alert('Please Select Lighting System')</script>");
                ddllight.Focus();
            }

            //con.Open();
            //cmd = new SqlCommand("insert into tblbooking(tblbookingName,tblbookingAddress,tblbookingMobino,tblbookingFunName,tblbookingPerson,tblbookingDat,tblbookingTime,rgEmail) values('" + txtname.Text+ "','" + txtAddress.Text + "','" + txtmobileno.Text + "','" + txtfunctionname.Text + "','" + txtPersonfunct.Text + "','" + txtDay.Text + "','" + txtTime.Text + "','"+txtrbBooking.Text+"')", con);
            //cmd.ExecuteNonQuery();
            //con.Close();

            //Response.Write("<script>alert('Booking successfully')</script>");
            //clr();
            else
            {

                Session["BName"] = txtname.Text;
                Session["Bmobile"] = txtmobileno.Text;
                Session["Baddress"] = txtAddress.Text;
                Session["BfuncName"] = txtfunctionname.Text;
                Session["Bpersonfunc"] = txtPersonfunct.Text;
                Session["Bday"] = txtDay.Text;
                Session["Btime"] = txtTime.Text;
                Session["Baudio"] = ddlAudio.Text;
                Session["Blight"] = ddllight.Text;
                Session["Bvideo"] = ddlVideo.Text;
                Response.Redirect("../UserPanel/DecorationPackages.aspx");
            }
        
        }
    }
}