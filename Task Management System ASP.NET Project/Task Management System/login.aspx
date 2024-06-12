<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
   <script language="javascript">
    
//Here is the one iam using. Its very simple. 
//Call this function from body onload

function DisablingBackFunctionality() 
{
var URL;
var i ;
var QryStrValue;
URL=window.location.href ;
i=URL.indexOf("?");
QryStrValue=URL.substring(i+1);
if (QryStrValue!='X')
{ 
window.location=URL + "?X";
} 
}
//function formKeyValidate()
 //{
 //onKeyDown="formKeyValidate()"
//// keycode for F5 function
//if (window.event && window.event.keyCode == 116) {

//window.event.cancelBubble = true;
//window.event.returnValue = false;
//cancelRefresh();
//}
//} 
    </script> 
     <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
  </head>
<body onload="DisablingBackFunctionality()">
    <form id="form1"  runat="server" >
    <div id="sidebar" style="z-index: 109; left: -2px; width: 173px; position: absolute; top: 0px; height: 546px">
    </div>
    <div>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 100; left: 465px; position: absolute;
            top: 180px"></asp:TextBox>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 101; left: 467px; position: absolute;
            top: 238px" TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Font-Names="Verdana" ForeColor="Black" Style="z-index: 102;
            left: 351px; position: absolute; top: 239px" Text="Password :"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Names="Verdana" ForeColor="Black" Style="z-index: 103;
            left: 349px; position: absolute; top: 178px" Text="Username :"></asp:Label>
        <asp:Button ID="Button1" runat="server" BackColor="BurlyWood" BorderColor="Gainsboro"
            Font-Bold="True" Font-Names="Verdana" Style="z-index: 104; left: 409px; position: absolute;
            top: 304px" Text="Sign in" Width="90px" OnClick="Button1_Click" />
        &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Underline="True"
            ForeColor="#A83930" Height="25px" Style="z-index: 105; left: 285px; position: absolute;
            top: 111px" Text="Login" Width="96px"></asp:Label>
    
    </div>
        &nbsp;
        <asp:Label ID="Label3" runat="server" Style="z-index: 106; left: 261px; position: absolute;
            top: 54px" Width="458px"></asp:Label>
        &nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" Style="z-index: 110; left: 65px; position: absolute;
            top: 127px" Font-Bold="True" Font-Underline="True" NavigateUrl="~/first_page.aspx">Home</asp:HyperLink>
        &nbsp;
   
    
    </form>
</body>
</html>
