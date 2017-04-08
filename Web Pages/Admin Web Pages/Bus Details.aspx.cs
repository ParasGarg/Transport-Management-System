using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Transport"].ConnectionString);
    SqlCommand cmd;

    string status;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }

    protected void btn_insert_Click(object sender, EventArgs e)
    {
        RouteCheck();

        cmd = new SqlCommand("INSERT INTO tbl_admin_bus (Source, Destination, Bus_Number, Fare, Route_Status) VALUES ('" + txt_source.Text.Trim() + "', '" + txt_destination.Text.Trim() + "', '" + txt_bus_no.Text.Trim() + "', '" + txt_fare.Text.Trim() + "', '" + status + "')", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        txt_source.Text = "";
        txt_destination.Text = "";
        txt_bus_no.Text = "";
        txt_fare.Text = "";
        chk_route.Checked = false;

        cmd.Connection.Close();

        BindGrid();
    }

    protected void btn_update_Click(object sender, EventArgs e)
    {
        RouteCheck();

        int Id = Convert.ToInt32(Session["Update"]);

        cmd = new SqlCommand("UPDATE tbl_admin_bus SET Source= '" + txt_source.Text.Trim() + "', Destination= '" + txt_destination.Text.Trim() + "', Bus_Number= '" + txt_bus_no.Text.Trim() + "', Fare= '" + txt_fare.Text.Trim() + "', Route_Status= '" + status + "' WHERE Id= '" + Id + "'  ", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        txt_source.Text = "";
        txt_destination.Text = "";
        txt_bus_no.Text = "";
        txt_fare.Text = "";
        chk_route.Checked = false;

        cmd.Connection.Close();

        BindGrid();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("DELETE FROM tbl_admin_bus WHERE Id= '" + hddn_bus.Value + "' ", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        txt_source.Text = "";
        txt_destination.Text = "";
        txt_bus_no.Text = "";
        txt_fare.Text = "";
        chk_route.Checked = false;

        cmd.Connection.Close();

        BindGrid();
    }

    protected void btn_refresh_Click(object sender, EventArgs e)
    {
        txt_source.Text = "";
        txt_destination.Text = "";
        txt_bus_no.Text = "";
        txt_fare.Text = "";
        chk_route.Checked = false;
    }

    protected void gv_bus_RowCommand(object sender, GridViewCommandEventArgs e)
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
                txt_source.Text = dr["Source"].ToString();
                txt_destination.Text = dr["Destination"].ToString();
                txt_bus_no.Text = dr["Bus_Number"].ToString();
                txt_fare.Text = dr["Fare"].ToString();
                status = dr["Route_Status"].ToString();

                if (status == "Active")
                {
                    chk_route.Checked = true;
                }
                else
                {
                    chk_route.Checked = false;
                }
            }

            dr.Dispose();
            cmd.Connection.Close();
        }

        if (e.CommandName.ToString() == "gv_delete")
        {
            int Id = Convert.ToInt32(e.CommandArgument.ToString());
            cmd = new SqlCommand("DELETE FROM tbl_admin_bus WHERE Id ='" + Id + "' ", con);
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }

        BindGrid();
    }

    protected void gv_bus_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv_bus.PageIndex = e.NewPageIndex;
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
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM tbl_admin_bus", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gv_bus.DataSource = ds;
        gv_bus.DataBind();
    }

    protected void RouteCheck()
    {
        if (chk_route.Checked == true)
        {
            status = "Active";
        }

        else
        {
            status = "Inactive";
        }
    }
}
