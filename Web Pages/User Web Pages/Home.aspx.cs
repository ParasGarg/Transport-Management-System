﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void video1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/HomeVideo1.aspx");
    }
}