using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Transport"].ConnectionString);
    SqlCommand cmd;

    string img_title;

    protected void Page_Load(object sender, EventArgs e)
    {
        BindGrid();
    }

    protected void btn_insert_Click(object sender, EventArgs e)
    {
        if(fup_title_master.HasFile != null)
        {
            fup_title_master.SaveAs(Server.MapPath("~/Images/Master/") + fup_title_master.FileName);
            img_title = "~/Images/Master/" + fup_title_master.FileName;
        }

        cmd = new SqlCommand("INSERT INTO tbl_admin_master (ImgPath, ImgType) VALUES ('" + img_title + "', '"+ txt_type.Text +"')", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        txt_type.Text = "";

        cmd.Connection.Close();

        BindGrid();
    }

    protected void btn_update_Click(object sender, EventArgs e)
    {
        if(fup_title_master.HasFile != null)
        {
            fup_title_master.SaveAs(Server.MapPath("~/Images/Master/") + fup_title_master.FileName);
            img_title = "~/Images/Master/" + fup_title_master.FileName;
        }
        
        int Id = Convert.ToInt32(Session["Update"]);

        cmd = new SqlCommand("UPDATE tbl_admin_master SET ImgPath='"+ img_title +"', ImgType='"+ txt_type.Text +"' WHERE Id= '" + Id + "' ", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        txt_type.Text = "";

        cmd.Connection.Close();

        BindGrid();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("DELETE FROM tbl_admin_master WHERE Id= '" + hddn_master.Value + "' ", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        cmd.Connection.Close();

        BindGrid();
    }

    protected void gv_master_SelectedIndexChanged(object sender, EventArgs e)
    {
        hddn_master.Value = gv_master.DataKeys[gv_master.SelectedIndex].Value.ToString();

        BindGrid();
    }

    protected void gv_master_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.ToString() == "gv_edit")
        {
            int Id = Convert.ToInt32(e.CommandArgument.ToString());
            cmd = new SqlCommand("SELECT * FROM tbl_admin_master WHERE Id='" + Id + "' ", con);
            cmd.Connection.Open();

            Session["Update"] = Id.ToString();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                img_title = dr["ImgPath"].ToString();
                txt_type.Text = dr["ImgType"].ToString();
            }

            dr.Dispose();
            cmd.Connection.Close();
        }

        if (e.CommandName.ToString() == "gv_delete")
        {
            int Id = Convert.ToInt32(e.CommandArgument.ToString());
            cmd = new SqlCommand("DELETE FROM tbl_admin_master WHERE Id ='" + Id + "' ", con);
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }


        BindGrid();
    }

    protected void BindGrid()
    {
        cmd = new SqlCommand("SELECT * FROM tbl_admin_master", con);
        cmd.Connection.Open();

        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            gv_master.DataSource = dr;
            gv_master.DataBind();
        }

        cmd.Connection.Close();
    }
}