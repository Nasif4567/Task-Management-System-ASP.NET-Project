<%@ Page Language="C#" AutoEventWireup="true" CodeFile="usercompose.aspx.cs" Inherits="admincompose" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 100; left: 433px; position: absolute;
            top: 77px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 101; left: 433px; position: absolute;
            top: 133px"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" Height="80px" Style="z-index: 102; left: 425px;
            position: absolute; top: 205px" TextMode="MultiLine" Width="201px"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Style="z-index: 103; left: 330px; position: absolute;
            top: 135px" Text="from" Width="58px"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Height="210px" Style="z-index: 104; left: 422px;
            position: absolute; top: 341px" TextMode="MultiLine" Width="386px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 105;
            left: 791px; position: absolute; top: 275px" Text="Button" />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/inbox.aspx" Style="z-index: 107;
            left: 64px; position: absolute; top: 91px" Width="84px">Inbox</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
