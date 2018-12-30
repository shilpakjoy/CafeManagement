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

public partial class System_Operator_Add_Category : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["email"].ToString() == "")
        {
            Response.Redirect("../Guest/index.aspx");
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd1 = new SqlCommand("spcategory", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 0);
        cmd1.Parameters.Add("@category", txtname.Text);
        
        cmd1.ExecuteNonQuery();
        obj.closeconnect();
     
        Response.Write("<script>alert('Inserted Successfully')</script>");
    }
}