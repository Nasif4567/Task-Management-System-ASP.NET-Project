<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userinbox.aspx.cs" Inherits="new_message" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">

<script type="text/javascript">

function f1()
{
window.history.back();
}
</script>
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body bgcolor="lightblue">
    <form id="form1" runat="server">
     <div id="sidebar" style="z-index: 103; left: 1px; width: 164px; position: absolute; top: -1px; height: 568px">
        &nbsp;</div>
    
    
    <div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Underline="True"
            ForeColor="#A83930" Style="z-index: 100; left: 236px; position: absolute; top: 80px"
            Text="Messages :" Width="202px"></asp:Label>
        &nbsp; 
        <asp:GridView ID="GridView1" runat="server" Height="283px" Style="z-index: 101; left: 244px;
            position: absolute; top: 182px" Width="471px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
       <%-- <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>--%>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString %>"
            SelectCommand="SELECT * FROM [messages]"></asp:SqlDataSource>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/inbox.aspx" Style="z-index: 104;
            left: 631px; position: absolute; top: 45px">Inbox</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
