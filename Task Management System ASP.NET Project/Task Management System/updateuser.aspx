<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updateuser.aspx.cs" Inherits="updateuser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#A83930"
            Style="z-index: 100; left: 168px; position: absolute; top: 27px" Text="Edit User Profile :"
            Width="304px"></asp:Label>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 101;
            left: 278px; position: absolute; top: 429px" Text="Update" />
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 102; left: 307px; position: absolute;
            top: 146px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
            DataTextField="fname" DataValueField="fname" Style="z-index: 103; left: 306px;
            position: absolute; top: 89px" Width="224px">
        </asp:DropDownList>
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Underline="True" Style="z-index: 116;
            left: 187px; position: absolute; top: 90px" Text="Select User :" Width="112px"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString2 %>"
            SelectCommand="SELECT [fname] FROM [biodata]"></asp:SqlDataSource>
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 105; left: 309px; position: absolute;
            top: 189px"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Style="z-index: 106; left: 188px; position: absolute;
            top: 147px" Text="First name :" Width="88px"></asp:Label>
        <asp:Label ID="Label3" runat="server" Style="z-index: 107; left: 189px; position: absolute;
            top: 190px" Text="Last name :" Width="86px"></asp:Label>
        <asp:Label ID="Label4" runat="server" Style="z-index: 108; left: 190px; position: absolute;
            top: 233px" Text="Address :" Width="80px"></asp:Label>
        <asp:Label ID="Label5" runat="server" Style="z-index: 109; left: 191px; position: absolute;
            top: 275px" Text="Phone :" Width="81px"></asp:Label>
        <asp:Label ID="Label6" runat="server" Style="z-index: 110; left: 191px; position: absolute;
            top: 320px" Text="Designation :"></asp:Label>
        <asp:Label ID="Label7" runat="server" Style="z-index: 111; left: 190px; position: absolute;
            top: 368px" Text="Position :"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 112; left: 307px; position: absolute;
            top: 233px"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 113; left: 308px; position: absolute;
            top: 277px"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 114; left: 310px; position: absolute;
            top: 321px" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" Style="z-index: 115; left: 310px; position: absolute;
            top: 366px"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
