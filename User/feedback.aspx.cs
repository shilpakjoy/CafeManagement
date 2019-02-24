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

public partial class User_feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"].ToString() == "")
        {
            Response.Redirect("../Guest/index.aspx");
        }
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spfeedback", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 0);
        cmd.Parameters.Add("@email",Session["email"].ToString());
        cmd.Parameters.Add("@feedback", txtfeedback.Text);

        
        cmd.ExecuteNonQuery();
        obj.closeconnect();

        Response.Write("<script>alert('Inserted Successfully')</script>");
        clear();
    }
    protected void clear()
    {
        txtfeedback.Text = "";

    }
    
}