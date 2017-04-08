<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Home.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<!-- start of image controller -->
<div id="video_control" align="left" >
    <table style="margin-left: 10%; width: 37%; height: 251px;" align="left">
        <tr>
            <td>
                <asp:ImageButton ID="video1" runat="server" ImageUrl="~/Images/Master/Metro 1.jpg" Height="242px" onclick="video1_Click" Width="349px" />
            </td>
        </tr>
    </table>
</div>
<!-- end of image controller -->




</asp:Content>

