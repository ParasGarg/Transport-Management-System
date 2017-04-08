<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Bus.master" AutoEventWireup="true" CodeFile="Directions.aspx.cs" Inherits="User_Web_Pages_Bus_Directions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 71px;
        }
        .style4
        {
            width: 21px;
        }
        .style5
        {
            width: 379px;
        }
        .style6
        {
            width: 98px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- start of source destination menu -->
<div id="venue_tab" style="margin-left: 10%">
    <table id="tbl_source" style="width:60%" align="right">
        <tr>
            <td class="style6">
                <asp:Label ID="lbl_source" runat="server" Text="Souce" />
            </td>
            <td class="style4" align="left">
                <strong>:</strong>
            </td>
            <td class="style5" align="left">
                <asp:DropDownList ID="ddl_source" runat="server" AutoPostBack="True" Width="200px" >
                    <asp:ListItem Selected="True">--Select--</asp:ListItem>
                    <asp:ListItem>Barola</asp:ListItem>
                    <asp:ListItem>Bhangel</asp:ListItem>
                    <asp:ListItem>BHEL, Sector 16A</asp:ListItem>
                    <asp:ListItem>Fortis Hospital</asp:ListItem>
                    <asp:ListItem>Golf Course</asp:ListItem>
                    <asp:ListItem>HCL Ltd, Sector 11</asp:ListItem>
                    <asp:ListItem>Housary Complex Phase 2</asp:ListItem>
                    <asp:ListItem>Mayur Vihar Phase 3 Crossing</asp:ListItem>
                    <asp:ListItem>Nehru Inter. School, Sector 11</asp:ListItem>
                    <asp:ListItem>Noida City Centre</asp:ListItem>
                    <asp:ListItem>Noida Phase 2</asp:ListItem>
                    <asp:ListItem>Noida Stadium</asp:ListItem>
                    <asp:ListItem>Rajnigandha Chowk</asp:ListItem>
                    <asp:ListItem>Sector 12-22</asp:ListItem>
                    <asp:ListItem>Sector 15</asp:ListItem>
                    <asp:ListItem>Sector 16</asp:ListItem>
                    <asp:ListItem>Sector 18</asp:ListItem>
                    <asp:ListItem>Sector 19</asp:ListItem>
                    <asp:ListItem>Sector 22</asp:ListItem>
                    <asp:ListItem>Sector 32</asp:ListItem>
                    <asp:ListItem>Sector 34</asp:ListItem>
                    <asp:ListItem>Sector 37</asp:ListItem>
                    <asp:ListItem>Sector 57-58 Chowk</asp:ListItem>
                    <asp:ListItem>Sector 60</asp:ListItem>
                    <asp:ListItem>Sector 62</asp:ListItem>
                    <asp:ListItem>Sector 94</asp:ListItem>
                    <asp:ListItem>UFLEX Tower</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="lbl_destination" runat="server" Text="Destination" />
            </td>
            <td class="style4" align="left">
                <strong>:</strong>
            </td>
            <td class="style5"  align="left">
                <asp:DropDownList ID="ddl_destination" runat="server" AutoPostBack="True" Width="200px" >
                    <asp:ListItem Selected="True">--Select--</asp:ListItem>
                    <asp:ListItem>Barola</asp:ListItem>
                    <asp:ListItem>Bhangel</asp:ListItem>
                    <asp:ListItem>BHEL, Sector 16A</asp:ListItem>
                    <asp:ListItem>Fortis Hospital</asp:ListItem>
                    <asp:ListItem>Golf Course</asp:ListItem>
                    <asp:ListItem>HCL Ltd, Sector 11</asp:ListItem>
                    <asp:ListItem>Housary Complex Phase 2</asp:ListItem>
                    <asp:ListItem>Mayur Vihar Phase 3 Crossing</asp:ListItem>
                    <asp:ListItem>Nehru Inter. School, Sector 11</asp:ListItem>
                    <asp:ListItem>Noida City Centre</asp:ListItem>
                    <asp:ListItem>Noida Phase 2</asp:ListItem>
                    <asp:ListItem>Noida Stadium</asp:ListItem>
                    <asp:ListItem>Rajnigandha Chowk</asp:ListItem>
                    <asp:ListItem>Sector 12-22</asp:ListItem>
                    <asp:ListItem>Sector 15</asp:ListItem>
                    <asp:ListItem>Sector 16</asp:ListItem>
                    <asp:ListItem>Sector 18</asp:ListItem>
                    <asp:ListItem>Sector 19</asp:ListItem>
                    <asp:ListItem>Sector 22</asp:ListItem>
                    <asp:ListItem>Sector 32</asp:ListItem>
                    <asp:ListItem>Sector 34</asp:ListItem>
                    <asp:ListItem>Sector 37</asp:ListItem>
                    <asp:ListItem>Sector 57-58 Chowk</asp:ListItem>
                    <asp:ListItem>Sector 60</asp:ListItem>
                    <asp:ListItem>Sector 62</asp:ListItem>
                    <asp:ListItem>Sector 94</asp:ListItem>
                    <asp:ListItem>UFLEX Tower</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    </table>
</div>
<!-- end of source destination menu -->

<br /><br />
<!-- start of map view menu -->
<div id="map_view" style="margin-left: 10%; height: 43px;">
    <table style="width:70%" align="left">
        <tr>
            <td>
                <asp:Image ID="map" runat="server" Width="97%" BorderWidth="1" ImageAlign="Right" ImageUrl="~/Images/Bus/Low Floor 3.jpg"/>
            </td>
        </tr>
    </table>
</div>
<!-- end of map view menu -->

</asp:Content>

