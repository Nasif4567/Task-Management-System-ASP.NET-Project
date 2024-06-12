<%@ Page Language="C#" AutoEventWireup="true" CodeFile="current projects.aspx.cs" Inherits="current_projects" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Underline="True" Style="z-index: 100;
            left: 103px; position: absolute; top: 100px" Text="Current Projects :" Width="160px"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="project"
            DataSourceID="SqlDataSource1" Height="144px" Style="z-index: 101; left: 103px;
            position: absolute; top: 173px" Width="461px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:HyperLinkField DataTextField="project" HeaderText="project" DataNavigateUrlFields="project" DataNavigateUrlFormatString='projectdetails.aspx?{0}' SortExpression="project" />
                
                <%--<asp:BoundField DataField="project" HeaderText="project" ReadOnly="True" SortExpression="project" />--%>
            </Columns>
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <EmptyDataTemplate>
                No New Projects
            </EmptyDataTemplate>
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />             
        </asp:GridView>                      
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString8 %>"
            SelectCommand="SELECT * FROM [projects]"></asp:SqlDataSource>
        &nbsp;
    
    </div>
    </form>
</body>
</html>
