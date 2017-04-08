<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Auto Sub Sub Menu.ascx.cs" Inherits="User_Control_Pages_WebUserControl" %>

<style type="text/css">
    .style1
    {
        width: 155px;
    }
    .style2
    {
        width: 159px;
    }
    .style3
    {
        width: 178px;
    }
</style>

<br />
<div id="autosub" style="margin-left: 10%">
    <table align="left" border="2" class="style1" style="width: 18%">
        <tr>
            <td align="center" class="style3" valign="middle" width="50%">
                <div id="private">
                    <asp:HyperLink ID="lnk_home" runat="server" NavigateUrl="~/User Web Pages/Auto/Auto Private.aspx">Private Auto Rickshaw</asp:HyperLink>
                </div>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2" valign="middle" width="153.6px" width="50%">
                <div id="shared" style="width: 147px">
                    <asp:HyperLink ID="lnk_metro" runat="server" NavigateUrl="~/User Web Pages/Auto/Auto Shared.aspx">Shared Auto Rickshaw</asp:HyperLink>
                </div>
            </td>
        </tr>
    </table>
</div>

