<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Menu Bar.ascx.cs" Inherits="User_Control_Pages_WebUserControl" %>

<br/>
<table align="center" border="2" class="style1" style="width: 80%">
    <tr>
        <td align="center" class="style2" valign="middle" width="153.6px">
            <div id="home">
                <asp:HyperLink ID="lnk_home" runat="server" NavigateUrl="~/User Web Pages/Home.aspx">Home</asp:HyperLink>
            </div>
        </td>
        <td align="center" class="style2" valign="middle" width="153.6px">
            <div id="metro">
                <asp:HyperLink ID="lnk_metro" runat="server" NavigateUrl="~/User Web Pages/Metro.aspx">Metro</asp:HyperLink>
            </div>
        </td>
        <td align="center" class="style2" valign="middle" width="153.6px">
            <div id="bus">
                <asp:HyperLink ID="lnk_bus" runat="server" NavigateUrl="~/User Web Pages/Bus.aspx">Bus</asp:HyperLink>
            </div>
        </td>
        <td align="center" class="style2" valign="middle" width="153.6px">
            <div id="cab">
                <asp:HyperLink ID="lnk_cab" runat="server" NavigateUrl="~/User Web Pages/Cab.aspx">Cab</asp:HyperLink>
            </div>
        </td>
        <td align="center" class="style2" valign="middle" width="153.6px">
            <div id="auto">
                <asp:HyperLink ID="lnk_auto" runat="server" NavigateUrl="~/User Web Pages/Auto.aspx">Auto Rickshaw</asp:HyperLink>
            </div>
        </td>
    </tr>
</table>

