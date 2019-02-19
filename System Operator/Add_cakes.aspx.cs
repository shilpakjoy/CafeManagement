﻿using System;
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


public partial class System_Operator_Add_cakes : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"].ToString() == "")
        {
            Response.Redirect("../Guest/index.aspx");
        }
    }
    protected int get_id()
    {
        int id = 99;
        int a = 0;
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spcake", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 1);
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        adt.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            a = Int32.Parse(dt.Rows[i][0].ToString());
            if (a > id)
            {
                id = a;
            }
        }
        id = id + 1;
        return id;
    }
    protected void drpcategory_Click(object sender, EventArgs e)
    { 

    }
    protected void btn_add_Click(object sender, EventArgs e)
    {

        Class1 obj = new Class1();
        obj.getconnect();
        String filename = Path.Combine(Server.MapPath("~/Images/menu/"), FileUpload1.FileName);
        SqlCommand cmd = new SqlCommand("spcake", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 0);
        cmd.Parameters.Add("@cake_id", get_id());

        cmd.Parameters.Add("@c_id", drpcategory.SelectedValue.ToString());
        cmd.Parameters.Add("@name", txtname.Text);
        cmd.Parameters.Add("@image", ViewState["filepath"].ToString());
        cmd.Parameters.Add("@description", txtdetail.Text);
        cmd.Parameters.Add("@price", txtprice.Text);

        cmd.ExecuteNonQuery();
        obj.closeconnect();
       
        Response.Write("<script>alert('Inserted Successfully')</script>");
        clear();

    }
    protected void btn_upload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {

            String filename = Path.Combine(Server.MapPath("~/Images/menu/"), FileUpload1.FileName);
            String strExtension = Path.GetExtension(FileUpload1.FileName);
            if (strExtension == ".jpg" || strExtension == ".tmp" || strExtension == ".gif")
            {

                FileUpload1.SaveAs(filename);
                Image1.ImageUrl = "~/Images/menu/" + FileUpload1.FileName;
                ViewState["filepath"] = Image1.ImageUrl;
            }
            else
            {
                Response.Write("<script>alert('Select a valid image')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please choose an image')</script>");
        }
    }
    protected void clear()
    {
        drpcategory.SelectedItem.Text = "";
        txtname.Text = "";
        txtdetail.Text = "";
        txtprice.Text = "";

    }
}