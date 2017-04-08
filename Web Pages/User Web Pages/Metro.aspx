<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Metro.master" AutoEventWireup="true" CodeFile="Metro.aspx.cs" Inherits="User_Web_Pages_Metro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 60%;
        }
        .style4
        {
            width: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- start of logo section -->

<asp:Image ID="img_logo" runat="server" width="60%" Height="96px" 
        style="margin-left: 20px"/> 

<!-- end of logo section -->

<br />

<!-- start of about section -->

<div id="about">
    <table style="margin-left: 10%; width: 79%; height: 300px;" align="left">
        <tr>
            <td width="40%" align="right" class="style5" valign="top">
                <asp:Image ID="img_about" runat="server" width="96%" Height="65%" align="left" style="margin-left: 0%"></asp:Image>
            </td>
        
            <td valign="top" class="style5">
                <div style="text-align: justify; height: 25px;">
                <span style="color: rgb(186, 85, 211)">
                <span style="font-family: Courier New">
                Delhi Metro created history on 12 November, 2009, when its Noida line became operational. 
                Utter Pradesh Chief Minister Mayawati flagged off the first train from Noida City Center. 
                The metro was open to the public from the next day. The total construction took 3 years and 3 months which has started on August 1, 2006. 
                The Noida corridor is completely evelated and is integrated with the existiong 34.3 Km Yamuna Bank - Dwarka Sector-9 segment, 
                extending the total length of line-3 to 47.4 km, the longest of Delhi Metro. 
                Noida line is first to cross over the Delhi Border. Noida has become the first National Capital Region(N.C.R.) city to be connected to the Metro Network.        
                </span>
                </span> 
                </div>
            </td>
        </tr>
    </table>
</div>
<!-- end of about section -->

</asp:Content>

