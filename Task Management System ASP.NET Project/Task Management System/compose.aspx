<%@ Page Language="C#" AutoEventWireup="true" CodeFile="compose.aspx.cs" Inherits="compose" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<script type="text/javascript">
function back()
{
if(history(-1))
  history(0)
  }
  
</script>

    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
   
</head>
<body onload="back()">
    <form id="form1" runat="server">
   <div id="sidebar" style="z-index: 110; left: -1px; width: 155px; position: absolute; top: 0px; height: 569px"></div>
    <div>
        <asp:Label ID="Label1" runat="server" Height="23px" Style="z-index: 100; left: 273px;
            position: absolute; top: 56px" Text="To :" Width="87px"></asp:Label>
        <asp:Button ID="btnsend" runat="server" OnClick="btnsend_Click" Style="z-index: 101;
            left: 462px; position: absolute; top: 563px" Text="Send" Width="72px" />
        <asp:Label ID="Label2" runat="server" Height="12px" Style="z-index: 102; left: 277px;
            position: absolute; top: 100px" Text="From :" Width="81px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 103; left: 367px; position: absolute;
            top: 56px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 104; left: 369px; position: absolute;
            top: 102px"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" Height="35px" Style="z-index: 105; left: 367px;
            position: absolute; top: 147px" Width="202px"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Style="z-index: 106; left: 279px; position: absolute;
            top: 146px" Text="Subject :" Width="64px"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Height="290px" Style="z-index: 107; left: 233px;
            position: absolute; top: 217px" TextMode="MultiLine" Width="519px"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Style="z-index: 108; left: 570px; position: absolute;
            top: 58px" Width="190px"></asp:Label>
        &nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/admin home.aspx" Style="z-index: 111;
            left: 18px; position: absolute; top: 42px" Width="160px">Administrator home</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
