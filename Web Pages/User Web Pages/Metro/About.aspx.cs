using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Web_Pages_Metro_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        img_red.ImageUrl = "~/Images/Metro/Lines/Red_Line.jpg";
        img_yellow.ImageUrl = "~/Images/Metro/Lines/Yellow_Line.jpg";
        img_blue.ImageUrl = "~/Images/Metro/Lines/Blue_Line.jpg";
        img_green.ImageUrl = "~/Images/Metro/Lines/Green_Line.jpg";
        img_voilet.ImageUrl = "~/Images/Metro/Lines/Voilet_Line.jpg";
        img_card.ImageUrl = "~/Images/Metro/Travel_Card.jpg";
    }
}