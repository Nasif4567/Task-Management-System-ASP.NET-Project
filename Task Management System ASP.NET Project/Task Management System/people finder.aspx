<%@ Page Language="C#" AutoEventWireup="true" CodeFile="people finder.aspx.cs" Inherits="search" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div id="sidebar" style="z-index: 104; left: 8px; width: 144px; position: absolute; top: 0px; height: 544px">
         &nbsp;&nbsp;
         <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Underline="True" Style="z-index: 100;
             left: 202px; position: absolute; top: 132px" Text="Click the Username to send mail"
             Width="339px"></asp:Label>
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 100;
            left: 474px; position: absolute; top: 83px" Text="Search" Width="90px" />
        <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 101; left: 235px;
            position: absolute; top: 86px" Width="186px" DataSourceID="SqlDataSource1" DataTextField="desig" DataValueField="desig" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString4 %>"
            SelectCommand="SELECT distinct[desig] FROM [biodata]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AllowPaging="True" Style="z-index: 104; left: 210px; position: absolute;
            top: 171px" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
         <Columns>
                
                <asp:BoundField DataField="fname" HeaderText="firstname" SortExpression="firstname" />
                <asp:BoundField DataField="lname" HeaderText="lastname" SortExpression="lastname" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="zipcode" HeaderText="zipcode" SortExpression="zipcode" />
                <asp:HyperLinkField DataTextField="username"  HeaderText="username" DataNavigateUrlFields="username" DataNavigateUrlFormatString='~/compose.aspx?{0}' />                              
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                <asp:BoundField DataField="desig" HeaderText="desig" SortExpression="desig" />
                <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position" />
            </Columns>
        </asp:GridView>
        </div>
    </form>
</body>
</html>
