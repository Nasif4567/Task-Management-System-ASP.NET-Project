<%@ Page Language="C#" AutoEventWireup="true" EnableSessionState="False" CodeFile="first_page.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<script type="text/javascript"> 
function f1()
{
window.history.forward();

}

</script>
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body onload="f1()">
    <form id="form1" runat="server">
    <div id="header" style="width: 942px; height: 149px">
    <h1>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    </h1>
        <h1>
            &nbsp; &nbsp; &nbsp; &nbsp; <span style="font-family: Verdana">
        TASK MANAGEMENT SYSTEM</span></h1>
        <p>
            &nbsp;</p>
          
    
    </div>
    <div id="sidebar" style="z-index: 105; left: 0px; width: 175px; position: absolute; top: 0px; height: 712px">
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="X-Large" Font-Underline="True" Style="z-index: 100; left: 58px; position: absolute;
            top: 308px" OnClick="LinkButton1_Click" Height="31px" Width="107px">Log in</asp:LinkButton>
        &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" Height="144px" ImageUrl="~/Images/logo.jpg"
            Style="z-index: 102; left: 32px; position: absolute; top: 16px" Width="120px" />
    </div>
        <asp:Label ID="Label1" runat="server" Height="97px" Style="z-index: 100; left: 230px;
            position: absolute; top: 175px" Text="Hello" Width="250px" Font-Italic="False" Font-Names="Verdana" Font-Size="X-Large"></asp:Label>
        <asp:LinkButton ID="LinkButton3" runat="server" Style="z-index: 101; left: 69px;
            position: absolute; top: 236px" Width="78px" Font-Bold="True" Font-Names="Verdana">Log in</asp:LinkButton>
    
    <asp:Label ID="Datelabel" runat="server" Style="z-index: 102; left: 689px; position: absolute;
            top: 178px" Width="193px" Font-Names="Verdana"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Names="Verdana" Style="z-index: 103; left: 227px;
            position: absolute; top: 558px" Text="Copyright 2008"></asp:Label>
        &nbsp;
    
    
    <%--<div id="footer" runat="server">
     <br />
        <br />
        <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
        &nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="False" Style="z-index: 105; left: 231px;
            position: absolute; top: 600px" Text="Copyright 2008"></asp:Label>
        <br />
        <br />
        <br />
        <br />
     
     
     </div>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
        <br />--%>
    </form>
</body>
</html>
