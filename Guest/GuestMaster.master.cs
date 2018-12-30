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

public partial class Guest_GuestMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpContext.Current.Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
        HttpContext.Current.Response.Cache.SetValidUntilExpires(false);
        HttpContext.Current.Response.Cache.SetRevalidation(HttpCacheRevalidation.AllCaches);
        HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        HttpContext.Current.Response.Cache.SetNoStore();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("splogin", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 1);
        cmd.Parameters.Add("@email", txt_email.Text);
        cmd.Parameters.Add("@password", txt_pswd.Text);
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        adt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["email"] = txt_email.Text;
            //if (dt.Rows[0][3].ToString() == "admin")
            if (dt.Rows[0][3].ToString().CompareTo("admin") == 0)
            {
                Response.Redirect("../Admin/index.aspx");
            }

            else if (dt.Rows[0][3].ToString().CompareTo("systemoperator") == 0)
            {
                Response.Redirect("../System Operator/index.aspx");
            }
            else
            {
                Response.Redirect("../User/Index.aspx");
            }



        }
    }
        protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Guest/index.aspx");

    }

}
