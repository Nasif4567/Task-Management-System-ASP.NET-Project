<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changeadminpass.aspx.cs" Inherits="changeadminpass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 100; left: 350px; position: absolute;
            top: 139px" TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 101; left: 350px; position: absolute;
            top: 184px" TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Style="z-index: 102; left: 202px; position: absolute;
            top: 57px" Text="ADMINISTRATOR"></asp:Label>
        <asp:Label ID="Label2" runat="server" Style="z-index: 103; left: 176px; position: absolute;
            top: 133px" Text="NEW PASSWORD"></asp:Label>
        <asp:Label ID="Label3" runat="server" Style="z-index: 104; left: 172px; position: absolute;
            top: 178px" Text="CONFIRM PASSWORD"></asp:Label>
        &nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 105;
            left: 301px; position: absolute; top: 276px" Text="CHANGE" />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1"
            ControlToValidate="TextBox2" ErrorMessage="enter similar passwords" Style="z-index: 107;
            left: 550px; position: absolute; top: 140px"></asp:CompareValidator>
    
    </div>
    </form>

</body>
</html>
