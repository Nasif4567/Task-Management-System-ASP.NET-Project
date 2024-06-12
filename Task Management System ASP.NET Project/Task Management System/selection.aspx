<%@ Page Language="C#" AutoEventWireup="true" CodeFile="selection.aspx.cs" Inherits="selection" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
// <!CDATA[

function sidebar_onclick() {
}

// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
   <div id="sidebar" style="z-index: 123; left: 8px; width: 188px; position: absolute; top: 0px; height: 775px">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin home.aspx" Style="z-index: 100;
            left: 20px; position: absolute; top: 96px" Width="151px"> Administrator home</asp:HyperLink>
       &nbsp;
    </div>
    
    
    <div>
        &nbsp;
        <asp:ListBox ID="ListBox1" runat="server" Height="124px" Style="z-index: 100; left: 285px;
            position: absolute; top: 159px" Width="171px"></asp:ListBox>
        <asp:ListBox ID="ListBox2" runat="server" Height="123px" Style="z-index: 101; left: 652px;
            position: absolute; top: 158px" Width="174px"></asp:ListBox>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Style="z-index: 102;
            left: 494px; position: absolute; top: 377px" Text="Select-->" Width="126px" />
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Style="z-index: 103;
            left: 497px; position: absolute; top: 659px" Text="<--Deselect" Width="136px" />
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Style="z-index: 104;
            left: 497px; position: absolute; top: 604px" Text="Select-->" Width="136px" />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Style="z-index: 105;
            left: 495px; position: absolute; top: 437px" Text="<--Deselect" Width="127px" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Style="z-index: 106;
            left: 496px; position: absolute; top: 239px" Text="<--Deselect" Width="133px" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 107;
            left: 491px; position: absolute; top: 175px" Text="Select-->" Width="132px" />
        <asp:Button ID="btnCancel" runat="server" Style="z-index: 108; left: 762px; position: absolute;
            top: 91px" Text="Cancel" OnClick="btnCancel_Click" Width="92px" />
        <asp:Button ID="btnShowData" runat="server" Style="z-index: 109; left: 616px; position: absolute;
            top: 90px" Text="Show Data" OnClick="btnShowData_Click" Width="131px" />
        <asp:ListBox ID="ListBox3" runat="server" Height="118px" Style="z-index: 110; left: 287px;
            position: absolute; top: 363px" Width="170px"></asp:ListBox>
        <asp:ListBox ID="ListBox5" runat="server" Height="117px" 
            Style="z-index: 111; left: 292px; position: absolute; top: 587px" Width="175px">
        </asp:ListBox>
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Style="z-index: 112;
            left: 526px; position: absolute; top: 759px" Text="Submit" Width="93px" />
        <asp:ListBox ID="ListBox6" runat="server" Height="113px" Style="z-index: 113; left: 658px;
            position: absolute; top: 588px" Width="177px"></asp:ListBox>
        <asp:ListBox ID="ListBox4" runat="server" Height="117px" Style="z-index: 114; left: 653px;
            position: absolute; top: 364px" Width="173px"></asp:ListBox>
        &nbsp; &nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
            DataTextField="desig" DataValueField="desig" Style="z-index: 115;
            left: 395px; position: absolute; top: 91px" Width="201px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
        </asp:DropDownList>
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Style="z-index: 116;
            left: 394px; position: absolute; top: 38px"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Style="z-index: 117; left: 244px; position: absolute;
            top: 36px" Text="Project Selected :" Width="135px"></asp:Label>
        <asp:Label ID="Label3" runat="server" Style="z-index: 118; left: 283px; position: absolute;
            top: 131px" Text="project leader" Width="137px"></asp:Label>
        <asp:Label ID="Label2" runat="server" Style="z-index: 119; left: 246px; position: absolute;
            top: 90px" Text="Platform :" Width="122px"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mustafaConnectionString %>"
            SelectCommand="SELECT distinct[desig] FROM [biodata]"></asp:SqlDataSource>
        <asp:Label ID="Label4" runat="server" Style="z-index: 120; left: 291px; position: absolute;
            top: 334px" Text="manager" Width="112px"></asp:Label>
        <asp:Label ID="Label5" runat="server" Style="z-index: 121; left: 296px; position: absolute;
            top: 557px" Text="programmer" Width="108px"></asp:Label>
        <asp:TextBox ID="txtDate" runat="server" Style="z-index: 124; left: 614px; position: absolute;
            top: 37px"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
