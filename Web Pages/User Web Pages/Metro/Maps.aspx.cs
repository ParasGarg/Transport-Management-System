using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_Web_Pages_Metro_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Transport"].ConnectionString);
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        img_direction.Visible = false;
        BindImage();
    }

    protected void BindImage()
    {
        cmd = new SqlCommand("SELECT Maps FROM tbl_admin_metro WHERE Source='" + ddl_source.SelectedValue + "' AND Destination='" + ddl_destination.SelectedValue + "' ", con);
        cmd.Connection.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            img_direction.Visible = true;
            img_direction.ImageUrl = dr["Maps"].ToString();
        }

        cmd.Connection.Close();
    }
}