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

    string status;
    string direction;
    string maps;

    protected void Page_Load(object sender, EventArgs e)
    {
        BindGrid();
    }
    
    protected void btn_insert_Click(object sender, EventArgs e)
    {
        if (fup_direction != null)
        {
            fup_direction.SaveAs(Server.MapPath("~/Images/Metro/Directions/") + fup_direction.FileName);
            direction = "~/Images/Metro/Directions/" + fup_direction.FileName;
        }

        if (fup_maps != null)
        {
            fup_maps.SaveAs(Server.MapPath("~/Images/Metro/Routes/") + fup_maps.FileName);
            maps = "~/Images/Metro/Routes/" + fup_maps.FileName;
        }
        
        
        RouteCheck();

        cmd = new SqlCommand("INSERT INTO tbl_admin_metro (Source, Destination, Metro_Type, Fare, Route_Status, Direction, Maps) VALUES ('" + txt_source.Text.Trim() + "', '" + txt_destination.Text.Trim() + "', '" + txt_metro_no.Text.Trim() + "', '" + txt_fare.Text.Trim() + "', '" + status + "', '" + direction + "', '" + maps + "')", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        txt_source.Text = "";
        txt_destination.Text = "";
        txt_metro_no.Text = "";
        txt_fare.Text = "";
        chk_route.Checked = false;

        cmd.Connection.Close();

        BindGrid();
    }

    protected void btn_update_Click(object sender, EventArgs e)
    {
        if (fup_direction != null)
        {
            fup_direction.SaveAs(Server.MapPath("~/Images/Metro/Directions") + fup_direction.FileName);
            direction = "~/Images/Metro/Directions" + fup_direction.FileName;
        }

        if (fup_maps != null)
        {
            fup_maps.SaveAs(Server.MapPath("~/Images/Metro/Routes") + fup_maps.FileName);
            maps = "~/Images/Metro/Routes" + fup_maps.FileName;
        }
        
        RouteCheck();
        
        int Id = Convert.ToInt32(Session["Update"]);

        cmd = new SqlCommand("UPDATE tbl_admin_metro SET Source= '" + txt_source.Text.Trim() + "', Destination= '" + txt_destination.Text.Trim() + "', Metro_Type= '" + txt_metro_no.Text.Trim() + "', Fare= '" + txt_fare.Text.Trim() + "', Route_Status= '" + status + "', Direction='" + direction + "', Maps='" + maps + "' WHERE Id= '" + Id + "'  ", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        txt_source.Text = "";
        txt_destination.Text = "";
        txt_metro_no.Text = "";
        txt_fare.Text = "";
        chk_route.Checked = false;

        cmd.Connection.Close();

        BindGrid();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("DELETE FROM tbl_admin_metro WHERE Id= '" + hddn_metro.Value + "' ", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        txt_source.Text = "";
        txt_destination.Text = "";
        txt_metro_no.Text = "";
        txt_fare.Text = "";
        chk_route.Checked = false;

        cmd.Connection.Close();

        BindGrid();
    }

    protected void btn_refresh_Click(object sender, EventArgs e)
    {
        txt_source.Text = "";
        txt_destination.Text = "";
        txt_metro_no.Text = "";
        txt_fare.Text = "";
        chk_route.Checked = false;
    }

    protected void gv_metro_SelectedIndexChanged(object sender, EventArgs e)
    {
        hddn_metro.Value = gv_metro.DataKeys[gv_metro.SelectedIndex].Value.ToString();
        txt_source.Text = gv_metro.Rows[gv_metro.SelectedIndex].Cells[0].Text.ToString();
        txt_destination.Text = gv_metro.Rows[gv_metro.SelectedIndex].Cells[1].Text.ToString();
        txt_metro_no.Text = gv_metro.Rows[gv_metro.SelectedIndex].Cells[2].Text.ToString();
        txt_fare.Text = gv_metro.Rows[gv_metro.SelectedIndex].Cells[3].Text.ToString();
    }

    protected void gv_metro_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.ToString() == "gv_edit")
        {
            int Id = Convert.ToInt32(e.CommandArgument.ToString());
            cmd = new SqlCommand("SELECT * FROM tbl_admin_metro WHERE Id='" + Id + "' ", con);
            cmd.Connection.Open();

            Session["Update"] = Id.ToString();
            
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                txt_source.Text = dr["Source"].ToString();
                txt_destination.Text = dr["Destination"].ToString();
                txt_metro_no.Text = dr["Metro_Type"].ToString();
                txt_fare.Text = dr["Fare"].ToString();
                status = dr["Route_Status"].ToString();
                
                if(status == "Active")
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
            cmd = new SqlCommand("DELETE FROM tbl_admin_metro WHERE Id ='" + Id + "' ", con);
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }
        
        BindGrid();
    }

    protected void BindGrid()
    {
        cmd = new SqlCommand("SELECT * FROM tbl_admin_metro", con);
        cmd.Connection.Open();

        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            gv_metro.DataSource = dr;
            gv_metro.DataBind();
        }

        cmd.Connection.Close();
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
      