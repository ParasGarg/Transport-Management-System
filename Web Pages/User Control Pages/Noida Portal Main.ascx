<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Noida Portal Main.ascx.cs" Inherits="User_Control_Pages_WebUserControl" %>


    <style type="text/css">
        .style2
        {
            width: 385px;
        }
        #right_title
        {
            width: 384px;
        }
        .Title
        {
            width: 384px;
        }
        #left_title
        {
            width: 384px;
        }
        .style3
        {
            width: 386px;
        }
    </style>
    
<!-- start of title block -->
    <div id="title">
        <table align="center" style="width: 80%" border="3">
            <tr>
                <td valign="middle" class="style2" width="50%">
                    <div id="left_title">
                        <asp:Image ID="img_home" runat="server" ImageUrl="~/Images/Noida_Home.png" 
                            AlternateText="Noida Potal" style="margin-top: 0px;" Height="150px" 
                            Width="421px" />           
                    </div>
                </td>

                <td valign="middle" class="style3" align="left" width="50%">
                    <div id="right_title">
                        <asp:DataList ID="dl_title" runat="server" Height="150px" RepeatColumns="4" 
                            style="text-align: center; margin-top: 0px;" Width="430px" RepeatDirection="Horizontal" 
                                      RepeatLayout="Flow" >
                            <ItemTemplate>
                                <asp:Image ID="dl_Img" runat="server" ImageUrl='<%# Bind("ImgPath") %>' Height="73px" Width="103px"/>
                            </ItemTemplate>
                        </asp:DataList>
                                                
                    </div>
                </td>
            </tr>
        </table>
    </div>

<!-- end of title block -->






