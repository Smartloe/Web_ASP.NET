<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LabelControl.aspx.cs" Inherits="Web2022220054罗忠烨.L06.Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="Label4" runat="server" Text="PostBack" Visible="False"></asp:Label>
        </p>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label" AssociatedControlID="textBox1"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="点击我和点复选框效果一样" AssociatedControlID="CheckBox1"></asp:Label>
            <asp:CheckBox ID="CheckBox1" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="PostBack" />
        </div>
        <div>
            <asp:Label ID="Label5" runat="server" Text="我是Label5"></asp:Label>
        </div>
    </form>
</body>
</html>
