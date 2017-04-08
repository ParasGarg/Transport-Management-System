<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Metro.master" AutoEventWireup="true" CodeFile="Directions.aspx.cs" Inherits="User_Web_Pages_Metro_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 390px;
        }
        .style7
        {
            width: 21px;
        }
        .style8
        {
            width: 147px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<!-- start of source destination menu -->
<div id="venue_tab" style="margin-right: 10%">
    <table id="tbl_source" style="width:50%" align="right">
        <tr>
            <td class="style8">
                <asp:Label ID="lbl_source" runat="server" Text="Souce" />
            </td>
            <td class="style7" align="left">
                <strong>:</strong>
            </td>
            <td class="style5" width="50%">
                <asp:DropDownList ID="ddl_source" runat="server" AutoPostBack="True" Width="200px" >
                    <asp:ListItem Selected="True">--Select--</asp:ListItem>
                    <asp:ListItem>Sector 15</asp:ListItem>
                    <asp:ListItem>Sector 16</asp:ListItem>
                    <asp:ListItem>Sector 18</asp:ListItem>
                    <asp:ListItem>Noida City Centre</asp:ListItem>
                    <asp:ListItem>Golf Course</asp:ListItem>
                    <asp:ListItem>Botanical Garden</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="lbl_destination" runat="server" Text="Destination" />
            </td>
            <td class="style7" align="left">
                <strong>:</strong>
            </td>
            <td class="style5"  align="left">
                <asp:DropDownList ID="ddl_destination" runat="server" AutoPostBack="True" Width="200px" >
                    <asp:ListItem Selected="True">--Select--</asp:ListItem>
                    <asp:ListItem>Sector 15</asp:ListItem>
                    <asp:ListItem>Sector 16</asp:ListItem>
                    <asp:ListItem>Sector 18</asp:ListItem>
                    <asp:ListItem>Noida City Centre</asp:ListItem>
                    <asp:ListItem>Golf Course</asp:ListItem>
                    <asp:ListItem>Botanical Garden</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    </table>
</div>
<!-- end of source destination menu -->

<br /><br />
<!-- start of image controller -->
<div id="venue_grid" align="right" style="margin-left: 16%">
    
    <asp:Image ID="img_direction" runat="server" Height="400px" style="margin-right: 13%; margin-left: 0px;" Width="73%" ImageUrl='<%# Bind("Direction") %>'/>
   
</div>
<!-- end of image controller -->

</asp:Content>

