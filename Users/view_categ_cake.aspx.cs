using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Guest_view_catog_cake : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["email"].ToString() == "")
        //{
        //    Response.Redirect("../Guest/index.aspx");
        //}
    }
    protected void btn_buynow_Click(object sender, EventArgs e)
    {
        Response.Redirect("checkouts.aspx");

    }
}