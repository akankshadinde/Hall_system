using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace hallsystem.AdminPanel
{
    public partial class AddDecorationDesign : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-FBK93I8;Initial Catalog=DbHallSystem;Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Showdata();
                show();
            }
            
        }

        protected void fuImage_Load(object sender, EventArgs e)
        {
            //string strpath = System.IO.Path.GetExtension(fuImage.FileName);
            //if (strpath != ".jpg" && strpath != ".jpeg" && strpath != ".gif" && strpath != ".png")
            //{
            //    //lblExtension.ForeColor = System.Drawing.Color.Red;
            //    //lblExtension.Text = "Only image formats (jpg, png, gif) are accepted ";
            //}
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtImgname.Text.Equals(""))
            {
                Response.Write("<script>alert('Enter the Name')</script>");
                txtImgname.Focus();
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
                cmd = new SqlCommand("insert into tblDecorationdesign (tblDesignname,tblDesignImage,tblDesignPrice,tblDesigntype)values('" + txtImgname.Text + "','" + img + "','" + txtprice.Text + "','" + DropDowntype.SelectedItem.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Data Save successfully')</script>");
                clr();
                Showdata();
            }
        }

        public void clr()
        {
            txtImgname.Text = "";
            DropDowntype.SelectedIndex = 0;
            txtprice.Text = "";

        }

        protected void GridView1_Load(object sender, EventArgs e)
        {
            Showdata();

        }

        public void Showdata()
        {
            con.Open();
            cmd = new SqlCommand("select tblDesignId,tblDesignname,tblDesignImage,tblDesignPrice,tblDesigntype from tblDecorationdesign", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();

            //con.Open();
            //cmd = new SqlCommand("select tblDesignId,tblDesignname,tblDesignImage from tblDecorationdesign", con);
            //SqlDataReader dd = cmd.ExecuteReader();
            //if (dd.HasRows == true)
            //{
            //    GridView1.DataSource = dd;
            //    GridView1.DataBind();
            //}
            //con.Close();
        }


        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            //int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            //con.Open();
            //SqlCommand cmd1 = new SqlCommand("delete FROM tblDecorationdesign where tblDesignId='" + id + "'", con);
            //int t = cmd1.ExecuteNonQuery();

            //if (t < 0)
            //{
            //    Response.Write("<script>alert('Data delete successfully')</script>");
            //    GridView1.EditIndex = -1;
            //    Showdata();

            //}

            //con.Close();
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            Label lbldeleteid = (Label)row.FindControl("lblID");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete FROM tblDecorationdesign where tblDesignId='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data delete successfully')</script>");
            con.Close();

            Showdata();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            lblid.Text = GridView1.SelectedRow.Cells[0].Text;
            txtImgname.Text = GridView1.SelectedRow.Cells[1].Text;
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

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            if (txtImgname.Text.Equals(""))
            {
                Response.Write("<script>alert('Enter the Name')</script>");
                txtImgname.Focus();
            }
            else if (txtprice.Text.Equals(""))
            {
                Response.Write("<script>alert('Enter Price')</script>");
                txtprice.Focus();
            }
            else
            {
                con.Open();
                cmd = new SqlCommand("update tblDecorationdesign set tblDesignname='" + txtImgname.Text + "',tblDesignPrice='" + txtprice.Text + "' where tblDesignId='" + lblid.Text + "' ", con);
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

        protected void DropDowntype_Load(object sender, EventArgs e)
        {

           

        }



        public void show()
        {
            con.Open();
            cmd = new SqlCommand("select tblimgtypename from tblimgtype", con);
            cmd.ExecuteNonQuery();

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            foreach (DataRow dr in dt.Rows)
            {
                DropDowntype.Items.Add(dr["tblimgtypename"].ToString());
            }
            DropDowntype.Items.Insert(0,"--select--");
            con.Close();
        }
    }
}