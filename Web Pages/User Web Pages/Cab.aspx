<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Cab.master" AutoEventWireup="true" CodeFile="Cab.aspx.cs" Inherits="User_Web_Pages_Cab" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 55%;
        }
        .style5
        {
            width: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- start of about section -->
<div id="about">
        <table style="margin-left: 0%; width: 60%; height: 251px;" align="left">
            <td id="img" height="90%" align="right" class="style5" valign="top">
                <asp:Image ID="img_about" runat="server" width="90%" Height="35%" align="left" style="margin-left: 6%"></asp:Image>
            </td>
        
            <td id="about_table" valign="top" class="style4">
                <div style="text-align: justify">
                    <span style="color: rgb(186, 85, 211)">
                    <span style="font-family: Courier New">
                    There are many on-line taxi services in Noida. Search for taxies in Noida and choose from awide variety of cars at economical rates. Many providers provide cabs to transfer at fixed price. Taxi can else fixed for 4 hours/8 hours usage on-line. Book taxi on-line for half day/full day requirements as well. Hire taxi for pick-up/drop for anywhere from/to Noida.
                    </span>
                    </span>
                </div>    
                
                <%--<asp:TextBox ID="txt_about" runat="server" width="60%" Height="40%" align="left" TextMode="MultiLine" style="margin-right: 20%"></asp:TextBox>
--%>        </td>
        </tr>
    </table>
</div>
<!-- end of about section -->

</asp:Content>

