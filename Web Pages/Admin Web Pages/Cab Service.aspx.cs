using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Transport"].ConnectionString);
    SqlCommand cmd;

    string map;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }

    protected void btn_insert_Click(object sender, EventArgs e)
    {
        if (fup_map != null)
        {
            fup_map.SaveAs(Server.MapPath("~/Images/Cab/Cab Service/") + fup_map.FileName);
            map = "~/Images/Cab/Cab Service/" + fup_map.FileName;
        }

        cmd = new SqlCommand("INSERT INTO tbl_admin_cab_service (Name, Number, Email, Address, MapURL) VALUES ('" + txt_name.Text.Trim() + "', '" + txt_number.Text.Trim() + "', '" + txt_email.Text.Trim() + "', '" + txt_add.Text.Trim() + "', '" + map + "')", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        txt_name.Text = "";
        txt_number.Text = "";
        txt_email.Text = "";
        txt_add.Text = "";

        cmd.Connection.Close();

        BindGrid();
    }

    protected void btn_update_Click(object sender, EventArgs e)
    {
        int Id = Convert.ToInt32(Session["Update"]);

        cmd = new SqlCommand("UPDATE tbl_admin_cab_service SET Name= '" + txt_name.Text.Trim() + "', Number= '" + txt_number.Text.Trim() + "', Email= '" + txt_email.Text.Trim() + "', Address= '" + txt_add.Text.Trim() + "', MapURL= '" + map + "' WHERE Id= '" + Id + "'  ", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        txt_name.Text = "";
        txt_number.Text = "";
        txt_email.Text = "";
        txt_add.Text = "";

        cmd.Connection.Close();

        BindGrid();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("DELETE FROM tbl_admin_cab_service WHERE Id= '" + hddn_cab.Value + "' ", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        txt_name.Text = "";
        txt_number.Text = "";
        txt_email.Text = "";
        txt_add.Text = "";

        cmd.Connection.Close();

        BindGrid();
    }

    protected void btn_refresh_Click(object sender, EventArgs e)
    {
        txt_name.Text = "";
        txt_number.Text = "";
        txt_email.Text = "";
        txt_add.Text = "";
    }

    protected void gv_cab_service_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.ToString() == "gv_edit")
        {
            int Id = Convert.ToInt32(e.CommandArgument.ToString());
            cmd = new SqlCommand("SELECT * FROM tbl_admin_bus WHERE Id='" + Id + "' ", con);
            cmd.Connection.Open();

            Session["Update"] = Id.ToString();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                txt_name.Text = dr["Name"].ToString();
                txt_number.Text = dr["Number"].ToString();
                txt_email.Text = dr["Email"].ToString();
                txt_add.Text = dr["Address"].ToString();
            }

            dr.Dispose();
            cmd.Connection.Close();
        }

        if (e.CommandName.ToString() == "gv_delete")
        {
            int Id = Convert.ToInt32(e.CommandArgument.ToString());
            cmd = new SqlCommand("DELETE FROM tbl_admin_bus_service WHERE Id ='" + Id + "' ", con);
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }

        BindGrid();
    }

    protected void gv_cab_service_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv_cab_service.PageIndex = e.NewPageIndex;
        BindGrid();
    }

    //protected void gv_bus_RowDataBound(object sender, GridViewRowEventArgs e)
    //{
    //    if (e.Row.RowType == DataControlRowType.DataRow)
    //    {
    //        string No = "011";
    //        string Mob = gv_bus.Rows[0].Cells[3].Text.ToString();
    //        string Mob_No = No + Mob; 
    //    }
    //}

    protected void BindGrid()
    {
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM tbl_admin_cab_service", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gv_cab_service.DataSource = ds;
        gv_cab_service.DataBind();
    }
}
