using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Guest_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Users/index.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        Response.Redirect("User_Registration.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("shopping.aspx");

    }
}