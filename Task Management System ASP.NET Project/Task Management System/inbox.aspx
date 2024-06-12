<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inbox.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<script language="javascript">

function LogoutButton()
{
   //window.history.back(0);
 window.open('login.aspx','_top',true);

}
</script>

    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body >
    <form id="form1" runat="server">
    <div id="sidebar" style="z-index: 103; left: 1px; width: 164px; position: absolute; top: 2px; height: 560px">
        &nbsp;&nbsp;
        <asp:TreeView ID="TreeView1" runat="server" ImageSet="BulletedList3" ShowExpandCollapse="False"
            Style="z-index: 100; left: 35px; position: absolute; top: 143px" ShowLines="True">
            <ParentNodeStyle Font-Bold="False" />
            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px"
                VerticalPadding="0px" />
            <Nodes>
                <asp:TreeNode NavigateUrl="~/usercompose.aspx" Text="Compose" Value="Compose"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/new message.aspx" Text="My messages" Value="My messages">
                </asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/changepassword.aspx" Text="change password" Value="change password">
                </asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px"
                NodeSpacing="0px" VerticalPadding="0px" />
        </asp:TreeView>
    </div>
    <div>
        &nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 270px; position: absolute;
            top: 111px"></asp:Label>
     </div>
        &nbsp; &nbsp;&nbsp;
        <input id="Button1" style="z-index: 104; left: 629px; position: absolute; top: 110px"
            type="button" value="Log out" onclick ="LogoutButton()" />
        <asp:GridView ID="GridView1" runat="server" Height="208px" Style="z-index: 101; left: 248px;
            position: absolute; top: 285px" Width="447px">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Style="z-index: 105;
            left: 250px; position: absolute; top: 204px" Text="Show projects" Width="185px" />
    </form>
</body>
</html>
