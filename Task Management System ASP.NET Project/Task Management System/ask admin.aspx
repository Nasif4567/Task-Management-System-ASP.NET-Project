<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ask admin.aspx.cs" Inherits="ask_admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/compose.aspx" Style="z-index: 100;
            left: 199px; position: absolute; top: 119px">create another message</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/tasklistpage.aspx" Style="z-index: 102;
            left: 200px; position: absolute; top: 170px" Width="156px">admin home</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
