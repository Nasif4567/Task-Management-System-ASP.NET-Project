<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newuser.aspx.cs" Inherits="newuser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
  <div id="sidebar" style="z-index: 128; left: 4px; width: 159px; position: absolute; top: 0px; height: 681px">
      &nbsp;</div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin home.aspx" Style="z-index: 129;
            left: 42px; position: absolute; top: 49px">Administrator Home</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Style="z-index: 101; left: 208px; position: absolute;
            top: 16px" Text="Enter Details for New User :" Width="272px" Font-Bold="True" Font-Underline="True" ForeColor="#A83930"></asp:Label>
        <asp:Label ID="txtfname" runat="server" Style="z-index: 102; left: 211px; position: absolute;
            top: 60px" Text="Firstname" Width="56px"></asp:Label>
        <asp:Label ID="txtlname" runat="server" Style="z-index: 103; left: 210px; position: absolute;
            top: 104px" Text="Lastname" Width="56px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 104; left: 345px; position: absolute;
            top: 59px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 105; left: 344px; position: absolute;
            top: 105px"></asp:TextBox>
             <asp:TextBox ID="txtaddress" runat="server" Style="z-index: 106; left: 344px; position: absolute;
            top: 150px" TextMode="MultiLine"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Style="z-index: 107; left: 212px; position: absolute;
            top: 149px" Text="Address"></asp:Label>
        &nbsp;
        <asp:Label ID="Label5" runat="server" Style="z-index: 108; left: 211px; position: absolute;
            top: 245px" Text="Zip code"></asp:Label>
        <asp:Label ID="Label7" runat="server" Style="z-index: 109; left: 211px; position: absolute;
            top: 289px" Text="User Name"></asp:Label>
        <asp:Label ID="Label8" runat="server" Style="z-index: 110; left: 211px; position: absolute;
            top: 335px" Text="Password"></asp:Label>
        <asp:Label ID="Label9" runat="server" Style="z-index: 111; left: 208px; position: absolute;
            top: 380px" Text="Confirm password"></asp:Label>
        <asp:TextBox ID="txtphone" runat="server" Style="z-index: 112; left: 343px; position: absolute;
            top: 198px"></asp:TextBox>
        <asp:TextBox ID="txtzipcode" runat="server" Style="z-index: 113; left: 344px; position: absolute;
            top: 244px"></asp:TextBox>
        <asp:TextBox ID="txtusername" runat="server" Style="z-index: 114; left: 345px; position: absolute;
            top: 288px"></asp:TextBox>
        <asp:TextBox ID="txtpass" runat="server" Style="z-index: 115; left: 344px; position: absolute;
            top: 334px"></asp:TextBox>
        <asp:TextBox ID="txtpassword" runat="server" Style="z-index: 116; left: 344px; position: absolute;
            top: 381px"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Style="z-index: 117; left: 213px; position: absolute;
            top: 197px" Text="Phone"></asp:Label>
        <asp:Label ID="Label10" runat="server" Style="z-index: 118; left: 211px; position: absolute;
            top: 425px" Text="ID"></asp:Label>
        <asp:TextBox ID="txtcode" runat="server" Style="z-index: 119; left: 345px; position: absolute;
            top: 426px"></asp:TextBox>
        <asp:Label ID="Label11" runat="server" Style="z-index: 120; left: 209px; position: absolute;
            top: 474px" Text="Designation"></asp:Label>
        &nbsp;
        <asp:TextBox ID="txtdesign" runat="server" Style="z-index: 121; left: 344px; position: absolute;
            top: 473px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Height="25px" Style="z-index: 122; left: 280px;
            position: absolute; top: 613px" Text="Submit" OnClick="Button1_Click" Width="86px" />
        <asp:Label ID="Label2" runat="server" Style="z-index: 123; left: 211px; position: absolute;
            top: 525px" Text="Position"></asp:Label>
        &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 124; left: 344px;
            position: absolute; top: 525px" Width="152px">
            <asp:ListItem>project leader</asp:ListItem>
            <asp:ListItem>manager</asp:ListItem>
            <asp:ListItem>programmer</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="pls enter" Style="z-index: 125; left: 509px; position: absolute;
            top: 56px" Width="155px"></asp:RequiredFieldValidator>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Style="z-index: 126;
            left: 548px; position: absolute; top: 160px" />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass"
            ControlToValidate="txtpassword" ErrorMessage="enter correct password" Style="z-index: 127;
            left: 535px; position: absolute; top: 336px"></asp:CompareValidator>
    </div>
    </form>
</body>
</html>
