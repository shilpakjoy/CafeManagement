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

public partial class System_Operator_Add_Category : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("spcategory", obj.con);
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
    protected void btnadd_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd1 = new SqlCommand("spcategory", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 0);
        cmd1.Parameters.Add("@c_id", get_id());
        cmd1.Parameters.Add("@category", txtname.Text);

        cmd1.ExecuteNonQuery();
        obj.closeconnect();
     
        Response.Write("<script>alert('Inserted Successfully')</script>");
        clear();
    }
    protected void clear()
    {
        txtname.Text = "";
    }
}