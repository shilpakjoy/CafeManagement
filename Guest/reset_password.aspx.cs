using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Guest_reset_password : System.Web.UI.Page
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
        cmd.Parameters.Add("@flag", 2);
        cmd.Parameters.Add("@password", TextBox1.Text);
        cmd.Parameters.Add("@email", Session["email"].ToString());

        SqlCommand cmd1 = new SqlCommand("sptbl_reservation", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 4);
        cmd1.Parameters.Add("@password", TextBox1.Text);
        cmd1.Parameters.Add("@email", Session["email"].ToString());



        cmd.ExecuteNonQuery();
        cmd1.ExecuteNonQuery();
        Response.Redirect("index.aspx");

    }
}