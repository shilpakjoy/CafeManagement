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

public partial class Admin_Add_Employee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"].ToString() == "")
        {
            Response.Redirect("../Guest/index.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         Class1 obj = new Class1();
        obj.getconnect();
        String filename = Path.Combine(Server.MapPath("~/Images/"), FileUpload1.FileName);
        SqlCommand cmd = new SqlCommand("spemployee", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 0);
        cmd.Parameters.Add("@emp_fname", txt_fname.Text);
        cmd.Parameters.Add("@emp_lname", txt_lname.Text);
        cmd.Parameters.Add("@housename", txt_address.Text);
        cmd.Parameters.Add("@gender", RadioBtnList1_gender.SelectedItem.Text);
        cmd.Parameters.Add("@state", DropDownList2_state.SelectedItem.Text);
        cmd.Parameters.Add("@district", txt_district.Text);
        cmd.Parameters.Add("@city", txt_city.Text);
        cmd.Parameters.Add("@pincode", txt_pincode.Text);
        cmd.Parameters.Add("@phone", txt_phone.Text);
        cmd.Parameters.Add("@email", txt_email.Text);
        cmd.Parameters.Add("@image",ViewState["filepath"].ToString());
        cmd.Parameters.Add("@type", DropDownList1_type.SelectedItem.Text);
        cmd.ExecuteNonQuery();
        obj.closeconnect();
        clear();
        Response.Write("<script>alert('Registered Successfully')</script>");
    }
    protected void clear()
    {
        //txtroomno.Text = "";
        //RadioButtonList1.ClearSelection();
        //RadioButtonList2.ClearSelection();
        //Image1.ImageUrl = "";
        //txtdesc.Text = "";
        //txtrate.Text = "";

    }
    
    protected void Button2_Click1(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {

            String filename = Path.Combine(Server.MapPath("~/Images/"), FileUpload1.FileName);
            String strExtension = Path.GetExtension(FileUpload1.FileName);
            if (strExtension == ".jpg" || strExtension == ".tmp" || strExtension == ".gif")
            {

                FileUpload1.SaveAs(filename);
                Image1.ImageUrl = "~/Images/" + FileUpload1.FileName;
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
