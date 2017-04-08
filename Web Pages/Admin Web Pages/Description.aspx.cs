using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Transport"].ConnectionString);
    SqlCommand cmd;

    string img;

    protected void Page_Load(object sender, EventArgs e)
    {
        BindGrid();
    }

    protected void btn_insert_Click(object sender, EventArgs e)
    {
        if (fup_des_img != null)
        {
            fup_des_img.SaveAs(Server.MapPath("~/Images/Description Main") + fup_des_img.FileName);
            img = "~/Images/Description Main" + fup_des_img.FileName;
        }

        cmd = new SqlCommand("INSERT INTO tbl_admin_description (Title, Description, Flag, ImgURL) VALUES ('" + txt_title.Text.Trim() + "', '" + html_description.Text.Trim() + "', '" + txt_flag.Text.Trim() + "', '"+ img +"')", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        txt_title.Text = " ";
        html_description.Text = " ";
        txt_flag.Text = " ";
       
        cmd.Connection.Close();

        BindGrid();
    }

    protected void btn_update_Click(object sender, EventArgs e)
    {
        int Id = Convert.ToInt32(Session["Update"]);

        if (fup_des_img != null)
        {
            fup_des_img.SaveAs(Server.MapPath("~/Images/Description Main") + fup_des_img.FileName);
            img = "~/Images/Description Main" + fup_des_img.FileName;
        }
        
        cmd = new SqlCommand("UPDATE tbl_admin_description SET Title= '" + txt_title.Text.Trim() + "', Description= '" + html_description.Text.Trim() + "', Flag= '" + txt_flag.Text.Trim() + "', ImgURL= '"+ img +"'  WHERE Id= '" + Id + "' ", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        txt_title.Text = " ";
        html_description.Text = " ";
        txt_flag.Text = " ";
        
        cmd.Connection.Close();

        BindGrid();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        int Id = Convert.ToInt32(Session["Update"]);

        cmd = new SqlCommand("DELETE FROM tbl_admin_description WHERE Id= '"+ Id +"' ", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        txt_title.Text = " ";
        html_description.Text = " ";
        txt_flag.Text = " ";
        
        cmd.Connection.Close();

        BindGrid();
    }

    protected void btn_refresh_Click(object sender, EventArgs e)
    {
       txt_title.Text = " ";
       html_description.Text = " ";
       txt_flag.Text = " ";
    }

    protected void gv_description_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.ToString() == "gv_edit")
        {
            int Id = Convert.ToInt32(e.CommandArgument.ToString());
            cmd = new SqlCommand("SELECT * FROM tbl_admin_description WHERE Id='" + Id + "' ", con);
            cmd.Connection.Open();

            Session["Update"] = Id.ToString();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                txt_title.Text = dr["Title"].ToString();
                html_description.Text = dr["Description"].ToString();
                txt_flag.Text = dr["Flag"].ToString();
            }

            dr.Dispose();
            cmd.Connection.Close();
        }

        if (e.CommandName.ToString() == "gv_delete")
        {
            int Id = Convert.ToInt32(e.CommandArgument.ToString());
            cmd = new SqlCommand("DELETE FROM tbl_admin_description WHERE Id ='" + Id + "' ", con);
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }


        BindGrid();
    }

    protected void BindGrid()
    {
        cmd = new SqlCommand("SELECT * FROM tbl_admin_description", con);
        cmd.Connection.Open();

        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            gv_description.DataSource = dr;
            gv_description.DataBind();            
        }

        cmd.Connection.Close();
    }
}