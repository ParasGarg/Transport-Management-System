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
        BindGrid();
    }
    
    protected void btn_insert_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("INSERT INTO tbl_admin_auto (Source, Destination, Auto_Number, Fare) VALUES ('"+txt_source.Text.Trim()+"', '"+txt_destination.Text.Trim()+"', '"+txt_auto_no.Text.Trim()+"', '"+txt_fare.Text.Trim()+"')", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        txt_source.Text = " ";
        txt_destination.Text = " ";
        txt_auto_no.Text = " ";
        txt_fare.Text = " ";

        cmd.Connection.Close();
        
        BindGrid();
    }
    
    protected void btn_update_Click(object sender, EventArgs e)
    {
        int Id = Convert.ToInt32(Session["Update"]);

        cmd = new SqlCommand("UPDATE tbl_admin_auto SET Source= '"+txt_source.Text.Trim()+"', Destination= '"+txt_destination.Text.Trim()+"', Auto_Number= '"+txt_auto_no.Text.Trim()+"', Fare= '"+txt_fare.Text.Trim()+"' WHERE Id= '"+ Id +"' ", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        txt_source.Text = " ";
        txt_destination.Text = " ";
        txt_auto_no.Text = " ";
        txt_fare.Text = " ";

        cmd.Connection.Close();

        BindGrid();
    }
    
    protected void btn_delete_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("DELETE FROM tbl_admin_auto WHERE Id= '"+hddn_auto.Value+"' ", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        txt_source.Text = " ";
        txt_destination.Text = " ";
        txt_auto_no.Text = " ";
        txt_fare.Text = " ";

        cmd.Connection.Close();

        BindGrid();
    }

    protected void btn_refresh_Click(object sender, EventArgs e)
    {
        txt_source.Text = " ";
        txt_destination.Text = " ";
        txt_auto_no.Text = " ";
        txt_fare.Text = " ";
    }
    
    protected void gv_auto_SelectedIndexChanged(object sender, EventArgs e)
    {
        hddn_auto.Value = gv_auto.DataKeys[gv_auto.SelectedIndex].Value.ToString();
        txt_source.Text = gv_auto.Rows[gv_auto.SelectedIndex].Cells[1].Text.ToString();
        txt_destination.Text = gv_auto.Rows[gv_auto.SelectedIndex].Cells[2].Text.ToString();
        txt_auto_no.Text = gv_auto.Rows[gv_auto.SelectedIndex].Cells[3].Text.ToString();
        txt_fare.Text = gv_auto.Rows[gv_auto.SelectedIndex].Cells[4].Text.ToString();

        BindGrid();

    }

    protected void gv_auto_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.ToString() == "gv_edit")
        {
            int Id = Convert.ToInt32(e.CommandArgument.ToString());
            cmd = new SqlCommand("SELECT * FROM tbl_admin_auto WHERE Id='" + Id + "' ", con);
            cmd.Connection.Open();

            Session["Update"] = Id.ToString();
            
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                txt_source.Text = dr["Source"].ToString();
                txt_destination.Text = dr["Destination"].ToString();
                txt_auto_no.Text = dr["Auto_Number"].ToString();
                txt_fare.Text = dr["Fare"].ToString();
            }

            dr.Dispose();
            cmd.Connection.Close();
        }

        if (e.CommandName.ToString() == "gv_delete")
        {
            int Id = Convert.ToInt32(e.CommandArgument.ToString());
            cmd = new SqlCommand("DELETE FROM tbl_admin_auto WHERE Id ='" + Id + "' ", con);
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }

        
        BindGrid();
    }

    protected void BindGrid()
    {
        cmd = new SqlCommand("SELECT * FROM tbl_admin_auto", con);
        cmd.Connection.Open();

        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            gv_auto.DataSource = dr;
            gv_auto.DataBind();
        }

        cmd.Connection.Close();
    }
}