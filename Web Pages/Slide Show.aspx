

<%@ Page Language="C#" AutoEventWireup="true" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
    <script runat="Server" type="text/C#">  
    [System.Web.Services.WebMethod]  
    [System.Web.Script.Services.ScriptMethod]  
    public static AjaxControlToolkit.Slide[] GetImages()  
    {  
        return new AjaxControlToolkit.Slide[] {   
        new AjaxControlToolkit.Slide("images/metro/metro 1.jpg", "Blue Hills", "Go Blue"),  
        new AjaxControlToolkit.Slide("images/metro/metro 2.jpg", "Sunset", "Setting sun"),  
        new AjaxControlToolkit.Slide("images/metro/metro 3.jpg", "Winter", "Wintery..."),  
        new AjaxControlToolkit.Slide("images/metro/metro 4.jpg", "Water lillies", "Lillies in the water"),  
        new AjaxControlToolkit.Slide("images/metro/metro 5.jpg", "Sedona", "Portrait style picture")};  
    }

</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head runat="server"><title></title></head><body style="height: 266px"><form id="form1" runat="server">

<asp:ScriptManager ID="ToolkitScriptManager1"   runat="server">
        </asp:ScriptManager>
      
            
            <%--<asp:Label runat="Server" ID="imageTitle"/><br />--%>
            
            <asp:Image ID="Image1" runat="server" Height="200" Style="border: 1px solid black; width:300" ImageUrl="Images/metro/metro 1.jpg"
                       AlternateText="Blue Hills image" />
            
            <%--<asp:Label runat="server" ID="imageDescription" CssClass="slideDescription"></asp:Label><br /><br />--%>
            <%--<asp:Button runat="Server" ID="prevButton" Text="Prev" Font-Size="Larger" />
            <asp:Button runat="Server" ID="playButton" Text="Play" Font-Size="Larger" />
            <asp:Button runat="Server" ID="nextButton" Text="Next" Font-Size="Larger" />--%>
            
            <asp:SlideShowExtender ID="slideshowextend1" runat="server" TargetControlID="Image1"
                SlideShowServiceMethod="GetImages"
                AutoPlay="true"
                ImageTitleLabelID="imageTitle"
                ImageDescriptionLabelID="imageDescription"
                
                Loop="true">
            </asp:SlideShowExtender>   
   
    </form>
</body>
</html>
