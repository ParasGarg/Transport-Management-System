<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Metro.master" AutoEventWireup="true" CodeFile="Route.aspx.cs" Inherits="User_Web_Pages_Metro_Route" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 71px;
        }
        .style4
        {
            width: 77px;
        }
        .style5
        {
            width: 165px;
        }
        .style6
        {
            width: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- start of source destination menu -->
<div id="venue_tab" style="margin-right: 10%">
    <table id="tbl_source" style="width:50%" align="right">
        <tr>
            <td class="style4">
                <asp:Label ID="lbl_source" runat="server" Text="Souce" />
            </td>
            <td class="style6" align="left">
                <strong>:</strong>
            </td>
            <td class="style5" width="50%">
                <asp:DropDownList ID="ddl_source" runat="server" AutoPostBack="True" 
                    Width="200px" style="margin-left: 0px" >
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
            <td class="style4">
                <asp:Label ID="lbl_destination" runat="server" Text="Destination" />
            </td>
            <td class="style6" align="left">
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
<!-- start of source destination grid -->
<div id="venue_grid" align="right" style="margin-left: 16%">
    
    <asp:GridView ID="metro_grid" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" 
                  BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" style="text-align: center" Width="75%" >
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="Source" HeaderText="Source" />
            <asp:BoundField DataField="Destination" HeaderText="Destination" />
            <asp:BoundField DataField="Fare" HeaderText="Fare (in Rs.)" />
            <asp:BoundField DataField="Metro_Type" HeaderText="Metro Line" />
            <asp:BoundField DataField="Route_Status" HeaderText="Route Status" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    
</div>
<!-- end of source destination grid -->

</asp:Content>

