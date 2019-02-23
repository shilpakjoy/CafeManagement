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

public partial class Guest_User_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btn_register_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();

        SqlCommand cmd = new SqlCommand("splogin", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 0);
        cmd.Parameters.Add("@email", txt_email.Text);
        cmd.Parameters.Add("@password", txt_password.Text);
        cmd.Parameters.Add("@usertype","Guest");

        //String filename = Path.Combine(Server.MapPath("~/Images/"), FileUpload1.FileName);
        SqlCommand cmd1 = new SqlCommand("spregistration", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 0);
        cmd1.Parameters.Add("@name", txt_name.Text);
        cmd1.Parameters.Add("@email", txt_email.Text);
        cmd1.Parameters.Add("@password", txt_password.Text);
        cmd1.Parameters.Add("@phone", txt_mob.Text);
        
       // cmd1.Parameters.Add("@status", "waiting");
        
        cmd.ExecuteNonQuery();

        cmd1.ExecuteNonQuery();
        obj.closeconnect();
        
        Response.Write("<script>alert('Registered Successfully')</script>");
    }
    
    protected void btn_cancel_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");

    }
}