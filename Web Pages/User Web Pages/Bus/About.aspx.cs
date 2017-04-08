using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Web_Pages_Bus_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        img_red.ImageUrl = "~/Images/Bus/About/AC_Low_Floor_4.jpg";
        img_green.ImageUrl = "~/Images/Bus/About/Low_Floor_5.jpg";
        img_orange.ImageUrl = "~/Images/Bus/About/Low_Floor_2.jpg";
    }
}