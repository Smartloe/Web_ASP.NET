<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Foreach.aspx.cs" Inherits="Web2022220054罗忠烨.L03.Foreach" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="在Label中输出数组内容" BackColor="#33CC33" BorderColor="#0099FF" BorderStyle="Ridge" ForeColor="#FF0066" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" BackColor="#CCFFFF" ForeColor="#333399" Text="此处输出！"></asp:Label>
        </div>
    </form>
</body>
</html>
