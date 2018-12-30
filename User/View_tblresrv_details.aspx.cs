using System;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class System_Operator_View_tblresrv_details : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("sptbl_reservation", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 2);
        cmd.Parameters.Add("@status", "Approve");
        cmd.Parameters.Add("@reserve_id", Request.QueryString["id"].ToString());

        cmd.Parameters.Add("@email", Request.QueryString["id1"].ToString());
        cmd.ExecuteNonQuery();
        Response.Redirect("View_table_reservation.aspx");
    }
    protected void Button2_Click(object sender, System.EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("sptbl_reservation", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 2);
        cmd.Parameters.Add("@status", "Reject");
        cmd.Parameters.Add("@reserve_id", Request.QueryString["id"].ToString());

        cmd.Parameters.Add("@email", Request.QueryString["id1"].ToString());
        cmd.ExecuteNonQuery();
        Response.Redirect("View_table_reservation.aspx");
    }
}