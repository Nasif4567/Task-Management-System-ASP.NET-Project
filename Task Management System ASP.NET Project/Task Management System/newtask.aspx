<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newtask.aspx.cs" Inherits="newtask" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
     <div id="sidebar" style="z-index: 117; left: 8px; width: 144px; position: absolute; top: 0px; height: 1043px">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/tasklistpage.aspx" Style="z-index: 100;
            left: 18px; position: absolute; top: 85px" Width="151px"> Administrator home</asp:HyperLink>
         &nbsp;
    </div>
         <asp:TextBox ID="txtBody" runat="server" Height="127px" Style="z-index: 100; left: 404px;
             position: absolute; top: 190px" TextMode="MultiLine" Width="282px"></asp:TextBox>
    
    <div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#A83930"
            Style="z-index: 101; left: 217px; position: absolute; top: 25px" Text="Create new task :"
            Width="171px"></asp:Label>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 102;
            left: 334px; position: absolute; top: 1039px" Text="Submit" Width="121px" />
        <asp:TextBox ID="txtTaskName" runat="server" Style="z-index: 103; left: 403px; position: absolute;
            top: 93px" Width="324px"></asp:TextBox>
        <asp:TextBox ID="txtCDate" runat="server" Style="z-index: 104; left: 411px; position: absolute;
            top: 428px"></asp:TextBox>
        <asp:TextBox ID="txtMDate" runat="server" Style="z-index: 105; left: 425px; position: absolute;
            top: 738px"></asp:TextBox>
        <asp:Calendar ID="Calendar2" runat="server" Height="200px" OnSelectionChanged="Calendar2_SelectionChanged"
            Style="z-index: 118; left: 410px; position: absolute; top: 780px" Width="220px" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399">
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <WeekendDayStyle BackColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        </asp:Calendar>
        <asp:TextBox ID="txtSubject" runat="server" Style="z-index: 107; left: 403px; position: absolute;
            top: 141px" Width="321px"></asp:TextBox>
        &nbsp;
        <asp:Label ID="Label2" runat="server" Style="z-index: 108; left: 230px; position: absolute;
            top: 426px" Text="Created date :" Width="118px"></asp:Label>
        <asp:Label ID="Label4" runat="server" Style="z-index: 109; left: 240px; position: absolute;
            top: 736px" Text="Modified Date :" Width="127px"></asp:Label>
        <asp:Calendar ID="Calendar1" runat="server" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged"
            Style="z-index: 110; left: 409px; position: absolute; top: 473px" Width="220px" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399">
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <WeekendDayStyle BackColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        </asp:Calendar>
        <asp:Label ID="Label3" runat="server" Style="z-index: 111; left: 223px; position: absolute;
            top: 92px" Text="Task Name :" Width="125px"></asp:Label>
        &nbsp;
        <asp:Label ID="Label5" runat="server" Style="z-index: 112; left: 229px; position: absolute;
            top: 366px" Text="Status :" Width="118px"></asp:Label>
        <asp:Label ID="Label6" runat="server" Style="z-index: 113; left: 224px; position: absolute;
            top: 191px" Text="Body :" Width="117px"></asp:Label>
        <asp:Label ID="Label7" runat="server" Style="z-index: 114; left: 224px; position: absolute;
            top: 139px" Text="Subject :" Width="121px"></asp:Label>
        <asp:TextBox ID="txtStatus" runat="server" Style="z-index: 115; left: 410px; position: absolute;
            top: 365px"></asp:TextBox>
        <asp:Label ID="Label" runat="server" Style="z-index: 116; left: 431px; position: absolute;
            top: 27px" Width="367px"></asp:Label>
    
    </div>
    
     
    
    
    
    </form>
</body>
</html>
