<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="NextTryChat.Chat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 21px;
        }
        .auto-style2 {
            width: 94px;
            height: 21px;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
<div>
<table>
    <tr>
        <th class="auto-style1">UserName</th>
        <td class="auto-style2">
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Text="ADD" Font-Bold="True" />
            <asp:Label ID="lbluname" runat="server" Font-Bold="True" ForeColor="#004000"></asp:Label>
        </td>
    </tr>
<tr>
    <td style="width: 100px; height: 260px">
    </td>
    <td style="width: 94px; height: 260px">
        <asp:TextBox ID="txtmsg" runat="server" Height="250px" TextMode="MultiLine" Width="472px" ReadOnly="True"></asp:TextBox>
    </td>
</tr>
<tr>
<td style= "width: 100px; height: 77px;">
</td>
<td style= "width: 94px; height: 77px;">
<table style= "width: 480px">
<tr>
    <td style="width: 100px; height: 50px;">
    <asp:TextBox ID="txtsend" runat="server" Height="40px" TextMode="MultiLine" Width="384px"></asp:TextBox></td>
    <td style="width: 100px; height: 50px;">
    <asp:Button ID="btnsend" runat="server" Height="47px" OnClick="btnsend_Click" Text="SEND" Width="72px" Font-Bold="True" /></td>
</tr>
</table>
</td>
</tr>
</table>

</div>
</form>
</body>
</html>
