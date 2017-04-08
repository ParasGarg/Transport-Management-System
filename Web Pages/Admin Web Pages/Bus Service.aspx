<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bus Service.aspx.cs" Inherits="Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Bus Service</title>
    <style type="text/css">

        .style1
        {
            width: 127%;
            margin-right: 0px;
        }
        .style2
        {
            width: 102px;
        }
        .style5
        {
            width: 11px;
        }
        .style6
        {
            width: 420px;
        }
        .style7
        {
            width: 444px;
        }
    </style>
</head>
<body>

 <form id="form" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="lbl_name" runat="server" Text="Provider's Name" 
                    style="text-align: right"></asp:Label>
            </td>
            <td class="style5">
                <strong>:</strong></td>
            <td class="style6">
                <asp:TextBox ID="txt_name" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lbl_number" runat="server" Text="Phone Number"></asp:Label>
            </td>
            <td class="style5">
                <strong>:</strong></td>
            <td class="style6">
                <asp:TextBox ID="txt_number" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lbl_email" runat="server" Text="Email Address"></asp:Label>
            </td>
            <td class="style5">
                <strong>:</strong></td>
            <td class="style6">
                <asp:TextBox ID="txt_email" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lbl_add" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="style5">
                <strong>:</strong></td>
            <td class="style6">
                <asp:TextBox ID="txt_add" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lbl_map" runat="server" Text="Map Location"></asp:Label>
            </td>
            <td class="style5">
                <strong>:</strong></td>
            <td class="style6">
                <asp:FileUpload ID="fup_map" runat="server" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                <asp:HiddenField ID="hddn_bus" runat="server" />
            </td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td class="style7">
                <asp:Button ID="btn_insert" runat="server" style="margin-left: 11px" Text="Insert" Width="100px" onclick="btn_insert_Click" />
                <asp:Button ID="btn_update" runat="server" style="margin-left: 11px" Text="Update" Width="100px" onclick="btn_update_Click" />
                <asp:Button ID="btn_delete" runat="server" style="margin-left: 11px" Text="Delete" Width="100px" onclick="btn_delete_Click" />
                <asp:Button ID="btn_refresh" runat="server" onclick="btn_refresh_Click" 
                    style="margin-left: 11px" Text="Refresh" Width="100px" />
            </td>
        </tr>
    </table>
    <HR Align="left" style="width: 47%">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gv_bus_service" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" 
                    TabIndex="-1" style="text-align: center" Width="1060px"  
                    onrowcommand="gv_bus_service_RowCommand" AllowPaging="True" 
                    onpageindexchanging="gv_bus_service_PageIndexChanging">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnk_btn_edit" runat="server" style="text-align: center" CausesValidation="False" CommandName="gv_edit"
                                                CommandArgument='<%#DataBinder.Eval(Container,"DataItem.Id") %>'>
                                Edit
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="Number" HeaderText="Contact Number" />
                        <asp:BoundField DataField="Email" HeaderText="Email Address" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                        <asp:TemplateField HeaderText="Location">
                            <ItemTemplate>
                                <asp:Image ID="gv_map" runat="server" Height="50px" Width="100px" ImageUrl='<%# Bind("MapURL") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                         <ItemTemplate>
                                <asp:LinkButton ID="lnk_btn_delete" runat="server" style="text-align: center" CausesValidation="False" CommandName="gv_delete"
                                                CommandArgument='<%#DataBinder.Eval(Container,"DataItem.Id") %>'>
                                Delete
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
