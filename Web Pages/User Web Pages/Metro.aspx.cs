using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class User_Web_Pages_Metro : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Transport"].ConnectionString);
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        img_logo.ImageUrl = "~/Images/Metro/Logo/Logo_1.jpg";

        cmd = new SqlCommand("SELECT Description, ImgURL FROM tbl_admin_description WHERE Id=4 ", con);
        cmd.Connection.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            img_about.ImageUrl = "~/Images/Description MainMetro_2.jpg";
        }

        cmd.Connection.Close();
    }
}