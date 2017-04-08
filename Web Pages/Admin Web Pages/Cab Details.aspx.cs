using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Transport"].ConnectionString);
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }

    protected void btn_insert_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("INSERT INTO tbl_admin_cab (Source, Destination, Cab_Number, Fare) VALUES ('" + txt_source.Text.Trim() + "', '" + txt_destination.Text.Trim() + "', '" + txt_cab_no.Text.Trim() + "', '" + txt_fare.Text.Trim() + "' )", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        txt_source.Text = " ";
        txt_destination.Text = " ";
        txt_cab_no.Text = " ";
        txt_fare.Text = " ";

        cmd.Connection.Close();

        BindGrid();
    }

    protected void btn_update_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("UPDATE tbl_admin_cab SET Source = '" + txt_source.Text.Trim() + "', Destination = '" + txt_destination.Text.Trim() + "', Cab_Number = '" + txt_cab_no.Text.Trim() + "', Fare = '" + txt_fare.Text.Trim() + "' WHERE Id = '" + hddn_cab.Value + "' ", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        txt_source.Text = " ";
        txt_destination.Text = " ";
        txt_cab_no.Text = " ";
        txt_fare.Text = " ";

        cmd.Connection.Close();

        BindGrid();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("DELETE FROM tbl_admin_cab WHERE Id = '" + hddn_cab.Value + "' ", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        txt_source.Text = " ";
        txt_destination.Text = " ";
        txt_cab_no.Text = " ";
        txt_fare.Text = " ";

        cmd.Connection.Close();

        BindGrid();
    }

    protected void btn_refresh_Click(object sender, EventArgs e)
    {
        txt_source.Text = " ";
        txt_destination.Text = " ";
        txt_cab_no.Text = " ";
        txt_fare.Text = " ";
    }

    protected void gv_cab_SelectedIndexChanged(object sender, EventArgs e)
    {
        hddn_cab.Value = gv_cab.DataKeys[gv_cab.SelectedIndex].Value.ToString();
        txt_source.Text = gv_cab.Rows[gv_cab.SelectedIndex].Cells[0].Text.ToString();
        txt_destination.Text = gv_cab.Rows[gv_cab.SelectedIndex].Cells[1].Text.ToString();
        txt_cab_no.Text = gv_cab.Rows[gv_cab.SelectedIndex].Cells[2].Text.ToString();
        txt_fare.Text = gv_cab.Rows[gv_cab.SelectedIndex].Cells[3].Text.ToString();

    }

    protected void gv_cab_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.ToString() == "gv_edit")
        {
            int Id = Convert.ToInt32(e.CommandArgument.ToString());
            cmd = new SqlCommand("SELECT * FROM tbl_admin_cab WHERE Id='" + Id + "' ", con);
            cmd.Connection.Open();

            Session["Update"] = Id.ToString();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                txt_source.Text = dr["Source"].ToString();
                txt_destination.Text = dr["Destination"].ToString();
                txt_cab_no.Text = dr["Cab_Number"].ToString();
                txt_fare.Text = dr["Fare"].ToString();
            }

            dr.Dispose();
            cmd.Connection.Close();
        }

        if (e.CommandName.ToString() == "gv_delete")
        {
            int Id = Convert.ToInt32(e.CommandArgument.ToString());
            cmd = new SqlCommand("DELETE FROM tbl_admin_cab WHERE Id ='" + Id + "' ", con);
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }
        
        BindGrid();
    }

    protected void BindGrid()
    {
        cmd = new SqlCommand("SELECT * FROM tbl_admin_cab ", con);
        cmd.Connection.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            gv_cab.DataSource = dr;
            gv_cab.DataBind();
        }

        dr.Dispose();
        dr.Close();

        cmd.Connection.Close();
    }
}