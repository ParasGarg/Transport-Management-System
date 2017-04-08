<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Bus Sub Menu.ascx.cs" Inherits="User_Control_Pages_WebUserControl" %>

<br/>
<div id="tbl_sub_bus" style="margin-left: 10%">
<table align="left" border="1" class="style1" style="width: 173.6px">
    <tr>
        <td align="center" class="style2" valign="middle" width="153.6px">
            <div id="about">
                <asp:HyperLink ID="lnk_about" runat="server" NavigateUrl="~/User Web Pages/Bus/About.aspx">About</asp:HyperLink>
            </div>
        </td>
    </tr>
    <tr>
        <td align="center" class="style2" valign="middle" width="153.6px">
            <div id="route">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/User Web Pages/Bus/Route.aspx">Routes</asp:HyperLink>
            </div>
        </td>
    </tr>
    <tr>
        <td align="center" class="style2" valign="middle" width="153.6px">
            <div id="directions">
                <asp:HyperLink ID="lnk_directions" runat="server" NavigateUrl="~/User Web Pages/Bus/Directions.aspx">Directions</asp:HyperLink>
            </div>
        </td>
    </tr>
    <tr>
        <td align="center" class="style2" valign="middle" width="153.6px">
            <div id="maps">
                <asp:HyperLink ID="lnk_maps" runat="server" NavigateUrl="~/User Web Pages/Bus/Maps.aspx">Maps</asp:HyperLink>
            </div>
        </td>
    </tr>
    <tr>
        <td align="center" class="style2" valign="middle" width="153.6px">
            <div id="service">
                <asp:HyperLink ID="lnk_service" runat="server" NavigateUrl="~/User Web Pages/Bus/Service.aspx">Services Providers</asp:HyperLink>
            </div>
        </td>
     </tr>
</table>
</div>


