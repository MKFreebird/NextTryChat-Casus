<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="NextTryChat.Chat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chat - Cartagena</title>
    <!-- Javascript om de send button te activeren zodra er tekst in de send textbox verschijnt -->
    <link href="../stylesheets/Styles.css" rel="stylesheet" />
    <script type="text/javascript">
        function EnableDisableButton(sender, target) {
            if (sender.value.length > 0)
                document.getElementById('<%= btnsend.ClientID %>').disabled = false;
                else
                    document.getElementById('<%= btnsend.ClientID %>').disabled = true;
            }       
    </script>
</head>
<body>

<!-- Hierin staat de chat applicatie -->
<form id="chatApplication" runat="server">
    <div id="usernameContainer">
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Text="ADD" Font-Bold="True" />
            <asp:Label ID="lbluname" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
    </div>
   
    <div id="chatboxContainer">
        <asp:TextBox ID="txtmsg" runat="server" ReadOnly="True" BorderStyle="None" CssClass="chatBox" TextMode="MultiLine" Enabled="False" Font-Names="Arial"></asp:TextBox>
    </div>
       
    <div id="userinputContainer">
        <asp:TextBox ID="txtsend" DefaultButton="btnsend" runat="server" CssClass="sendBox" BorderStyle="None" TextMode="MultiLine" onkeyup="EnableDisableButton(this,'btnsend')" Font-Names="Arial"></asp:TextBox>
        <asp:Button ID="btnsend" runat="server" OnClick="btnsend_Click" Text="Send" Font-Bold="True" CssClass="sendButton" BackColor="#006600" BorderStyle="None" Enabled="False" />
    </div>
     
</form>
</body>
</html>
