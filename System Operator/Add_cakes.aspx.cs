using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class System_Operator_Add_cakes : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void btn_add_Click(object sender, EventArgs e)
    {

        Class1 obj = new Class1();
        obj.getconnect();
        String filename = Path.Combine(Server.MapPath("~/Images/menu/"), FileUpload1.FileName);
        SqlCommand cmd = new SqlCommand("spcake", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 0);
        cmd.Parameters.Add("@category", drpcategory.SelectedItem.Text);
        cmd.Parameters.Add("@name", txtname.Text);
        cmd.Parameters.Add("@image", ViewState["filepath"].ToString());
        cmd.Parameters.Add("@description", txtdetail.Text);
        cmd.Parameters.Add("@price", txtprice.Text);

        cmd.ExecuteNonQuery();
        obj.closeconnect();
       
        Response.Write("<script>alert('Inserted Successfully')</script>");
    }
    protected void btn_upload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {

            String filename = Path.Combine(Server.MapPath("~/Images/menu/"), FileUpload1.FileName);
            String strExtension = Path.GetExtension(FileUpload1.FileName);
            if (strExtension == ".jpg" || strExtension == ".tmp" || strExtension == ".gif")
            {

                FileUpload1.SaveAs(filename);
                Image1.ImageUrl = "~/Images/menu/" + FileUpload1.FileName;
                ViewState["filepath"] = Image1.ImageUrl;
            }
            else
            {
                Response.Write("<script>alert('Select a valid image')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please choose an image')</script>");
        }
    }
}