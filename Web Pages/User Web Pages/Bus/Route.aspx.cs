﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Drawing;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class User_Web_Pages_Bus_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Transport"].ConnectionString);
    
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGrid();
    }

    protected void BindGrid()
    {
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM tbl_admin_bus WHERE Source='" + ddl_source.SelectedValue + "' AND Destination='" + ddl_destination.SelectedValue + "' ", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        bus_grid.DataSource = ds;
        bus_grid.DataBind();
    }
}
