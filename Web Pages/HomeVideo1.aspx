<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeVideo1.aspx.cs" Inherits="Video_Music_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
<!-- start of image controller -->
<div id="video_control" align="left" >
    <table width: 37%; height: 251px;" align="left" style="margin-left: 8%">
        <tr>
            <td>
                <video controls="controls" autoplay="autoplay" width="174%">
                    <source src="Videos/Main_Video.mp4" type="video/mp4" />
                </video>
            </td>
        </tr>
    </table>
</div>
<!-- end of image controller -->

    </form>
</body>
</html>
