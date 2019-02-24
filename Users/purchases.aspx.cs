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

public partial class Users_purchases : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       
        //if (Session["email"] == null)
        //{
        //    //Response.Redirect("~/Guest/adminlogin.aspx");
        //}
       if (!IsPostBack)
        {
            //cmd.Parameters.Add("@cartid", get_ids());

            Class1 obj = new Class1();
            obj.getconnect();
            SqlCommand cmd = new SqlCommand("spviewproducts", obj.con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@c_id", Request.QueryString["id"].ToString());
            cmd.Parameters.Add("@cake_id", Request.QueryString["item"].ToString());
            // cmd.Parameters.Add("@foodid", Request.QueryString["fid"].ToString());

            DataTable dt = new DataTable();
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            adt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                //Response.Write("Y");
                DataList1.DataSource = dt;
               DataList1.DataBind();
            }
            else
                Response.Write("NOO");
        }

    }



    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd1 = new SqlCommand("spcakebk_register", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 0);
        cmd1.Parameters.Add("@c_id", Convert.ToInt32(Request.QueryString["id"].ToString()));
        cmd1.Parameters.Add("@cake_id", Convert.ToInt32(Request.QueryString["item"].ToString()));
        
        cmd1.Parameters.Add("@landmark", txt_landmark.Text);
        cmd1.Parameters.Add("@town", txt_town.Text);
        cmd1.Parameters.Add("@date", txt_date.Text);
        cmd1.Parameters.Add("@time", txt_time.Text);

        cmd1.Parameters.Add("@quantity", Convert.ToInt32((txt_quantity.Text)));
        cmd1.Parameters.Add("@totalprice", Label2.Text);
        //cmd.Parameters.Add("@status", "Not Approved");
        cmd1.ExecuteNonQuery();
        obj.closeconnect();
        Response.Write("<script>alert('Added to cart Successfully you can check in your cart')</script>");
        //
    }
    protected void txt_quantity_TextChanged(object sender, EventArgs e)
    {
        int req = Convert.ToInt32(txt_quantity.Text);
        int price = 0;
        foreach (DataListItem item in DataList1.Items)
        {

            Label lblprice = (Label)item.FindControl("priceLabel");
            price = Convert.ToInt32(lblprice.Text);


        }
        int totalprice = price * req;
        Label2.Text = "Rs " + totalprice.ToString();



    }
    
}