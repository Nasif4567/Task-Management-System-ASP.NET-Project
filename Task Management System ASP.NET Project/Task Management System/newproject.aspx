<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newproject.aspx.cs" Inherits="newproject" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div id="sidebar" style="z-index: 104; left: 3px; width: 165px; position: absolute; top: 0px; height: 545px">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin home.aspx" Style="z-index: 100;
            left: 20px; position: absolute; top: 96px" Width="151px"> Administrator home</asp:HyperLink>
       &nbsp;
    </div>
    
    
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Underline="True" Style="z-index: 100;
            left: 233px; position: absolute; top: 44px" Text="Add new project:" Width="190px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="28px" Style="z-index: 101; left: 234px;
            position: absolute; top: 117px" Width="422px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 102;
            left: 715px; position: absolute; top: 122px" Text="Add" Width="115px" />
        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="project"
            DataValueField="project" Height="294px" Style="z-index: 105; left: 236px; position: absolute;
            top: 247px" Width="279px"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString7 %>"
            SelectCommand="SELECT * FROM [projects]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
