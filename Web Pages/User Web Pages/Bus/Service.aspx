<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Bus.master" AutoEventWireup="true" CodeFile="Service.aspx.cs" Inherits="User_Web_Pages_Bus_Service" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="provider_grid" align="right" style="margin-left: 16%">
            
    <asp:GridView ID="bus_service_grid" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                  CellPadding="3" GridLines="Horizontal" style="text-align: center" width="75%" 
                  onrowcommand="bus_service_grid_RowCommand">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Service Provider" />
            <asp:BoundField DataField="Number" HeaderText="Contact Number" />
            <asp:BoundField DataField="Email" HeaderText="Email Address" />
            <asp:BoundField DataField="Address" HeaderText="Address" />
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
</asp:Content>


