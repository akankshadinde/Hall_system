using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace hallsystem.AdminPanel
{
    public partial class AddCateringPackages_aspx : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-FBK93I8;Initial Catalog=DbHallSystem;Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            Showdata();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtPlatename.Text.Equals(""))
            {
                Response.Write("<script>alert('Enter the Name')</script>");
                txtPlatename.Focus();
            }
            else if (fuImage.FileName.Equals(""))
            {
                Response.Write("<script>alert('Please Select Image')</script>");
                fuImage.Focus();
            }
            else if (txtprice.Text.Equals(""))
            {
                Response.Write("<script>alert('Enter the Prices')</script>");
                txtprice.Focus();
            }
            else if (DropDowntype.Text.Equals(""))
            {
                Response.Write("<script>alert('Please Selcet Type')</script>");
                DropDowntype.Focus();
            }
            else
            {
                fuImage.SaveAs(Server.MapPath("~/Uploadimages/") + Path.GetFileName(fuImage.FileName));
                string img = "~/Uploadimages/" + Path.GetFileName(fuImage.FileName);
                con.Open();
                cmd = new SqlCommand("insert into tblCatering (tblCateringName,tblCateringImage,tblCateringPrice,tblCateringType)values('" + txtPlatename.Text + "','" + img + "','" + txtprice.Text + "','" + DropDowntype.SelectedItem.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Data Save successfully')</script>");
                clr();
                Showdata();
            }
        }

        public void clr()
        {
            txtPlatename.Text = "";
            DropDowntype.SelectedIndex = 0;
            txtprice.Text = "";

        }

        public void Showdata()
        {
            con.Open();
            cmd = new SqlCommand("select tblCateringId,tblCateringName,tblCateringImage,tblCateringPrice,tblCateringType from tblCatering", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();

           
        }

        protected void GridView1_Load(object sender, EventArgs e)
        {
            Showdata();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblid.Text = GridView1.SelectedRow.Cells[0].Text;
            txtPlatename.Text = GridView1.SelectedRow.Cells[1].Text;
            txtprice.Text = GridView1.SelectedRow.Cells[3].Text;
            txttypeshow.Text = GridView1.SelectedRow.Cells[4].Text;
            btnAdd.Visible = false;
            btnupdate.Visible = true;
            fuImage.Visible = false;
            btnclear.Visible = true;
            lblSelecimg.Visible = false;
            DropDowntype.Visible = false;
            txttypeshow.Visible = true;
            txttypeshow.Enabled = false;
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            clr();
            btnAdd.Visible = true;
            btnupdate.Visible = false;
            fuImage.Visible = true;
            btnclear.Visible = false;
            lblSelecimg.Visible = true;
            DropDowntype.Visible = true;
            txttypeshow.Visible = false;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            Label lbldeleteid = (Label)row.FindControl("lblID");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete FROM tblCatering where tblCateringId='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data delete successfully')</script>");
            con.Close();

            Showdata();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            if (txtPlatename.Text.Equals(""))
            {
                Response.Write("<script>alert('Enter the Name')</script>");
                txtPlatename.Focus();
            }
            else if (txtprice.Text.Equals(""))
            {
                Response.Write("<script>alert('Enter the Prices')</script>");
                txtprice.Focus();
            }
            else
            {
                con.Open();
                cmd = new SqlCommand("update tblCatering set tblCateringName='" + txtPlatename.Text + "',tblCateringPrice='" + txtprice.Text + "' where tblCateringId='" + lblid.Text + "' ", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Data Update successfully')</script>");
                Showdata();
                clr();
                btnAdd.Visible = true;
                btnupdate.Visible = false;
                fuImage.Visible = true;
                btnclear.Visible = false;
                lblSelecimg.Visible = true;
                DropDowntype.Visible = true;
                txttypeshow.Visible = false;
            }
        }
    }
}