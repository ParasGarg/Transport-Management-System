<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="Bus.aspx.cs" MasterPageFile="~/Master Pages/Bus.master" Inherits="User_Web_Pages_Default"  %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">        
    <style type="text/css">
        .style6
        {
            width: 50%;
            height: 90%;
        }
        .style7
        {
            width: 719px;
            height: 90%;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- start of logo section -->

    <asp:Image ID="img_logo" runat="server" width="60%" Height="120px" style="margin-left: 20px"/> 

<!-- end of logo section -->

<br />

<!-- start of about section -->
<div id="about" style="margin-up: 4%">
        
    <table style="margin-left: 10%; width: 80%; height: 300px;" align="left">
        <tr>
            <td width="40%" align="right" class="style5" valign="top">
                <asp:Image ID="img_about" runat="server" width="96%" Height="65%" align="left" style="margin-left: 0%"></asp:Image>
            </td>
        
        
            <td id="about_table" class="style6" valign="top">
                <div style="text-align: justify">
                <span style="color: rgb(186, 85, 211)">
                <span style="font-family: Courier New">
                    Bus is a good transportation system in Noida. 
                    The Bigest source of transportation in Noida is Bus. 
                    Reason is that, it is associated with N.C.R.(Delhi) and U.P.. 
                    The D.T.C. buses and the U.P. local buses play a vital role to reach the people to their destinations. 
                    The low floor buses are the main attraction to the people, these buses provide quick and efficient services to the people. 
                    The low floor buses are AC as well as NON AC.
                </span>
                </span>
                </div>    
            </td>
        </tr>
    </table>
</div>
<!-- end of about section -->


</asp:Content>

