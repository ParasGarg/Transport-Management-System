<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Auto.master" AutoEventWireup="true" CodeFile="Auto.aspx.cs" Inherits="User_Web_Pages_Auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- start of about section -->
<div id="about">
        <table style="margin-left: 0%; width: 60%; height: 251px;" align="left">
            <tr>
                <td id="img" height="90%" align="right" class="style3" valign="top">
                    <asp:Image ID="img_about" runat="server" width="90%" Height="25%" align="left" style="margin-left: 6%"></asp:Image>
                </td>
        
                <td id="about_table" style="width:50%" valign="top">
                    <div style="text-align: justify">
                        <span style="color: rgb(186, 85, 211)">
                        <span style="font-family: Courier New">
                        An auto rickshaw or three wheeler is a three wheeler cabin cycle for private use and a vehicle for hire. It is a motorized version of the traditional pulled rickshaw. Auto rickshaws are an essential form of urban transport in many developing countries, and a form of novelty transport in many Eastern Countries.
                        </span>
                        </span>
                    </div>
                </td>
            </tr>
        </table>
</div>
<!-- end of about section -->

</asp:Content>

