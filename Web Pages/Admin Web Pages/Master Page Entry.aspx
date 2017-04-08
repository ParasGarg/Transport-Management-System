<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Master Page Entry.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin : Master Page Entry</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: center;
            font-weight: bold;
            width: 11px;
        }
        .style3
        {
            width: 222px;
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
        .style8
        {
            width: 222px;
            height: 23px;
        }
        .style9
        {
            text-align: center;
            font-weight: bold;
            width: 11px;
            height: 23px;
        }
        .style10
        {
            height: 23px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:Label ID="lbl__img_title_master" runat="server" 
                    Text="Upload Image for Title Master Page"></asp:Label>
            </td>
            <td class="style2">
                :</td>
            <td>
                <asp:FileUpload ID="fup_title_master" runat="server" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="img_type" runat="server" Text="Image Type"></asp:Label>
            </td>
            <td class="style2">
                :</td>
            <td>
                <asp:TextBox ID="txt_type" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                </td>
            <td class="style9">
                </td>
            <td class="style10">
                </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:HiddenField ID="hddn_master" runat="server" />
            </td>
        </tr>
    </table>
    <table class="style5">
        <tr>
            <td class="style6">
                <asp:Button ID="btn_insert" runat="server" style="margin-left: 11px" Text="Insert" Width="100px" onclick="btn_insert_Click" />
                <asp:Button ID="btn_update" runat="server" style="margin-left: 11px" Text="Update" Width="100px" onclick="btn_update_Click" />
                <asp:Button ID="btn_delete" runat="server" style="margin-left: 11px" Text="Delete" Width="100px" onclick="btn_delete_Click" />
                <asp:Button ID="btn_refresh" runat="server" style="margin-left: 11px" Text="Refresh" Width="100px"/>
            </td>
        </tr>
    </table>
    <HR align="left" style="width: 43%; height: -12px;">
    <table class="style7">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gv_master" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" 
                    ForeColor="#333333" GridLines="None" 
                              onselectedindexchanged="gv_master_SelectedIndexChanged" 
                    TabIndex="-1" style="text-align: center" Width="1070px" 
                    onrowcommand="gv_master_RowCommand">
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
                        <asp:BoundField DataField="ImgType" HeaderText="Image Type" />
                        <asp:BoundField DataField="ImgPath" HeaderText="Title Image Path" />
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image ID="Img_grid" runat="server" ImageUrl='<%# Bind("ImgPath") %>' height="100px" Width="200px"/>
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
