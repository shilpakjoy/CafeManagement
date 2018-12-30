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

public partial class Guest_Table_Reservation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();

        SqlCommand cmd = new SqlCommand("splogin", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 0);
        cmd.Parameters.Add("@email", txt_email.Text);
        cmd.Parameters.Add("@password", txt_pswd.Text);
        cmd.Parameters.Add("@usertype","Guest");

        //String filename = Path.Combine(Server.MapPath("~/Images/"), FileUpload1.FileName);
        SqlCommand cmd1 = new SqlCommand("sptbl_reservation", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 0);
        cmd1.Parameters.Add("@f_name", txt_fname.Text);
        cmd1.Parameters.Add("@l_name", txt_lname.Text);
        cmd1.Parameters.Add("@email", txt_email.Text);
        cmd1.Parameters.Add("@password", txt_pswd.Text);
        cmd1.Parameters.Add("@people", DropDownList1_people.SelectedItem.Text);
        cmd1.Parameters.Add("@phone", txt_phone.Text);
        cmd1.Parameters.Add("@date", txt_date.Text);
        cmd1.Parameters.Add("@time", txt_time.Text);
        cmd1.Parameters.Add("@message", txt_msg.Text);
        cmd1.Parameters.Add("@status", "waiting");
        cmd.ExecuteNonQuery();

        cmd1.ExecuteNonQuery();
        obj.closeconnect();
        clear();
        Response.Write("<script>alert('Registered Successfully')</script>");
    }
    protected void clear()
    {
        txt_fname.Text = "";
        txt_lname.Text = "";
        txt_email.Text = "";
        txt_pswd.Text = "";
        DropDownList1_people.ClearSelection();
        txt_phone.Text = "";
        txt_date.Text = "";
        txt_time.Text = "";
        txt_msg.Text = "";

        

    }
    
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("../Guest/index.aspx");

    }
}