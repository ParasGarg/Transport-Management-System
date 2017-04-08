using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class User_Web_Pages_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Transport"].ConnectionString);
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        //txt_about.Enabled = false;
        img_logo.ImageUrl = "~/Images/Bus/Logo/DTC_Logo_1.png";

        cmd = new SqlCommand("SELECT Description, ImgURL FROM tbl_admin_description WHERE Id=2 ", con);
        cmd.Connection.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            img_about.ImageUrl = "~/Images/Description MainAC_Low_Floor_1.jpg";
            //txt_about.Text = dr.GetValue(0).ToString();
        }

        cmd.Connection.Close();
    }
}