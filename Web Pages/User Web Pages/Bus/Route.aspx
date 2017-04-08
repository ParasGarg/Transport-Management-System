<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Bus.master" AutoEventWireup="true" CodeFile="Route.aspx.cs" Inherits="User_Web_Pages_Bus_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 71px;
        }
        .style5
        {
            width: 375px;
        }
        .style6
        {
            width: 98px;
        }
        .style7
        {
            width: 21px;
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
            <td class="style7" align="left">
                <strong>:</strong>
            </td>
            <td class="style5">
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
            <td class="style7" align="left">
                <strong>:</strong>
            </td>
            <td class="style5"  align="left">
                <asp:DropDownList ID="ddl_destination" runat="server" AutoPostBack="True" Width="200px" >
                    <asp:ListItem Selected="True">--Select--</asp:ListItem>
                    <asp:ListItem>Barola</asp:ListItem>
                    <asp:ListItem>Bhangel</asp:ListItem>
                    <asp:ListItem Value="BHEL, Sector 16A">BHEL, Sector 16A</asp:ListItem>
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
<!-- start of source destination grid -->
<div id="venue_grid" align="right" style="margin-left: 16%">
    
    <asp:GridView ID="bus_grid" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                  CellPadding="3" GridLines="Horizontal" style="text-align: center" Width="75%" >
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="Source" HeaderText="Source" />
            <asp:BoundField DataField="Destination" HeaderText="Destination" />
            <asp:BoundField DataField="Bus_Number" HeaderText="Bus Number" />
            <asp:BoundField DataField="Fare" HeaderText="Fare (in Rs.)" />
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

