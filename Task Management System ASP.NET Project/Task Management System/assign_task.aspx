<%@ Page Language="C#" AutoEventWireup="true" CodeFile="assign_task.aspx.cs" Inherits="assign_task" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
   <div id="sidebar" style="z-index: 106; left: 8px; width: 144px; position: absolute; top: 0px; height: 544px">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/tasklistpage.aspx" Style="z-index: 100;
            left: 20px; position: absolute; top: 96px" Width="151px"> Administrator home</asp:HyperLink>
       &nbsp;
    </div>
    <div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#A83930"
            Style="z-index: 100; left: 234px; position: absolute; top: 97px" Text="Choose task to assign :"
            Width="220px"></asp:Label>
        &nbsp;
        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource2" DataTextField="project"
            DataValueField="project" Height="157px" Style="z-index: 107; left: 308px; position: absolute;
            top: 168px" Width="285px"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString6 %>"
            SelectCommand="SELECT * FROM [projects]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 102;
            left: 627px; position: absolute; top: 392px" Text="Assign" Width="119px" />
        <asp:Label ID="Label2" runat="server" Style="z-index: 103; left: 265px; position: absolute;
            top: 393px" Text="Project :" Width="124px"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mustafaConnectionString5 %>"
            SelectCommand="SELECT [taskname] FROM [tasklists]"></asp:SqlDataSource>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 104; left: 425px; position: absolute;
            top: 393px"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Style="z-index: 105;
            left: 635px; position: absolute; top: 299px" Text="Select" Width="68px" />
    
    </div>
    </form>
</body>
</html>
