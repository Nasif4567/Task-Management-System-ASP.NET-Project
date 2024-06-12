<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admininbox.aspx.cs" Inherits="admininbox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div id="sidebar" style="z-index: 102; left: 1px; width: 164px; position: absolute; top: -1px; height: 565px">
        &nbsp;</div>
    
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Underline="True" Style="z-index: 100;
            left: 274px; position: absolute; top: 67px" Text="Messages:"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" Style="z-index: 102; left: 273px; position: absolute;
            top: 140px" Width="320px">
            <EmptyDataTemplate>
                No new messages
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString3 %>"
            SelectCommand="SELECT * FROM [messages]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
