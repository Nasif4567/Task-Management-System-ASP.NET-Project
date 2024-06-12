<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delete User.aspx.cs" Inherits="Delete_User" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 100; left: 217px;
            position: absolute; top: 82px" Width="293px">
        </asp:DropDownList>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Underline="True" Style="z-index: 103;
            left: 218px; position: absolute; top: 32px" Text="Select user to Delete :" Width="213px"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString5 %>"
            SelectCommand="SELECT [fname] FROM [biodata]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 102;
            left: 417px; position: absolute; top: 142px" Text="Delete" />
    
    </div>
    </form>
</body>
</html>
