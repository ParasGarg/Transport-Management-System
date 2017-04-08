<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Description.aspx.cs" Inherits="Default2" %>

<%@ Register assembly="Winthusiasm.HtmlEditor" namespace="Winthusiasm.HtmlEditor" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Admin : Description</title>
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
            font-weight: 700;
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
                <asp:Label ID="lbl_title" runat="server" Text="Title"></asp:Label>
            </td>
            <td class="style3">
                <strong>:</strong>
            </td>
            <td class="style4">
                <asp:TextBox ID="txt_title" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lbl_description" runat="server" Text="Description"></asp:Label>
            </td>
            <td class="style3">
                <strong>:</strong>
            </td>
            <td class="style4">
                <cc1:HtmlEditor ID="html_description" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lbl_flag" runat="server" Text="Flag"></asp:Label>
            </td>
            <td class="style3">
                <strong>:</strong>
            </td>
            <td class="style4">
                <asp:TextBox ID="txt_flag" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lbl_img" runat="server" Text="Image"></asp:Label>
            </td>
            <td class="style3">
                :</td>
            <td class="style4">
                <asp:FileUpload ID="fup_des_img" runat="server" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
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
                <asp:GridView ID="gv_description" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" 
                              TabIndex="-1" style="text-align: center" Width="1070px" onrowcommand="gv_description_RowCommand">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnk_btn_edit" runat="server" style="text-align: center" CausesValidation="False" CommandName="gv_edit"
                                                CommandArgument='<%#DataBinder.Eval(Container,"DataItem.Id") %>'>Edit
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Title" HeaderText="Title" />
                        <asp:BoundField DataField="Description" HeaderText="Description" />
                        <asp:BoundField DataField="Flag" HeaderText="Flag" />
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image ID="Img_grid" runat="server" ImageUrl='<%# Bind("ImgURL") %>' height="50px" Width="100px"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                         <ItemTemplate>
                                <asp:LinkButton ID="lnk_btn_delete" runat="server" style="text-align: center" CausesValidation="False" CommandName="gv_delete"
                                                CommandArgument='<%#DataBinder.Eval(Container,"DataItem.Id") %>'>Delete
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
