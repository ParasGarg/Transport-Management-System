using System;
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

public partial class User_Web_Pages_Bus_Service : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Transport"].ConnectionString);
    SqlCommand cmd;

    string img_title;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGrid();
    }

    protected void bus_service_grid_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.ToString() == "gv_edit")
        {
            int Id = Convert.ToInt32(e.CommandArgument.ToString());
            cmd = new SqlCommand("SELECT * FROM tbl_admin_bus_service WHERE Id='" + Id + "' ", con);
            cmd.Connection.Open();

            Session["View_Img"] = Id.ToString();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                img_title = dr["MapURL"].ToString();
            }

            dr.Dispose();
            cmd.Connection.Close();
        }
    }

    protected void BindGrid()
    {
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM tbl_admin_bus_service", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        bus_service_grid.DataSource = ds;
        bus_service_grid.DataBind();
    }
    protected void img_loc_Click(object sender, ImageClickEventArgs e)
    {
        //int Id = Convert.ToInt32(Session["View_Img"]); 
        //cmd = new SqlCommand("SELECT MapURL FROM tbl_admin_bus_service WHERE Id='"+ Id +"' ", con);
        //cmd.Connection.Open();
        //cmd.ExecuteNonQuery();
        //cmd.Connection.Close();

        ImageButton img_loc = sender as ImageButton;
        int rowIndex = Convert.ToInt32(img_loc.Attributes["RowIndex"]);

    }
}