<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin home.aspx.cs" Inherits="tasklistpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">

<script type="text/javascript">
function f2()
{
window.history.forward();
}

</script>
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body onload="f2()">
    <form id="form1" runat="server">
     <div id="sidebar" style="z-index: 102; left: 8px; width: 144px; position: absolute; top: 0px; height: 544px">
         &nbsp;
         <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Underline="True" Style="z-index: 100;
             left: 215px; position: absolute; top: 49px" Text="Administrator Home" Width="177px"></asp:Label>
    </div>
    <div>
    
    </div>
        &nbsp;
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mustafaConnectionString4 %>"
             SelectCommand="SELECT [taskname] FROM [tasklists]"></asp:SqlDataSource>
        &nbsp;&nbsp;
         <asp:TreeView ID="TreeView1" runat="server" ShowLines="True" Style="z-index: 100;
             left: 218px; position: absolute; top: 182px" LineImagesFolder="~/TreeLineImages">
             <Nodes>
                 <asp:TreeNode NavigateUrl="~/newproject.aspx" Text="Add Project" Value="Task List"></asp:TreeNode>
                 <asp:TreeNode NavigateUrl="~/current projects.aspx" Text="Current Projects" Value="New Task"></asp:TreeNode>
                 <asp:TreeNode NavigateUrl="~/assign_task.aspx" Text="Assign Task" Value="Assign Task">
                     <asp:TreeNode NavigateUrl="~/selection.aspx" Text="Choose Staff" Value="Choose Staff">
                     </asp:TreeNode>
                 </asp:TreeNode>
                 <asp:TreeNode NavigateUrl="~/newuser.aspx" Text="Create New User" Value="Create New User">
                 </asp:TreeNode>
                 <asp:TreeNode NavigateUrl="~/updateuser.aspx" Text="Edit User Profile" Value="Edit User Profile:">
                     <asp:TreeNode NavigateUrl="~/Delete User.aspx" Text="Delete User" Value="Delete User">
                     </asp:TreeNode>
                 </asp:TreeNode>
                 <asp:TreeNode NavigateUrl="~/admininbox.aspx" Text="My Messages" Value="Inbox"></asp:TreeNode>
                 <asp:TreeNode NavigateUrl="~/people finder.aspx" Text="People finder" Value="People finder">
                 </asp:TreeNode>
                 <asp:TreeNode NavigateUrl="~/changeadminpass.aspx" Text="change password" Value="change password">
                 </asp:TreeNode>
             </Nodes>
         </asp:TreeView>
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/login.aspx" Style="z-index: 103;
            left: 770px; position: absolute; top: 81px" Text="logout" />
    </form>
</body>
</html>
