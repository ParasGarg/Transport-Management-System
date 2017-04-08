<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Metro.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="User_Web_Pages_Metro_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            height: 90%;
        }
        .style4
        {
            height: 89%;
        }
        .style5
        {
            height: 83%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- start of about section -->
<div id="about">

    <div style="text-align: justify; height: 144px; width: 1200px; margin-left: 12px; margin-right: 11px">
        <span style="color: rgb(186, 85, 211)">
        <span style="font-family: Courier New">
        &nbsp; Delhi Metro is a rapid transit system serving Delhi, Gurgaon, Noida &amp;<br/>
        &nbsp; Ghaziabad in the National Capital Region of India. It is one of the<br />
        &nbsp; largest metro networks in the world. The network consists of 6 lines<br />
        &nbsp; with a total length of 189.63 of kms (117.83 mi) with 142 stations of<br />
        &nbsp; which 35 are underground. It has combination of elevated, atgrade and<br />
        &nbsp; underground lines and uses both broad gauges &amp; standard gauge rolling<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stocks. Four Rolling Stocks are Red line, Blue Line,  Yellow Line,<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Green Line.

        </span>
        </span>
    </div>

    <br />

    <table style="margin-left: 10%; width: 79%; height: 300px;" align="left">
        <tr>
            <td width="40%" align="right" class="style5" valign="top">
                <asp:Image ID="img_red" runat="server" width="96%" Height="32%" align="left" 
                    style="margin-left: 0%"></asp:Image>
            </td>
        
            <td valign="top" class="style5">
                <div style="text-align: justify; height: 25px;">
                    <span style="color: rgb(186, 85, 211)">
                    <span style="font-family: Courier New">
                    The Red Line was the first line of the Metro to be opened and connects Rithala in the west to Dilshad Garden in the east, 
                    covering a distance of 25.09 kilometres (15.59 mi). It is partly elevated and partly at grade, and crosses the Yamuna River 
                    between Kashmere Gate and Shastri Park stations. The inauguration of the first stretch between Shahdara and Tis Hazari caused 
                    the ticketing system to collapse due to the line being crowded to four times its capacity by citizens eager to have a ride. 
                    Subsequent sections were inaugurated from Tis Hazari - Trinagar (later renamed Inderlok). Inderlok - Rithala and Shahdara - Dilshad Garden 
                    on June 4, 2008.
                    </span>
                    </span>
                </div>
            </td>
        </tr>
    </table>
        
    <br />

    <table style="margin-left: 10%; width: 79%; height: 340px;" align="left">
        <tr>     
            <td valign="top" class="style3">
                <div style="text-align: justify; height: 25px;">
                    <span style="color: rgb(186, 85, 211)">
                    <span style="font-family: Courier New">
                    The Yellow Line was the second line of the Metro and was the first underground line to be opened. 
                    It runs for 44.36 kilometres and connects Jahangirpuri with HUDA City Centre. 
                    This line also possesses the country's deepest Metro station at Chawri Bazaar, situated 30 metres (98 ft) below ground level. 
                    However, Chhatarpur station on this line opened on August 26, 2010. Due to delay 
                    in acquiring the land for constructing the station, it was constructed using 
                    pre-fabricated structures in a record time of 9 months and is the only station in the Delhi metro network 
                    to be made completely of steel. Interchanges are available with the Red Line 
                    at Kashmere Gate station, Blue Line at Rajiv Chowk Station, Violet Line at Central Secretariat , and with the Indian Railways network at Delhi and New Delhi.
                    </span>
                    </span>
                </div>
            </td>
            <td height="90%" width="40%" align="right" class="style4" valign="top">
                <asp:Image ID="img_yellow" runat="server" width="99%" Height="18%" align="left" style="margin-left: 4%"></asp:Image>
            </td>
        </tr>
    </table>

    <br />

    <table style="margin-left: 10%; width: 79%; height: 300px;" align="left">
        <tr>
            <td height="90%" width="40%" align="right" class="style4" valign="top">
                <asp:Image ID="img_blue" runat="server" width="96%" Height="16%" align="left" 
                    style="margin-left: 0%"></asp:Image>
            </td>
        
            <td valign="top" class="style3">
                <div style="text-align: justify; height: 25px;">
                    <span style="color: rgb(186, 85, 211)">
                    <span style="font-family: Courier New">
                    The Blue Line was the third line of the Metro to be opened, and the first to connect areas outside Delhi.
                    It connects Dwarka Sub City in the west with the satellite city of Noida in the east, covering a distance of 47.4 kilometres (29.5 miles).
                    Yamuna Bank - Noida City Centre , and Dwarka Sector 9 - Dwarka Sector 21 . 
                    A branch of the Blue line, takes off from Yamuna Bank station and runs for 6.25 kilometres (3.88 miles) up to Anand Vihar in east Delhi.
                    Interchanges are available with the Yellow Line at Rajiv Chowk station, and with the Indian Railways network at the Anand Vihar Railway Terminal.
                    </span>
                    </span>
                </div>
            </td>
        </tr>
    </table>

    <br />

    <table style="margin-left: 10%; width: 79%; height: 260px;" align="left">
        <tr>     
            <td valign="top" class="style3">
                <div style="text-align: justify; height: 25px;">
                    <span style="color: rgb(186, 85, 211)">
                    <span style="font-family: Courier New">
                    The fully elevated line connects Mundka with Inderlok, running for 15.1 kilometres (9.4 mi) mostly along Rohtak Road. 
                    An interchange with the Red line is available at Inderlok station via an integrated concourse.
                    </span>
                    </span>
                </div>
            </td>
            <td height="90%" width="40%" align="right" class="style4" valign="top">
                <asp:Image ID="img_green" runat="server" width="99%" Height="60%" align="left" 
                    style="margin-left: 4%"></asp:Image>
            </td>
        </tr>
    </table>

    <br />

    <table style="margin-left: 10%; width: 79%; height: 300px;" align="left">
        <tr>
            <td height="90%" width="40%" align="right" class="style4" valign="top">
                <asp:Image ID="img_voilet" runat="server" width="96%" Height="16%" align="left" 
                    style="margin-left: 0%"></asp:Image>
            </td>
        
            <td valign="top" class="style3">
                <div style="text-align: justify; height: 25px;">
                    <span style="color: rgb(186, 85, 211)">
                    <span style="font-family: Courier New">
                    The Violet Line is the most recent line of the Metro to be opened, and the second standard-gauge corridor after the Green Line. 
                    The 20.2 km (12.6 mi) long line connects Badarpur to Central Secretariat, with 9 km (5.6 mi) being overhead and the rest underground. 
                    An interchange with the Yellow Line is available at Central Secretariat through an integrated concourse. 
                    The remaining portion from Sarita Vihar to Badarpur was opened for commercial service, adding three new stations to the network and marking 
                    the completion of the line.
                    </span>
                    </span>
                </div>
            </td>
        </tr>
    </table>
</div>

<br />

<div id="card">
    <table style="margin-left: 10%; width: 79%; height: 260px;" align="left">
        <tr>     
            <td valign="top" class="style3">
                <div style="text-align: justify; height: 25px;">
                    <span style="color: rgb(186, 85, 211)">
                    <span style="font-family: Courier New">
                    A stored value card, The minimum recharge value of a travel card is Rs. 100/- and the maximum is Rs. 1000/-. 
                    A security deposit of Rs. 50/- (Refundable on return of card) is payable at purchase and the file commuter can add on a minimum value of Rs/-50 during purchase. 
                    Subsequent recharge of the card will be of a minimum value of Rs. 100/-
                    </span>
                    </span>
                </div>
            </td>
            <td height="90%" width="40%" align="right" class="style4" valign="top">
                <asp:Image ID="img_card" runat="server" width="99%" Height="60%" align="left" style="margin-left: 4%"></asp:Image>
            </td>
        </tr>      
    </table>
</div>
<!-- end of about section -->

<br />
<!-- start of top view -->
<div id="top">
    <table style="margin-left: 10%; width: 79%; height: 260px;" align="left">
        <tr>
            <td align="right" class="style4" valign="top" style="margin-right: 10%">
                <asp:HyperLink ID="hlnk_top" runat="server" align="right" 
                    NavigateUrl="~/User Web Pages/Metro/About.aspx">Top</asp:HyperLink>
             </td>
        </tr>
    </table>
</div>
<!-- end of about section -->

</asp:Content>

