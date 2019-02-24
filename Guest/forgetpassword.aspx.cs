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

public partial class Guest_forgetpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("sptbl_reservation", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 3);
        cmd.Parameters.Add("@email", txtemail.Text);
        cmd.Parameters.Add("@phone", txtphn.Text);
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        adt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["email"] = dt.Rows[0][0].ToString();
            Response.Redirect("reset_password.aspx");


        }
        else
        {
            Response.Write("<script>alert('Enter valid username and phone number')</script>");
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Guest/index.aspx");
    }
}