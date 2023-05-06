<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="验证学号.aspx.cs" Inherits="Web2022220054罗忠烨.L08.验证学号" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            请输入学号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="请输入正确的学号！" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="^202[012]2200\d{2}$"></asp:RegularExpressionValidator>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>