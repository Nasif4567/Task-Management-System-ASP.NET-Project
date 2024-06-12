<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="Result" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="sidebar" style="z-index: 110; left: 8px; width: 144px; position: absolute; top: 0px; height: 544px">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/tasklistpage.aspx" Style="z-index: 100;
            left: 20px; position: absolute; top: 96px" Width="151px"> Administrator home</asp:HyperLink>
        <asp:TreeView ID="TreeView1" runat="server" ShowLines="True" Style="z-index: 102;
            left: 23px; position: absolute; top: 173px">
            <Nodes>
                <asp:TreeNode NavigateUrl="~/tasklistpage.aspx" Text="Task List" Value="Task List"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/newtask.aspx" Text="Create New Task" Value="New Task"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/assign_task.aspx" Text="Assign Task" Value="Assign Task">
                    <asp:TreeNode NavigateUrl="~/selection.aspx" Text="Choose Staff" Value="Choose Staff">
                    </asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/Result.aspx" Text="Final Assign" Value="Final Assign"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/newuser.aspx" Text="Create New User" Value="Create New User">
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>
    </div>
    <div>
        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 234px; position: absolute;
            top: 65px" Text="Task Selected :" Width="125px"></asp:Label>
        <asp:Label ID="Label2" runat="server" Style="z-index: 101; left: 237px; position: absolute;
            top: 118px" Text="Project Leader :" Width="118px"></asp:Label>
        <asp:Label ID="Label3" runat="server" Style="z-index: 102; left: 239px; position: absolute;
            top: 175px" Text="Manager :" Width="114px"></asp:Label>
        <asp:Label ID="Label4" runat="server" Style="z-index: 103; left: 239px; position: absolute;
            top: 225px" Text="Programmer :" Width="116px"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#A83930"
            Style="z-index: 104; left: 303px; position: absolute; top: 18px" Text="Task assignment summary"
            Width="281px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 105; left: 410px; position: absolute;
            top: 66px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 106; left: 413px; position: absolute;
            top: 119px"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 107; left: 412px; position: absolute;
            top: 173px"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 108; left: 416px; position: absolute;
            top: 226px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Style="z-index: 111; left: 372px; position: absolute;
            top: 325px" Text="Send" Width="95px" />
    
    </div>
    </form>
</body>
</html>
