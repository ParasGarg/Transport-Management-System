<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Auto Details.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin : Auto Details</title>
    <style type="text/css">
        .style1
        {
            width: 127%;
        }
        .style2
        {
            width: 84px;
        }
        .style3
        {
            width: 11px;
        }
        .style4
        {
            width: 420px;
        }
        .style5
        {
            width: 127%;
        }
        .style6
        {
            text-align: left;
        }
        .style7
        {
            width: 100%;
        }
        </style>
</head>
<body style="width: 700px; height: 500px">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="lbl_source" runat="server" Text="Source"></asp:Label>
            </td>
            <td class="style3">
                <strong>:</strong>
            </td>
            <td class="style4">
                <asp:TextBox ID="txt_source" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lbl_destination" runat="server" Text="Destination"></asp:Label>
            </td>
            <td class="style3">
                <strong>:</strong>
            </td>
            <td class="style4">
                <asp:TextBox ID="txt_destination" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lbl_auto_no" runat="server" Text="Auto Number"></asp:Label>
            </td>
            <td class="style3">
                <strong>:</strong>
            </td>
            <td class="style4">
                <asp:TextBox ID="txt_auto_no" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lbl_fare" runat="server" Text="Fare (in Rs.)"></asp:Label>
            </td>
            <td class="style3" style="font-weight: 700">
                <strong>:</strong>
            </td>
            <td class="style4">
                <asp:TextBox ID="txt_fare" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:HiddenField ID="hddn_auto" runat="server" />
            </td>
        </tr>
    </table>
    <table class="style5">
        <tr>
            <td class="style6">
                <asp:Button ID="btn_insert" runat="server" style="margin-left: 11px" Text="Insert" Width="100px" onclick="btn_insert_Click" />
                <asp:Button ID="btn_update" runat="server" style="margin-left: 11px" Text="Update" Width="100px" onclick="btn_update_Click" />
                <asp:Button ID="btn_delete" runat="server" style="margin-left: 11px" Text="Delete" Width="100px" onclick="btn_delete_Click" />
                <asp:Button ID="btn_refresh" runat="server" onclick="btn_refresh_Click" 
                    style="margin-left: 11px" Text="Refresh" Width="100px" />
            </td>
        </tr>
    </table>
    <HR align="left" style="width: 65%">
    <table class="style7">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gv_auto" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" 
                    ForeColor="#333333" GridLines="None" 
                              onselectedindexchanged="gv_auto_SelectedIndexChanged" 
                    TabIndex="-1" style="text-align: center" Width="1070px" 
                    onrowcommand="gv_auto_RowCommand">
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
                        <asp:BoundField DataField="Source" HeaderText="Source" />
                        <asp:BoundField DataField="Destination" HeaderText="Destination" />
                        <asp:BoundField DataField="Auto_Number" HeaderText="Auto Number" />
                        <asp:BoundField DataField="Fare" HeaderText="Fare (in Rs.)" />
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
