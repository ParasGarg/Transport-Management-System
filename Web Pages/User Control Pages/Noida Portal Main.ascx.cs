using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class User_Control_Pages_WebUserControl : System.Web.UI.UserControl
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Transport"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        DataGrid();
    }

    protected void DataGrid()
    {
        SqlDataAdapter da = new SqlDataAdapter("SELECT * from tbl_admin_master ", con);
        DataSet ds = new DataSet();

        da.Fill(ds);
        dl_title.DataSource = ds;
        dl_title.DataBind();
    }
}
