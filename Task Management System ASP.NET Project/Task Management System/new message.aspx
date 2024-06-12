<%@ Page Language="C#" AutoEventWireup="true" CodeFile="new message.aspx.cs" Inherits="new_message" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">

<script type="text/javascript">

function f1()
{
window.history.back();
}
</script>
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
     <div id="sidebar" style="z-index: 102; left: 1px; width: 164px; position: absolute; top: -1px; height: 565px">
        &nbsp;</div>
    
    
    <div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Underline="True"
            ForeColor="#A83930" Style="z-index: 100; left: 236px; position: absolute; top: 80px"
            Text="Messages :" Width="202px"></asp:Label>
        &nbsp; 
        <asp:GridView ID="GridView1" runat="server" Height="283px" Style="z-index: 103; left: 244px;
            position: absolute; top: 182px" Width="471px">
        </asp:GridView>
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString %>"
            SelectCommand="SELECT * FROM [messages]"></asp:SqlDataSource>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    
    </div>
    </form>
</body>
</html>
