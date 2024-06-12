<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
   
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 100; left: 323px; position: absolute;
            top: 118px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 101; left: 325px; position: absolute;
            top: 166px"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 102; left: 327px; position: absolute;
            top: 208px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 103;
            left: 331px; position: absolute; top: 260px" Text="change password" />
        <asp:Label ID="Label1" runat="server" Style="z-index: 104; left: 194px; position: absolute;
            top: 167px" Text="New Password :"></asp:Label>
        <asp:Label ID="Label2" runat="server" Height="25px" Style="z-index: 105; left: 194px;
            position: absolute; top: 117px" Text="Name"></asp:Label>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2"
            ControlToValidate="TextBox3" ErrorMessage="Enter same password" Style="z-index: 108;
            left: 503px; position: absolute; top: 170px"></asp:CompareValidator>
        <asp:Label ID="Label3" runat="server" Style="z-index: 107; left: 193px; position: absolute;
            top: 208px" Text="Cofirm Password :"></asp:Label>
    
    </div>
    </form>
</body>
</html>
