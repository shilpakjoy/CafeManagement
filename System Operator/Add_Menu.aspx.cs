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

public partial class System_Operator_Add_Menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"].ToString() == "")
        {
            Response.Redirect("../Guest/index.aspx");
        }
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        String filename = Path.Combine(Server.MapPath("~/System Operator/img/Images/"), FileUpload1.FileName);
        SqlCommand cmd1 = new SqlCommand("spmenu", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 0);
        cmd1.Parameters.Add("@type", DropDownList1_type.SelectedItem.Text);
        cmd1.Parameters.Add("@name", txt_name.Text);
        cmd1.Parameters.Add("@image", ViewState["filepath"].ToString());
        cmd1.Parameters.Add("@price", txt_price.Text);
        cmd1.ExecuteNonQuery();
        obj.closeconnect();
        clear();
        Response.Write("<script>alert('Inserted Successfully')</script>");
    }
    protected void clear()
    {
        DropDownList1_type.ClearSelection();
        txt_name.Text = "";
        Image1.ImageUrl = "";
        txt_price.Text = "";

    }
    protected void btn_upload_Click1(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {

            String filename = Path.Combine(Server.MapPath("~/System Operator/img/Images/"), FileUpload1.FileName);
            String strExtension = Path.GetExtension(FileUpload1.FileName);
            if (strExtension == ".jpg" || strExtension == ".tmp" || strExtension == ".gif")
            {

                FileUpload1.SaveAs(filename);
                Image1.ImageUrl = "~/System Operator/img/Images/" + FileUpload1.FileName;
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